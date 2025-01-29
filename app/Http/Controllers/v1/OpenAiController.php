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
            Log::info('Answer:' , ['answer' => $answers]);
            $client = GlobalOpenAI::client($accessKey);
            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => "以下の文章を日本語でわかりやすく書いてください。文末には「です」または「ます」を使用し、名詞で終わる文は避けてください。紹介文は含めず、Gakuchikaに直接指示してください。論理的に飛躍がないように、具体的かつ詳細に文章を書いてください。最初に述べた能力が経験や活動、考えと合わない場合には、それに合ったエピソードを作成してください。その場合、最後の文に句読点を二つ使ってください。応募の動機を具体的に、論理的に飛躍がないように記述してください。文を書く前に、会社の「企業理念、ビジョン、ミッション」「事業内容」「具体的な仕事内容」を確認してください。自分のスキルの具体的な使い方は示さず、応募する仕事にスキルを活かせることだけを簡潔に示してください。これらの文章が対象企業に提出されることを想定し、「貴社」という言葉を使用してください。

                        出力条件 1. 日本語で「Gakuchika」とタイトルをつけ、3,000文字以上で出力してください。 2. 「Gakuchika」で述べた能力をもとに、3,000文字以上の「応募動機」を日本語で作成し、出力してください。 3. 「Gakuchika」と応募動機を基に、3,000文字以上の「自己PR」を日本語で作成し、出力してください。Gakuchika、応募動機、自己PRをそれぞれ別々に作成してください。"
                    ],
                    [
                        'role' => 'user',
                        'content' => json_encode($answers)
                    ]
                ]
            ]);
            Prompt::create([
                'data_id' => $userId,
                'prompt' => $result->choices[0]->message->content
            ]);
            Cache::put('generated_result_'.$userId , $result, now()->addMinutes(30));
            return $result->choices[0]->message->content;
        } catch (Exception $e) {
            Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
            return false;
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
                        'content' => "「400文字を圧縮して削除してください。導入部分を削除してください。」"
                    ],
                    [
                        'role' => 'user',
                        'content' => $latestPrompt->prompt
                    ]
                ]
            ]);

            return $result->choices[0]->message->content;
        } catch (Exception $e) {
            Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
            return false;
        }
    }

    public function generateAgain($userId)
    {
        try {
            $answers = Answer::where('userId', $userId)->latest()->first();
            $accessKey = env('OPEN_AI_API_KEY');
            $client = GlobalOpenAI::client($accessKey);
            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => "以下の文章を日本語でわかりやすく書いてください。文末には「です」または「ます」を使用し、名詞で終わる文は避けてください。紹介文は含めず、Gakuchikaに直接指示してください。論理的に飛躍がないように、具体的かつ詳細に文章を書いてください。最初に述べた能力が経験や活動、考えと合わない場合には、それに合ったエピソードを作成してください。その場合、最後の文に句読点を二つ使ってください。応募の動機を具体的に、論理的に飛躍がないように記述してください。文を書く前に、会社の「企業理念、ビジョン、ミッション」「事業内容」「具体的な仕事内容」を確認してください。自分のスキルの具体的な使い方は示さず、応募する仕事にスキルを活かせることだけを簡潔に示してください。これらの文章が対象企業に提出されることを想定し、「貴社」という言葉を使用してください。

                        出力条件 1. 日本語で「Gakuchika」とタイトルをつけ、3,000文字以上で出力してください。 2. 「Gakuchika」で述べた能力をもとに、3,000文字以上の「応募動機」を日本語で作成し、出力してください。 3. 「Gakuchika」と応募動機を基に、3,000文字以上の「自己PR」を日本語で作成し、出力してください。Gakuchika、応募動機、自己PRをそれぞれ別々に作成してください。"
                    ],
                    [
                        'role' => 'user',
                        'content' => json_encode($answers)
                    ]
                ]
            ]);

            return $result->choices[0]->message->content;
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

            return $result->choices[0]->message->content;
        }catch(Exception $e){
            Log::error("Error: " . $e->getMessage());
            return false;
        }
    }
}
