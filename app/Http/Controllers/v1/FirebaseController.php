<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Models\AdsCounter;
use App\Services\FirebaseStorageService;
use Illuminate\Http\Request;

class FirebaseController extends Controller
{
    protected $firebaseService;

    public function __construct(FirebaseStorageService $firebaseService)
    {
        $this->firebaseService = $firebaseService;
    }

    public function getFiles()
    {
        $folder = 'chatbot/';
        $files = $this->firebaseService->listFiles($folder);

        AdsCounter::create([
            'name' => $files['name'],
            'url' => $files['url']
        ]);

        return response()->json($files);
    }
}
