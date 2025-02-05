<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
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

        return response()->json($files);
    }
}
