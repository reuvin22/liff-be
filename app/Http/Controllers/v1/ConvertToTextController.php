<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\Prompt;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class ConvertToTextController extends Controller
{
    public function convertToText($userId)
    {
        try{
            $latestPrompt = Prompt::where('data_id', $userId)->latest()->first();
            $fileName = $userId . time() . '.txt';
            $filePath = storage_path('app/public/' . $fileName);

            Log::info('File path: ' . $filePath);
            file_put_contents($filePath, $latestPrompt);

            $fileUrl = url('storage/' . $fileName);

            return $fileUrl;
        }catch(Exception $e){
            Log::error("Error: " . $e->getMessage());
            return false;
        }
    }
}
