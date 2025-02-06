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
    public function userCount(Request $request)
    {
        $month = $request->input('month');
        $year = $request->input('year');
        $query = User::query();

        if ($year) {
            $query->whereYear('created_at', $year);
        }

        if ($month) {
            $query->whereMonth('created_at', $month);
        }
        $count = $query->count();

        return response()->json([
            'user-count' => $count,
            'month' => $month,
            'year' => $year
        ], 200);
    }

    public function promptCount(Request $request)
    {
        $month = $request->input('month');
        $year = $request->input('year');
        $query = Prompt::query();

        if ($year) {
            $query->whereYear('created_at', $year);
        }

        if ($month) {
            $query->whereMonth('created_at', $month);
        }

        $count = $query->count();

        return response()->json([
            'result-count' => $count,
            'month' => $month,
            'year' => $year
        ], 200);
    }

    public function adsCount(Request $request)
    {
        $month = $request->input('month');
        $year = $request->input('year');
        $query = AdsCounter::query();

        if ($year) {
            $query->whereYear('created_at', $year);
        }

        if ($month) {
            $query->whereMonth('created_at', $month);
        }

        $count = $query->sum('ads_counts');

        return response()->json([
            'ads_counts' => $count,
            'month' => $month,
            'year' => $year
        ], 200);
    }
}
