<?php

namespace App\Http\Controllers\v1\data;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Answer;

class TotalInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $search = $request->query('search');
        $limit  = $request->query('limit', 5);
        $page   = $request->query('page', 1);

        $query = Answer::query();

        if ($search) {
            $query->where(function ($q) use ($search) {
                $q->where('first_name', 'LIKE', "%{$search}%")
                ->orWhere('last_name', 'LIKE', "%{$search}%")
                ->orWhereRaw("CONCAT(first_name, ' ', last_name) LIKE ?", ["%{$search}%"])
                ->orWhere('email', 'LIKE', "%{$search}%");
            });
        }

        return $query->paginate($limit);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $answer = Answer::find($id);
        $answer->delete();

        return response()->json([
            'message' => 'Answer deleted successfully',
        ], 200);
    }
}
