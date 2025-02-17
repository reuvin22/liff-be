<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\Answer;
use App\Models\GeneratedResult;
use App\Models\Input;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class AnswerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $answers = Answer::all();
        $openAi = GeneratedResult::all();
        $data = [
            'answers' => $answers,
            'openAi' => $openAi
        ];

        return response()->json([
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'userId' => 'nullable',
            'displayName' => 'nullable',
            'Question_1' => 'required',
            'Ability_Desc_1' => 'required',
            'Question_2' => 'required',
            'Ability_Desc_2' => 'required',
            'Question_3' => 'required',
            'Question_4' => 'required',
            'Question_5' => 'required',
            'Question_6' => 'required',
            'Question_7' => 'required',
            'Question_8' => 'required',
            'Question_9' => 'required',
            'Question_10' => 'required',
            'Question_11' => 'required'
        ]);

        $data = $request->all();

        try{
            $answers = Answer::create([
                'userId' =>  $data['userId'],
                'displayName' => $data['displayName'],
                'Question_1' => $data['Question_1'],
                'Ability_Desc_1' => $data['Ability_Desc_1'],
                'Question_2' => $data['Question_2'],
                'Ability_Desc_2' => $data['Ability_Desc_2'],
                'Question_3' => $data['Question_3'],
                'Question_4' => $data['Question_4'],
                'Question_5' => $data['Question_5'],
                'Question_6' => $data['Question_6'],
                'Question_7' => $data['Question_7'],
                'Question_8' => $data['Question_8'],
                'Question_9' => $data['Question_9'],
                'Question_10' => $data['Question_10'],
                'Question_11' => $data['Question_11'],
            ]);

            if(!$answers){
                return response()->json([
                    'message' => 'Failed to save',
                ], 400);
            }

            $test = Cache::put("answers_{$data['userId']}", $answers);
            Log::info('test', ['test' => $test]);
            $openAi = new OpenAiController();
            $result = $openAi->generatedResult($answers, $data['userId']);
            Cache::put('openAiResponse_' . $data['userId'], $result, now()->addMinutes(60));
            Cache::put("answers_{$data['userId']}", $answers->toArray(), now()->addMinutes(60));
            GeneratedResult::create([
                'userId' => $data['userId'],
                'openai_result' => $result
            ]);

            return response()->json([
                'message' => 'Answer Saved Successfully',
                'openai' => $result,
                'answer' => $answers
            ], 200);
        }catch(Exception $e){
            return response()->json([
                'message' => $e->getMessage()
            ], 400);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $userId)
    {
        $answers = Answer::where('userId', $userId)->with('generatedResult')->first();

        if (!$answers) {
            return response()->json([
                'message' => 'User ID not found'
            ], 400);
        }

        $response = [
            'answers' => $answers
        ];

        return response()->json([
            'data' => $response
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
