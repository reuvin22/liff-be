<?php

namespace App\Http\Controllers\v1\data;

use App\Http\Controllers\Controller;
use App\Models\AdsCounter;
use App\Models\Answer;
use App\Models\Prompt;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class DashboardDataController extends Controller
{
    public function userCount(Request $request)
    {
        try {
            $startDate = $request->input('start_date');
            $endDate   = $request->input('end_date');

            $query = User::query();

            if (!empty($startDate) && !empty($endDate)) {
                $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
            } elseif (!empty($startDate)) {
                $query->whereDate('created_at', $startDate);
            }

            $userCounts = $query->selectRaw('DATE(created_at) as date, COUNT(*) as count')
                ->groupBy('date')
                ->pluck('count', 'date')
                ->toArray();

            return response()->json([
                'records' => array_map(fn($date, $count) => ['date' => $date, 'user_count' => $count], array_keys($userCounts), $userCounts),
                'user_count' => array_sum($userCounts),
            ], 200);
        } catch (\Exception $e) {
            Log::error("DashboardDataController@userCount error: " . $e->getMessage());
            return response()->json(['message' => 'Failed to fetch user counts'], 500);
        }
    }

    public function promptCount(Request $request)
    {
        try {
            $startDate = $request->input('start_date');
            $endDate   = $request->input('end_date');

            $query = Prompt::query();

            if (!empty($startDate) && !empty($endDate)) {
                $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
            } elseif (!empty($startDate)) {
                $query->whereDate('created_at', $startDate);
            }

            $promptCounts = $query->selectRaw('DATE(created_at) as date, COUNT(*) as count')
                ->groupBy('date')
                ->pluck('count', 'date')
                ->toArray();

            return response()->json([
                'records' => array_map(fn($date, $count) => ['date' => $date, 'result_count' => $count], array_keys($promptCounts), $promptCounts),
                'result_count' => array_sum($promptCounts),
            ], 200);
        } catch (\Exception $e) {
            Log::error("DashboardDataController@promptCount error: " . $e->getMessage());
            return response()->json(['message' => 'Failed to fetch prompt counts'], 500);
        }
    }

    public function adsCount(Request $request)
    {
        try {
            $startDate = $request->input('start_date');
            $endDate   = $request->input('end_date');

            $query = AdsCounter::query();

            if (!empty($startDate) && !empty($endDate)) {
                $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
            } elseif (!empty($startDate)) {
                $query->whereDate('created_at', $startDate);
            }

            $adsCounts = $query->selectRaw('DATE(created_at) as date, COUNT(*) as count')
                ->groupBy('date')
                ->pluck('count', 'date')
                ->toArray();

            return response()->json([
                'records' => array_map(fn($date, $count) => ['date' => $date, 'ads_count' => $count], array_keys($adsCounts), $adsCounts),
                'ads_count' => array_sum($adsCounts),
            ], 200);
        } catch (\Exception $e) {
            Log::error("DashboardDataController@adsCount error: " . $e->getMessage());
            return response()->json(['message' => 'Failed to fetch ads counts'], 500);
        }
    }

    public function answerCount(Request $request)
    {
        try {
            $startDate = $request->input('start_date');
            $endDate   = $request->input('end_date');

            $query = Answer::query();

            if (!empty($startDate) && !empty($endDate)) {
                $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
            } elseif (!empty($startDate)) {
                $query->whereDate('created_at', $startDate);
            }

            $answerCounts = $query->selectRaw('DATE(created_at) as date, COUNT(*) as count')
                ->groupBy('date')
                ->pluck('count', 'date')
                ->toArray();

            return response()->json([
                'records' => array_map(fn($date, $count) => ['date' => $date, 'answers_count' => $count], array_keys($answerCounts), $answerCounts),
                'answers_count' => array_sum($answerCounts),
            ], 200);
        } catch (\Exception $e) {
            Log::error("DashboardDataController@answerCount error: " . $e->getMessage());
            return response()->json(['message' => 'Failed to fetch answer counts'], 500);
        }
    }

    public function totalLineUsers(Request $request)
    {
        try {
            $startDate = $request->input('start_date');
            $endDate   = $request->input('end_date');

            $query = Answer::query();

            if (!empty($startDate) && !empty($endDate)) {
                $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
            } elseif (!empty($startDate)) {
                $query->whereDate('created_at', $startDate);
            }

            $dailyCounts = $query->selectRaw('DATE(created_at) as date, COUNT(DISTINCT userId) as count')
                ->groupBy('date')
                ->pluck('count', 'date')
                ->toArray();

            return response()->json([
                'records' => array_map(fn($date, $count) => ['date' => $date, 'users_count' => $count], array_keys($dailyCounts), $dailyCounts),
                'users_count' => array_sum($dailyCounts),
            ], 200);
        } catch (\Exception $e) {
            Log::error("DashboardDataController@totalLineUsers error: " . $e->getMessage());
            return response()->json(['message' => 'Failed to fetch total line users'], 500);
        }
    }
}
