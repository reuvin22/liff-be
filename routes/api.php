<?php

use App\Http\Controllers\v1\AnswerController;
use App\Http\Controllers\CacheController;
use App\Http\Controllers\v1\auth\AuthController;
use App\Http\Controllers\v1\auth\ForgotPasswordController;
use App\Http\Controllers\v1\auth\ResetPasswordController;
use App\Http\Controllers\v1\ConvertToTextController;
use App\Http\Controllers\v1\data\DashboardDataController;
use App\Http\Controllers\v1\data\UserController;
use App\Http\Controllers\v1\DataImportController;
use App\Http\Controllers\v1\ExportUserAnswers;
use App\Http\Controllers\v1\FirebaseController;
use App\Http\Controllers\v1\FirebasePostController;
use App\Http\Controllers\v1\OpenAiController;
use App\Http\Controllers\v1\QuestionController;
use App\Http\Controllers\v1\data\TotalInfoController;
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
Route::get('questions', [QuestionController::class, 'getQuestions']);
Route::get('/firebase-files', [FirebaseController::class, 'getFiles']);
Route::get('/export-answers/{userId}', [ExportUserAnswers::class, 'exportUserAnswers']);
Route::post('/forgot-password', [ForgotPasswordController::class, 'checkEmail']);

//Authorized Routes
Route::post('/register', [UserController::class, 'store']);
Route::post('/login', [AuthController::class, 'login']);
Route::prefix('v1')->middleware(['auth:sanctum'])->group(function(){
    Route::get('auth/profile', [AuthController::class, 'profile']);
    Route::post('import', [DataImportController::class, 'dataImport']);
    Route::resource('/users', UserController::class);
    Route::get('/user-count', [DashboardDataController::class, 'userCount']);
    Route::get('/prompt-count', [DashboardDataController::class, 'promptCount']);
    Route::get('/ads-count', [DashboardDataController::class, 'adsCount']);
    Route::get('/answer-count', [DashboardDataController::class, 'answerCount']);
    Route::get('/total-line-user', [DashboardDataController::class, 'totalLineUsers']);
    Route::resource('/answers', TotalInfoController::class);
    Route::post('/data-import', [DataImportController::class, 'dataImport']);
    Route::post('/logout', [AuthController::class, 'logout']);
});