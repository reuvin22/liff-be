<?php

namespace App\Http\Controllers\v1\data;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $search = $request->query('search');
        $limit  = $request->query('limit', 5);
        $page   = $request->query('page', 1);

        $query = User::query();

        if ($search) {
            $query->where(function ($q) use ($search) {
                $q->where('first_name', 'LIKE', "%{$search}%")
                ->orWhere('last_name', 'LIKE', "%{$search}%")
                ->orWhereRaw("CONCAT(first_name, ' ', last_name) LIKE ?", ["%{$search}%"])
                ->orWhere('email', 'LIKE', "%{$search}%");
            });
        }

        return $query
                ->orderBy('id', 'desc')
                ->paginate($limit);
    }

    public function total_admins()
    {
        return User::count();
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->all();

        $user = User::create([
            'email' => $data['email'],
            'password' => $data['password'],
            'first_name' => $data['first_name'],
            'last_name' => $data['last_name'],
            'role' => $data['role']
        ]);

        if(!$user){
            return response()->json([
                'message' => 'Failed to Register'
            ], 400);
        }

        return response()->json([
            'message' => 'Registration Successful'
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $user = User::find($id);

        if(empty($user) || !$user){
            return response()->json([
                'message' => 'Failed to fetch user'
            ], 200);
        }

        return response()->json([
            'users' => $user
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user = User::find($id);

        if(empty($user) || !$user){
            return response()->json([
                'message' => 'Failed to fetch user'
            ], 200);
        }

        $update = $user->update($request->all());
        if(!$update){
            return response()->json([
                'message' => 'Failed to Update User'
            ], 400);
        }

        return response()->json([
            'message' => 'Update User Successfully',
            'users' => $user
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::find($id);

        if (!$user) {
            return response()->json([
                'message' => 'User not found'
            ], 404);
        }

        if (!$user->delete()) {
            return response()->json([
                'message' => 'Failed to delete user'
            ], 500);
        }

        return response()->json([
            'message' => 'User deleted successfully',
        ], 200);
    }
}
