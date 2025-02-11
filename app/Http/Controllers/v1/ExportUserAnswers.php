<?php

namespace App\Http\Controllers\v1;

use App\Exports\UserAnswersExport;
use App\Http\Controllers\Controller;
use App\Models\Answer;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ExportUserAnswers extends Controller
{
    public function exportUserAnswers($userId)
    {
        try {
            return Excel::download(new UserAnswersExport($userId), "user_{$userId}_answers.xlsx");
        } catch (\Exception $e) {
            return response()->json(["error" => $e->getMessage()], 500);
        }
    }
}
