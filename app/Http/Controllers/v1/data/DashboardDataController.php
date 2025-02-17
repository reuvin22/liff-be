<?php

namespace App\Http\Controllers\v1\data;

use App\Http\Controllers\Controller;
use App\Models\AdsCounter;
use App\Models\Answer;
use App\Models\GeneratedResult;
use App\Models\Prompt;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardDataController extends Controller
{
    public function userCount(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $countData = User::count();

        $query = User::query();
        if ($startDate && $endDate) {
            $query->whereBetween('created_at', [$startDate, $endDate]);
        } elseif ($startDate) {
            $query->whereDate('created_at', $startDate);
            $endDate = $startDate;
        }

        $dates = [];
        if ($startDate) {
            $currentDate = strtotime($startDate);
            $endDateTimestamp = strtotime($endDate);

            while ($currentDate <= $endDateTimestamp) {
                $formattedDate = date("Y-m-d", $currentDate);
                $dates[$formattedDate] = 0;
                $currentDate = strtotime("+1 day", $currentDate);
            }
        }

        $userCounts = User::selectRaw('DATE(created_at) as date, COUNT(*) as count')
            ->when($startDate && $endDate, function ($query) use ($startDate, $endDate) {
                return $query->whereBetween('created_at', [$startDate, $endDate]);
            })
            ->when($startDate && !$endDate, function ($query) use ($startDate) {
                return $query->whereDate('created_at', $startDate);
            })
            ->groupBy('date')
            ->pluck('count', 'date')
            ->toArray();

        foreach ($userCounts as $date => $count) {
            $dates[$date] = $count;
        }

        $responseData = [];
        foreach ($dates as $date => $count) {
            $responseData[] = ['date' => $date, 'user_count' => $count];
        }

        return response()->json(['records' => $responseData, 'user_count' => $countData], 200);
    }

    public function promptCount(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $countData = Prompt::count();

        $query = Prompt::query();
        if ($startDate && $endDate) {
            $query->whereBetween('created_at', [$startDate, $endDate]);
        } elseif ($startDate) {
            $query->whereDate('created_at', $startDate);
            $endDate = $startDate;
        }

        $dates = [];
        if ($startDate) {
            $currentDate = strtotime($startDate);
            $endDateTimestamp = strtotime($endDate);

            while ($currentDate <= $endDateTimestamp) {
                $formattedDate = date("Y-m-d", $currentDate);
                $dates[$formattedDate] = 0;
                $currentDate = strtotime("+1 day", $currentDate);
            }
        }

        $promptCounts = Prompt::selectRaw('DATE(created_at) as date, COUNT(*) as count')
            ->when($startDate && $endDate, function ($query) use ($startDate, $endDate) {
                return $query->whereBetween('created_at', [$startDate, $endDate]);
            })
            ->when($startDate && !$endDate, function ($query) use ($startDate) {
                return $query->whereDate('created_at', $startDate);
            })
            ->groupBy('date')
            ->pluck('count', 'date')
            ->toArray();

        foreach ($promptCounts as $date => $count) {
            $dates[$date] = $count;
        }

        $responseData = [];
        foreach ($dates as $date => $count) {
            $responseData[] = ['date' => $date, 'result_count' => $count];
        }

        return response()->json(['records' => $responseData, 'result_count' => $countData], 200);
    }

    public function adsCount(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $countData = AdsCounter::count();

        $query = AdsCounter::query();
        if ($startDate && $endDate) {
            $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
        } elseif ($startDate) {
            $query->whereDate('created_at', $startDate);
            $endDate = $startDate;
        }

        $dates = [];
        if ($startDate) {
            $currentDate = strtotime($startDate);
            $endDateTimestamp = strtotime($endDate);

            while ($currentDate <= $endDateTimestamp) {
                $formattedDate = date("Y-m-d", $currentDate);
                $dates[$formattedDate] = 0;
                $currentDate = strtotime("+1 day", $currentDate);
            }
        }

        $adsCounts = AdsCounter::selectRaw('DATE(created_at) as date, COUNT(*) as count')
            ->when($startDate && $endDate, function ($query) use ($startDate, $endDate) {
                return $query->whereBetween('created_at', ["$startDate 00:00:00", "$endDate 23:59:59"]);
            })
            ->when($startDate && !$endDate, function ($query) use ($startDate) {
                return $query->whereDate('created_at', $startDate);
            })
            ->groupBy('date')
            ->pluck('count', 'date')
            ->toArray();

        foreach ($adsCounts as $date => $count) {
            $dates[$date] = $count;
        }

        $responseData = [];
        foreach ($dates as $date => $count) {
            $responseData[] = ['date' => $date, 'ads_count' => $count];
        }

        return response()->json(['records' => $responseData, 'ads_count' => $countData], 200);
    }

    public function answerCount(Request $request)
    {
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        $countData = Answer::count();

        $query = Answer::query();

        if ($startDate && $endDate) {
            $query->whereBetween('created_at', [$startDate, $endDate]);
        } elseif ($startDate) {
            $query->whereDate('created_at', $startDate);
            $endDate = $startDate;
        }

        $dates = [];
        if ($startDate) {
            $currentDate = strtotime($startDate);
            $endDateTimestamp = strtotime($endDate);

            while ($currentDate <= $endDateTimestamp) {
                $formattedDate = date("Y-m-d", $currentDate);
                $dates[$formattedDate] = 0;
                $currentDate = strtotime("+1 day", $currentDate);
            }
        }

        $answerCounts = Answer::selectRaw('DATE(created_at) as date, COUNT(*) as count')
            ->when($startDate && $endDate, function ($query) use ($startDate, $endDate) {
                return $query->whereBetween('created_at', [$startDate, $endDate]);
            })
            ->when($startDate && !$endDate, function ($query) use ($startDate) {
                return $query->whereDate('created_at', $startDate);
            })
            ->groupBy('date')
            ->pluck('count', 'date')
            ->toArray();

        foreach ($answerCounts as $date => $count) {
            $dates[$date] = $count;
        }

        $responseData = [];
        foreach ($dates as $date => $count) {
            $responseData[] = ['date' => $date, 'answers_count' => $count];
        }

        return response()->json([
            'records' => $responseData,
            'answers_count' => $countData
        ], 200);
    }
}
