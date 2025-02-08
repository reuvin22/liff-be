<?php

namespace App\Http\Controllers\v1;

use Exception;
use App\Models\Answer;
use App\Models\Prompt;
use Illuminate\Support\Str;
use OpenAI as GlobalOpenAI;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Cache;

class OpenAiController extends Controller
{
    // public function document()
    // {
    //     try {
    //         $accessKey = env('OPEN_AI_API_KEY');
    //         Log::info('Answer:' , ['answer' => $answers]);
    //         $client = GlobalOpenAI::client($accessKey);
    //         $result = $client->chat()->create([
    //             'model' => 'gpt-4o',
    //             'messages' => [
    //                 [
    //                     'role' => 'system',
    //                     'content' => "Based on the content stated in your academic background and motivation for applying, please create a document in the following order: 1. Indicate the knowledge and skills that are your strengths. 2. Explain how you think you can utilize the knowledge and skills you have demonstrated in the job you are applying for. 3. Explain what results you think you can achieve as a result. 4. Explain how the results will lead to business development. 5. Explain how the results will lead to the realization of the company's 'corporate philosophy, vision, and mission.' 6. Declare that you can definitely contribute to the development of the company. 7. Finally, clearly ask to be hired."
    //                 ],
    //                 [
    //                     'role' => 'user',
    //                     'content' => json_encode($answers)
    //                 ]
    //             ]
    //         ]);

    //         $dataUuid = Str::uuid();

    //         $result = Prompt::create([
    //             'data_id' => $dataUuid,
    //             'document' => $result->choices[0]->message->content
    //         ]);
    //         return $result;
    //     } catch (Exception $e) {
    //         Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
    //         return false;
    //     }
    // }

    public function generatedResult($answers, $userId)
    {
        try {
            $accessKey = env('OPEN_AI_API_KEY');
            Log::info('Answer:', ['answer' => $answers]);
            $client = GlobalOpenAI::client($accessKey);

            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => "【ガクチカ】の内容について、以下の流れで端的な文章を作成してください。以下の数字で示した内容をそれぞれ一文ずつ作成してください。
                            箇条書きは使わないでください。
                            １．自身の強みとなる能力を発揮した経験と、その経験で担った役割、目的や目標を示してください。
                            ２．目的や目標を達成する際に直面した課題を示してください。
                            ３．課題を解決するために、どうすれば良いと考えたかについて妥当性の高い理由を創作してください。
                            ４．課題解決に向けて取り組んだ活動について自分の強みとなる能力を発揮した状況がわかるように説明してください。
                            ５．目的や目標の達成状況を説明してください。
                            ６．身の強みとなる能力の有効性について、どのようなことを学んだか説明してください。学んだ内容は他の事象に対しても広範囲に適用できることがわかる説明としてください。
                            ７．最後に身に着けたまたは、発揮した能力の名称を示してください。
                            【志望動機】の内容について、以下の流れで端的な文章を作成してください。
                            １．自身が魅力を感じる「企業理念やミッション、ビジョン」「事業内容や業務内容」を端的に示してください。
                            ２．示した「企業理念やミッション、ビジョン」「事業内容や業務内容」に魅力を感じる理由について、自身の経験や考え方及び経験の中で感じた気持ちを想定しながら、「企業理念やミッション、ビジョン」「事業内容や業務内容」と自身の経験や考え方及び経験の中で感じた気持ちが共通することを根拠を交えて説明する文章を創作してください。
                            ３．企業の発展に自身の強みを能力名として示し、それらを活かして貢献できると考えていることも志望動機として示してください。
                            【自己PR】の内容について、以下の流れで端的な文章を作成してください。
                            １．自身の強みを能力名で示してください。
                            ２．自身の強みが生かせる職種を示してください。
                            ３．示した職種の活動において遭遇する具体的な活動シーンを創作し、具体的な能力の活かし方を説明してください。
                            ４．その活動を行うことで、事業の発展にどのように貢献できると考えているかについて、端的に説明してください。
                            ５．志望企業を「貴社」とし、必ず貢献する意思を明確に示し、採用していただけるようお願いしてください。
                            #体言止めは使用せず、文章を作成してください。"
                    ],
                    [
                        'role' => 'user',
                        'content' => json_encode($answers->toArray(), JSON_UNESCAPED_UNICODE)
                    ]
                ]
            ]);

            Prompt::create([
                'data_id' => $userId,
                'prompt' => $result->choices[0]->message->content
            ]);

            $response = $result->choices[0]->message->content;
            Cache::put('generated_result_' . $userId, $response, now()->addMinutes(30));

            // Ensure the response is in Japanese
            if (!preg_match('/[\p{Hiragana}\p{Katakana}\p{Han}]/u', $response)) {
                Log::warning("Unexpected language in response: " . $response);
                return response()->json(['error' => 'Generated response is not in Japanese'], 500);
            }
            Cache::put('generated_result_' . $userId, $response, now()->addMinutes(30));
            return $response;
        } catch (Exception $e) {
            Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
            return response()->json(['error' => 'Error generating result'], 500);
        }
    }

    public function compress($userId) {
        try {
            $accessKey = env('OPEN_AI_API_KEY');
            $client = GlobalOpenAI::client($accessKey);
            $latestPrompt = Prompt::where('data_id', $userId)->latest()->first();
            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => "「ガクチカ・志望動機・自己PRフォーマットに合わせて400文字圧縮して自己紹介文を削除してください。」"
                    ],
                    [
                        'role' => 'user',
                        'content' => $latestPrompt->prompt
                    ]
                ]
            ]);


            Prompt::create([
                'data_id' => $userId,
                'prompt' => $result->choices[0]->message->content
            ]);

            $response = $result->choices[0]->message->content;

            // Ensure the response is in Japanese
            if (!preg_match('/[\p{Hiragana}\p{Katakana}\p{Han}]/u', $response)) {
                Log::warning("Unexpected language in response: " . $response);
                return response()->json(['error' => 'Generated response is not in Japanese'], 500);
            }
            Cache::put('generated_result_' . $userId, $response, now()->addMinutes(30));
            return $response;
        } catch (Exception $e) {
            Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
            return false;
        }
    }

        public function generateAgain($userId)
        {
            try {
                $answers = Answer::where('userId', $userId)->latest()->first();
                $prompt = Prompt::where('data_id', $userId)->latest()->first();
                $generateResult = Cache::get('generated_result_' . $userId);
                $accessKey = env('OPEN_AI_API_KEY');
                $client = GlobalOpenAI::client($accessKey);
                $result = $client->chat()->create([
                    'model' => 'gpt-4o',
                    'temperature' => 0.8,
                    'messages' => [
                        [
                            'role' => 'system',
                            'content' => "以下の文章を日本語でわかりやすく書いてください。文末には「です」または「ます」を使用し、名詞で終わる文は避けてください。紹介文は含めず、Gakuchikaに直接指示してください。論理的に飛躍がないように、具体的かつ詳細に文章を書いてください。最初に述べた能力が経験や活動、考えと合わない場合には、それに合ったエピソードを作成してください。その場合、最後の文に句読点を二つ使ってください。応募の動機を具体的に、論理的に飛躍がないように記述してください。文を書く前に、会社の「企業理念、ビジョン、ミッション」「事業内容」「具体的な仕事内容」を確認してください。自分のスキルの具体的な使い方は示さず、応募する仕事にスキルを活かせることだけを簡潔に示してください。これらの文章が対象企業に提出されることを想定し、「貴社」という言葉を使用してください。

                            出力条件 1. 日本語で「Gakuchika」とタイトルをつけ、3,000文字以上で出力してください。 2. 「Gakuchika」で述べた能力をもとに、3,000文字以上の「応募動機」を日本語で作成し、出力してください。 3. 「Gakuchika」と応募動機を基に、3,000文字以上の「自己PR」を日本語で作成し、出力してください。Gakuchika、応募動機、自己PRをそれぞれ別々に作成してください。"
                        ],
                        [
                            'role' => 'user',
                            'content' => json_encode($answers->toArray(), JSON_UNESCAPED_UNICODE)
                        ]
                    ]
                ]);


                Prompt::create([
                    'data_id' => $userId,
                    'prompt' => $result->choices[0]->message->content
                ]);

                $response = $result->choices[0]->message->content;

                // Ensure the response is in Japanese
                if (!preg_match('/[\p{Hiragana}\p{Katakana}\p{Han}]/u', $response)) {
                    Log::warning("Unexpected language in response: " . $response);
                    return response()->json(['error' => 'Generated response is not in Japanese'], 500);
                }
                return $response;
            } catch (Exception $e) {
                Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
                return false;
            }
        }

    public function writingAdvice($userId, $data)
    {
        try{
            $accessKey = env('OPEN_AI_API_KEY');
            $client = GlobalOpenAI::client($accessKey);

            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => "この質問に専門的に答える方法について、箇条書き形式「{$data}」の例とともに書かれた 50 語のアドバイス。前置きせずに直接アドバイスをして、日本語で答えてください。"
                    ],
                    [
                        'role' => 'user',
                        'content' => $data
                    ]
                ]
            ]);


            $response = $result->choices[0]->message->content;

            // Ensure the response is in Japanese
            if (!preg_match('/[\p{Hiragana}\p{Katakana}\p{Han}]/u', $response)) {
                Log::warning("Unexpected language in response: " . $response);
                return response()->json(['error' => 'Generated response is not in Japanese'], 500);
            }
            Cache::put('generated_result_' . $userId, $response, now()->addMinutes(30));
            return $response;
        }catch(Exception $e){
            Log::error("Error: " . $e->getMessage());
            return false;
        }
    }
}
