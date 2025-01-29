<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\DataImports;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
    public function getQuestions()
    {
        $questions = DataImports::pluck('questions')->toArray();
        $writingAdvice = DataImports::pluck('writing_advice')->toArray();

        return response()->json([
            'questions' => $questions,
            'writing_advice' => $writingAdvice
        ]);
    }
}
