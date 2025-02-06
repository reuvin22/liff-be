<?php

namespace App\Http\Controllers\v1\auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ForgotPasswordController extends Controller
{
    public function checKEmail(Request $request)
    {
        $data = $request->input('email');

        $user = User::where('email', $data['email']);

        if(!$user){
            return response()->json([
                'message' => 'Email is not existing!'
            ], 400);
        }


    }
}
