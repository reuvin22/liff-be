<?php

use App\Http\Controllers\v1\AnswerController;
use App\Http\Controllers\CacheController;
use App\Http\Controllers\v1\auth\AuthController;
use App\Http\Controllers\v1\ConvertToTextController;
use App\Http\Controllers\v1\data\DashboardDataController;
use App\Http\Controllers\v1\data\UserController;
use App\Http\Controllers\v1\DataImportController;
use App\Http\Controllers\v1\ExportUserAnswers;
use App\Http\Controllers\v1\FirebaseController;
use App\Http\Controllers\v1\OpenAiController;
use App\Http\Controllers\v1\QuestionController;
use App\Models\DataImports;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

//Chatbot Routes
Route::resource('answers', AnswerController::class);
Route::get('compress/{userId}', [OpenAiController::class, 'compress']);
Route::get('generate/{userId}', [OpenAiController::class, 'generateAgain']);
Route::post('convert/{userId}', [ConvertToTextController::class, 'convertToText']);
Route::get('convert/{userId}', [ConvertToTextController::class, 'convertToText']);
Route::post('import', [DataImportController::class, 'dataImport']);
Route::get('questions', [QuestionController::class, 'getQuestions']);
Route::get('/firebase-files', [FirebaseController::class, 'getFiles']);
Route::get('/export-answers/{userId}', [ExportUserAnswers::class, 'exportUserAnswers']);
//Authorized Routes
Route::post('/register', [UserController::class, 'store']);
Route::post('/login', [AuthController::class, 'login']);
Route::prefix('v1')->middleware(['auth:sanctum'])->group(function(){
    Route::resource('/users', UserController::class);
    Route::get('/user-count', [DashboardDataController::class, 'userCount']);
    Route::get('/prompt-count', [DashboardDataController::class, 'promptCount']);
    Route::get('/ads-count', [DashboardDataController::class, 'promptCount']);
    Route::post('/logout', [AuthController::class, 'logout']);
});
