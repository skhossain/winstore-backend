<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;
// use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Auth;


class AuthController extends Controller
{
    
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $token = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'user' => $user,
                'token' => $token,
                'status' => 'success'
            ]);
        }

        return response()->json(['message' => 'Invalid credentials'], 401);
    }
    // Register a new user
     public function register(Request $request)
     {
         $request->validate([
             'name' => 'required',
             'email' => 'required|email|unique:users',
             'password' => 'required|min:8',
             'role' => 'in:user,admin' // Only accept 'user' or 'admin' role
         ]);
 
         $user = User::create([
             'name' => $request->name,
             'email' => $request->email,
             'password' => Hash::make($request->password),
             'role' => $request->role ?? 'user', // Default role is 'user'
         ]);

         return $this->login($request);
        //  $credentials = $request->validate([
        //     'email' => 'required|email',
        //     'password' => 'required'
        // ]);

        //  Auth::attempt($credentials);
        //  return response()->json(['
        //  token' => $user->createToken('auth_token')->plainTextToken,
        //  'user' => $user,
        //  'message' => 'User created successfully',
        //  'status' => 'success'
        // ]);
     }

     

    public function logout(Request $request)
    {
        $request->user()->tokens()->delete();
        return response()->json(['message' => 'Logged out']);
    }
}
