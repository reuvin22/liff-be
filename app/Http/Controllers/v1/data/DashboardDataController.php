<?php

namespace App\Http\Controllers\v1\data;

use App\Http\Controllers\Controller;
use App\Models\AdsCounter;
use App\Models\GeneratedResult;
use App\Models\Prompt;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardDataController extends Controller
{
    public function userCount()
    {
        $count = User::count();

        return response()->json([
            'user-count' => $count
        ], 200);
    }

    public function promptCount()
    {
        $count = Prompt::count();

        return response()->json([
            'result-count' => $count
        ], 200);
    }

    public function adsCount(Request $request)
    {
        $data = $request->path();

    }
}
