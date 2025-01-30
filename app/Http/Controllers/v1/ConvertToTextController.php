<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class ConvertToTextController extends Controller
{
    public function convertToText($userId)
    {
        try{
            $openAiResponse = Cache::get('generated_result_' . $userId);
            $fileName = $userId . time() . '.txt';
            $filePath = storage_path('app/public/' . $fileName);

            Log::info('File path: ' . $filePath);
            file_put_contents($filePath, $openAiResponse);

            $fileUrl = url('storage/' . $fileName);

            return $fileUrl;
        }catch(Exception $e){
            Log::error("Error: " . $e->getMessage());
            return false;
        }
    }
}
