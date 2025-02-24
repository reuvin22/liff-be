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
    public function generatedResult($answers, $userId)
    {
            $prompt1 = '【大学時代に'. $answers->Question_3. 'の活動を通じて、 '. $answers->Question_1. ', '. $answers->Question_2. 'を発揮したエピソードについて説明します。';
            $prompt2 = '具体的には、'. $answers->Question_5. 'として '. $answers->Question_4. '、をめざして取り組んだ経験です。';
            $prompt3 = '説明の中で、どのように'. $answers->Question_1. '、'. $answers->Question_2. 'を発揮したかについて具体的に説明してください。';
            $prompt4 = '具体的に説明するための条件として、'. $answers->Question_1. ' とは '. $answers->Ability_Desc_1. ' です。';
            $prompt5 = 'また、'. $answers->Question_2. ' とは'. $answers->Ability_Desc_2. ' です。';
            $prompt6 = '活動の目的は'. $answers->Question_4. 'であったが、課題であった'. $answers->Question_6. 'の改善に取り組んだ。' ;
            $prompt7 = 'この取り組みで、'. $answers->Question_1. '及び'. $answers->Question_2. 'を発揮し、'. $answers->Question_7. 'ことを意識した。';
            $prompt8 = '結果として、'. $answers->Question_8. '。】';
            $prompt9 = '私が志望している企業のサイトは｛'. $answers->Question_10. '｝です。（私は'. $answers->Question_9. 'を志望しています。';
            $prompt10 = '志望する理由、志望する会社に魅力を感じた理由となるように、体験や体験で感じた気持ちや学んだこととミッションや理念ならびに事業に共通点があることを説明する文章を創作して説明してください。';
            $prompt11 = $answers->Question_9. ' のミッションや理念は '. $answers->Question_11 .'です。';
            $prompt12 = '志望する会社で活かせる能力について '. $answers->Question_1. 'と、'. $answers->Question_2. 'があります。';
            $prompt13 = 'この能力、経験を活かして、貴社の**で貢献致します。#**の中は｛｝内のサイトから職種を選択してください）';
            $prompt14 = '【】で囲まれた内容について、能力を発揮した様子が読み手に伝わる文章を創作して下さい。示された能力を発揮することで、どのような普遍性の高い広範囲に応用可能な効果が出せることを学んだかについて、文末で説明してください。その必要性を実感したことについて示された経験になぞらえ説明してください。';
            $prompt15 = '（）で示した内容をもとに以下の条件と順序に従って文章を作成してください。
            ①：魅力を感じる「企業理念やビジョン、ミッション」「事業内容」「具体的な仕事内容」 を示してください。
            ②：魅力を感じる理由について、自身の経験や、経験の中で感じた気持ちや考え方を交えて説明してください。
            ③：②で示された理由と①で示された内容に整合性がない場合、気持ちや考え方を想定し、理由のみを創作してください。
            ';
            $prompt16 = '④：'. $answers->Question_1. ', '. $answers->Question_2. 'が、活かせる職種を想定して、その具体的な職種名を示し、その職種で示した能力が活かせることも志望動機として追記してください。
            ';
            $prompt17 = '⑤：必ず入社して「企業理念やビジョン、ミッション」の実現に貢献したいという思いを最後に伝えてください。';
            $prompt18 = '#ガクチカ・志望動機で示された内容を前提として、以下の流れで文書を作成してください。
            １．自身の強みとなる知識や能力を示してください。
            ２．示した知識や能力を志望職種の仕事でどのように活かせると考えているか説明してください。
            ３．その結果としてどのような成果を出せると考えているか説明してください。
            ４．その成果が事業の発展にどのようにつながるのか説明してください。
            ５．その成果が「企業理念やビジョン、ミッション」の実現にどのようにつながるかについて説明して下さい。
            ６．自身が企業の発展に必ず貢献できることを宣言してください。
            ７．最後に、採用してもらえるように明確にお願いしてください。';

        $userContent = $prompt1 . "\n" . $prompt2 . "\n" . $prompt3 . "\n" .
            $prompt4 . "\n" . $prompt5 . "\n" . $prompt6 . "\n" .
            $prompt7 . "\n" . $prompt8 . "\n" . $prompt9 . "\n" .
            $prompt10 . "\n" . $prompt11 . "\n" . $prompt12 . "\n" .
            $prompt13 . "\n" . $prompt14 . "\n" . $prompt15 . "\n" .
            $prompt16 . "\n" . $prompt17 . "\n" . $prompt18;

        $systemPrompt = "#以下の文章を日本語で読み手にわかりやすいよう書いてください。
                            #文末は、「です」「ます」等の文体で記述し、体言止めは使わないでください。
                            #箇条書きは使用しないでください。
                            #文章は論理の飛躍がないように具体的かつ詳細に記述してください。
                            #最初に示した能力が、経験や活動、考えたことと合致しない場合は、合致するようなエピソードを創作して下さい。もしこの作業を行った場合、最後の文章の句読点を二つ表記してください。
                            #志望動機を示す文章は論理の飛躍がないように具体的かつ詳細に記述してください。
                            #文章を作成する前に、後の指示で｛｝で示された企業の「企業理念やビジョン、ミッション」「事業内容」「具体的な仕事内容」を確認してください。
                            #能力の具体的な活かし方は示さず、能力が志望職種の仕事で活かせることのみを簡潔に示してください。
                            #文章は対象とする企業に提出することを前提とし、「貴社」という単語を使ってください。
                            #出力する際の条件
                            1.ガクチカを【ガクチカ】というタイトルで日本語で3000文字以上で作成して出力。
                            2.ガクチカで示した能力を基に、【志望動機】という対応で日本語で3000文字以上で作成、及び出力。
                            3.ガクチカと志望動機を基に、【自己PR】というタイトルで日本語で3000文字以上で作成、及び出力。
                            ガクチカ・志望動機・自己PRをそれぞれを個別に作成してください。
                            {{USER_INPUT}}
                            【】で囲まれた内容について、能力を発揮した様子が読み手に伝わる文章を創作して下さい。
                            示された能力を発揮することで、どのような普遍性の高い広範囲に応用可能な効果が出せることを学んだかについて、文末で説明してください。
                            その必要性を実感したことについて示された経験になぞらえ説明してください。
                            （）で示した内容をもとに以下の条件と順序に従って文章を作成してください。
                            ①：魅力を感じる「企業理念やビジョン、ミッション」「事業内容」「具体的な仕事内容」 を示してください。
                            ②：魅力を感じる理由について、自身の経験や、経験の中で感じた気持ちや考え方を交えて説明してください。
                            ③：②で示された理由と①で示された内容に整合性がない場合、気持ちや考え方を想定し、理由のみを創作してください。
                            ④：行動力コミュニケーション能力が、活かせる職種を想定して、その具体的な職種名を示し、その職種で示した能力が活かせることも志望動機として追記してください。
                            ⑤：必ず入社して「企業理念やビジョン、ミッション」の実現に貢献したいという思いを最後に伝えてください。
                            #ガクチカ・志望動機で示された内容を前提として、以下の流れで文書を作成してください。
                            １．自身の強みとなる知識や能力を示してください。
                            ２．示した知識や能力を志望職種の仕事でどのように活かせると考えているか説明してください。
                            ３．その結果としてどのような成果を出せると考えているか説明してください。
                            ４．その成果が事業の発展にどのようにつながるのか説明してください。
                            ５．その成果が「企業理念やビジョン、ミッション」の実現にどのようにつながるかについて説明して下さい。
                            ６．自身が企業の発展に必ず貢献できることを宣言してください。
                            ７．最後に、採用してもらえるように明確にお願いしてください。";

        $finalSystemContent = str_replace("{{USER_INPUT}}", $userContent, $systemPrompt);

        try {
            $accessKey = env('OPEN_AI_API_KEY');
            Log::info('prompt:', ['prompt' => $systemPrompt]);
            $client = GlobalOpenAI::client($accessKey);
            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'temperature' => 0.7,
                'top_p' => 0.9,
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => $finalSystemContent
                    ],
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
            return $response;
        } catch (Exception $e) {
            Log::error("Error sending request to OpenAI:", ['message' => $e->getMessage()]);
            return response()->json(['error' => 'Error generating result'], 500);
        }
    }

    public function compress($userId) {
        $latestPrompt = Prompt::where('data_id', $userId)->latest()->first();
        $finalPrompt = "【ガクチカ】の内容について、以下の流れで端的な文章を作成してください。
        以下の数字で示した内容をそれぞれ一文ずつ作成してください。
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
        #体言止めは使用せず、文章を作成してください。

        #入力文：{COMPRESS_RESULT}
        ";

        $compress = str_replace("{COMPRESS_RESULT}", $latestPrompt->prompt, $finalPrompt);

        try {
            $accessKey = env('OPEN_AI_API_KEY');
            $client = GlobalOpenAI::client($accessKey);
            $result = $client->chat()->create([
                'model' => 'gpt-4o',
                'temperature' => 0.7,
                'top_p' => 0.9,
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => $compress
                    ],
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

        public function generateAgain($userId)
        {
            $answers = Answer::where('userId', $userId)->latest()->first();
            $prompt1 = '【大学時代に'. $answers->Question_3. 'の活動を通じて、 '. $answers->Question_1. ', '. $answers->Question_2. 'を発揮したエピソードについて説明します。';
            $prompt2 = '具体的には、'. $answers->Question_5. 'として '. $answers->Question_4. '、をめざして取り組んだ経験です。';
            $prompt3 = '説明の中で、どのように'. $answers->Question_1. '、'. $answers->Question_2. 'を発揮したかについて具体的に説明してください。';
            $prompt4 = '具体的に説明するための条件として、'. $answers->Question_1. ' とは '. $answers->Ability_Desc_1. ' です。';
            $prompt5 = 'また、'. $answers->Question_2. ' とは'. $answers->Ability_Desc_2. ' です。';
            $prompt6 = '活動の目的は'. $answers->Question_4. 'であったが、課題であった'. $answers->Question_6. 'の改善に取り組んだ。' ;
            $prompt7 = 'この取り組みで、'. $answers->Question_1. '及び'. $answers->Question_2. 'を発揮し、'. $answers->Question_7. 'ことを意識した。';
            $prompt8 = '結果として、'. $answers->Question_8. '。】';
            $prompt9 = '私が志望している企業のサイトは｛'. $answers->Question_10. '｝です。（私は'. $answers->Question_9. 'を志望しています。';
            $prompt10 = '志望する理由、志望する会社に魅力を感じた理由となるように、体験や体験で感じた気持ちや学んだこととミッションや理念ならびに事業に共通点があることを説明する文章を創作して説明してください。';
            $prompt11 = $answers->Question_9. ' のミッションや理念は '. $answers->Question_11 .'です。';
            $prompt12 = '志望する会社で活かせる能力について '. $answers->Question_1. 'と、'. $answers->Question_2. 'があります。';
            $prompt13 = 'この能力、経験を活かして、貴社の**で貢献致します。#**の中は｛｝内のサイトから職種を選択してください）';
            $prompt14 = '【】で囲まれた内容について、能力を発揮した様子が読み手に伝わる文章を創作して下さい。示された能力を発揮することで、どのような普遍性の高い広範囲に応用可能な効果が出せることを学んだかについて、文末で説明してください。その必要性を実感したことについて示された経験になぞらえ説明してください。';
            $prompt15 = '（）で示した内容をもとに以下の条件と順序に従って文章を作成してください。
            ①：魅力を感じる「企業理念やビジョン、ミッション」「事業内容」「具体的な仕事内容」 を示してください。
            ②：魅力を感じる理由について、自身の経験や、経験の中で感じた気持ちや考え方を交えて説明してください。
            ③：②で示された理由と①で示された内容に整合性がない場合、気持ちや考え方を想定し、理由のみを創作してください。
            ';
            $prompt16 = '④：'. $answers->Question_1. ', '. $answers->Question_2. 'が、活かせる職種を想定して、その具体的な職種名を示し、その職種で示した能力が活かせることも志望動機として追記してください。
            ';
            $prompt17 = '⑤：必ず入社して「企業理念やビジョン、ミッション」の実現に貢献したいという思いを最後に伝えてください。';
            $prompt18 = '#ガクチカ・志望動機で示された内容を前提として、以下の流れで文書を作成してください。
            １．自身の強みとなる知識や能力を示してください。
            ２．示した知識や能力を志望職種の仕事でどのように活かせると考えているか説明してください。
            ３．その結果としてどのような成果を出せると考えているか説明してください。
            ４．その成果が事業の発展にどのようにつながるのか説明してください。
            ５．その成果が「企業理念やビジョン、ミッション」の実現にどのようにつながるかについて説明して下さい。
            ６．自身が企業の発展に必ず貢献できることを宣言してください。
            ７．最後に、採用してもらえるように明確にお願いしてください。';

            $userContent = $prompt1 . "\n" . $prompt2 . "\n" . $prompt3 . "\n" .
            $prompt4 . "\n" . $prompt5 . "\n" . $prompt6 . "\n" .
            $prompt7 . "\n" . $prompt8 . "\n" . $prompt9 . "\n" .
            $prompt10 . "\n" . $prompt11 . "\n" . $prompt12 . "\n" .
            $prompt13 . "\n" . $prompt14 . "\n" . $prompt15 . "\n" .
            $prompt16 . "\n" . $prompt17 . "\n" . $prompt18;

             $systemPrompt = "#以下の文章を日本語で読み手にわかりやすいよう書いてください。
                    #文末は、「です」「ます」等の文体で記述し、体言止めは使わないでください。
                    #箇条書きは使用しないでください。
                    #文章は論理の飛躍がないように具体的かつ詳細に記述してください。
                    #最初に示した能力が、経験や活動、考えたことと合致しない場合は、合致するようなエピソードを創作して下さい。もしこの作業を行った場合、最後の文章の句読点を二つ表記してください。
                    #志望動機を示す文章は論理の飛躍がないように具体的かつ詳細に記述してください。
                    #文章を作成する前に、後の指示で｛｝で示された企業の「企業理念やビジョン、ミッション」「事業内容」「具体的な仕事内容」を確認してください。
                    #能力の具体的な活かし方は示さず、能力が志望職種の仕事で活かせることのみを簡潔に示してください。
                    #文章は対象とする企業に提出することを前提とし、「貴社」という単語を使ってください。
                    #出力する際の条件
                    1.ガクチカを【ガクチカ】というタイトルで日本語で3000文字以上で作成して出力。
                    2.ガクチカで示した能力を基に、【志望動機】という対応で日本語で3000文字以上で作成、及び出力。
                    3.ガクチカと志望動機を基に、【自己PR】というタイトルで日本語で3000文字以上で作成、及び出力。
                    ガクチカ・志望動機・自己PRをそれぞれを個別に作成してください。
                    {{USER_INPUT}}
                    【】で囲まれた内容について、能力を発揮した様子が読み手に伝わる文章を創作して下さい。
                    示された能力を発揮することで、どのような普遍性の高い広範囲に応用可能な効果が出せることを学んだかについて、文末で説明してください。
                    その必要性を実感したことについて示された経験になぞらえ説明してください。
                    （）で示した内容をもとに以下の条件と順序に従って文章を作成してください。
                    ①：魅力を感じる「企業理念やビジョン、ミッション」「事業内容」「具体的な仕事内容」 を示してください。
                    ②：魅力を感じる理由について、自身の経験や、経験の中で感じた気持ちや考え方を交えて説明してください。
                    ③：②で示された理由と①で示された内容に整合性がない場合、気持ちや考え方を想定し、理由のみを創作してください。
                    ④：行動力コミュニケーション能力が、活かせる職種を想定して、その具体的な職種名を示し、その職種で示した能力が活かせることも志望動機として追記してください。
                    ⑤：必ず入社して「企業理念やビジョン、ミッション」の実現に貢献したいという思いを最後に伝えてください。
                    #ガクチカ・志望動機で示された内容を前提として、以下の流れで文書を作成してください。
                    １．自身の強みとなる知識や能力を示してください。
                    ２．示した知識や能力を志望職種の仕事でどのように活かせると考えているか説明してください。
                    ３．その結果としてどのような成果を出せると考えているか説明してください。
                    ４．その成果が事業の発展にどのようにつながるのか説明してください。
                    ５．その成果が「企業理念やビジョン、ミッション」の実現にどのようにつながるかについて説明して下さい。
                    ６．自身が企業の発展に必ず貢献できることを宣言してください。
                    ７．最後に、採用してもらえるように明確にお願いしてください。";

            $finalSystemContent = str_replace("{{USER_INPUT}}", $userContent, $systemPrompt);
            try {
                $prompt = Prompt::where('data_id', $userId)->latest()->first();
                $generateResult = Cache::get('generated_result_' . $userId);
                $accessKey = env('OPEN_AI_API_KEY');
                $client = GlobalOpenAI::client($accessKey);
                $result = $client->chat()->create([
                    'model' => 'gpt-4o',
                    'temperature' => 0.7,
                    'top_p' => 0.9,
                    'messages' => [
                        [
                            'role' => 'system',
                            'content' => $finalSystemContent
                        ]
                    ]
                ]);


                Prompt::create([
                    'data_id' => $userId,
                    'prompt' => $result->choices[0]->message->content
                ]);

                $response = $result->choices[0]->message->content;

                //Ensure the response is in Japanese
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
