<?php

namespace App\Http\Controllers\v1;

use App\Http\Controllers\Controller;
use App\Imports\DataImport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class DataImportController extends Controller
{
    public function dataImport(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,csv,xls'
        ]);

        Excel::import(new DataImport(), $request->file('file'));

        return response()->json([
            'message' => 'Imported Successfully'
        ], 200);
    }
}
