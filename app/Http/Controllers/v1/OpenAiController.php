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
                        'content' => "Please write the following sentences in Japanese so that the reader can easily understand. Please use 'desu' or 'masu' at the end of the sentence, and do not use noun-ending sentences. Please do not include an introduction, direct to Gakuchika. Please do not use bullet points. Please write the sentences specifically and in detail so that there are no logical leaps. If the abilities you stated at the beginning do not match your experience, activities, or thoughts, please create an episode that does. If you do this, please write two punctuation marks in the last sentence. Please write the sentences that show your motivation for applying specifically and in detail so that there are no logical leaps. Before writing the sentences, please check the 'corporate philosophy, vision, mission,' 'business content,' and 'specific job content' of the company. Please do not indicate the specific way in which you will use your skills, but only briefly indicate that your skills can be used in the job you are applying for. Please assume that the sentences will be submitted to the target company, and use the word 'your company.' Conditions for output 1. Write and output a Gakuchika in Japanese with the title [Gakuchika] and more than 3,000 characters. 2. Based on the abilities stated in your Gakuchika, create and output a [Reason for Applying] in Japanese of 3,000 characters or more. 3. Based on your Gakuchika and motivation for applying, create and output a [Self-PR] in Japanese of 3,000 characters or more. Please create your Gakuchika, motivation for applying, and self-PR separately."
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
                        'content' => "Compress in 400 characters. Remove the introduction"
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
                        'content' => "Please write the following sentences in Japanese so that the reader can easily understand. Please use 'desu' or 'masu' at the end of the sentence, and do not use noun-ending sentences. Please do not include an introduction, direct to Gakuchika. Please do not use bullet points. Please write the sentences specifically and in detail so that there are no logical leaps. If the abilities you stated at the beginning do not match your experience, activities, or thoughts, please create an episode that does. If you do this, please write two punctuation marks in the last sentence. Please write the sentences that show your motivation for applying specifically and in detail so that there are no logical leaps. Before writing the sentences, please check the 'corporate philosophy, vision, mission,' 'business content,' and 'specific job content' of the company. Please do not indicate the specific way in which you will use your skills, but only briefly indicate that your skills can be used in the job you are applying for. Please assume that the sentences will be submitted to the target company, and use the word 'your company.' Conditions for output 1. Write and output a Gakuchika in Japanese with the title [Gakuchika] and more than 3,000 characters. 2. Based on the abilities stated in your Gakuchika, create and output a [Reason for Applying] in Japanese of 3,000 characters or more. 3. Based on your Gakuchika and motivation for applying, create and output a [Self-PR] in Japanese of 3,000 characters or more. Please create your Gakuchika, motivation for applying, and self-PR separately."
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
