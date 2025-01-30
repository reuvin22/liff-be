<?php

use App\Http\Controllers\v1\AnswerController;
use App\Http\Controllers\v1\ConvertToTextController;
use App\Http\Controllers\v1\DataImportController;
use App\Http\Controllers\v1\OpenAiController;
use App\Http\Controllers\v1\QuestionController;
use App\Models\DataImports;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::resource('answers', AnswerController::class);
Route::get('compress/{userId}', [OpenAiController::class, 'compress']);
Route::get('generate/{userId}', [OpenAiController::class, 'generateAgain']);
Route::post('convert/{userId}', [ConvertToTextController::class, 'convertToText']);
Route::get('convert/{userId}', [ConvertToTextController::class, 'convertToText']);
Route::post('import', [DataImportController::class, 'dataImport']);
Route::get('questions', [QuestionController::class, 'getQuestions']);
