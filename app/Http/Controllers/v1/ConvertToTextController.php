<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\Prompt;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class ConvertToTextController extends Controller
{
    /**
     * Convert cached OpenAI response to a text file and provide a download link.
     *
     * @param string $userId
     * @return \Illuminate\Http\Response
     */
    public function convertToText(string $userId)
    {
        try {
            $openAiResponse = Cache::get('generated_result_' . $userId);

            if (!$openAiResponse) {
                return response()->json(['error' => 'No cached result found.'], 404);
            }

            $fileName = $userId . '_' . time() . '.txt';

            $filePath = 'public/' . $fileName;

            $encodedContent = mb_convert_encoding($openAiResponse, 'UTF-8', 'auto');
            Storage::put($filePath, $encodedContent);

            return Storage::download($filePath, $fileName, [
                'Content-Type' => 'text/plain',
            ]);
        } catch (Exception $e) {
            Log::error('Failed to generate file for user ' . $userId . ': ' . $e->getMessage());
            return response()->json(['error' => 'Failed to generate file.'], 500);
        }
    }
}
