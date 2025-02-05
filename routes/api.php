<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ProductCategoryController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\AuthController;

Route::apiResource('/products/categories', ProductCategoryController::class);
Route::apiResource('/products', ProductController::class);
Route::get('/products/category/{category}', [ProductController::class, 'getProductsByCategory']);

Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    
    //Admin-Only Routes
    Route::middleware('role:admin')->group(function () {
        Route::get('/admin/dashboard', function () {
            return response()->json(['message' => 'Welcome, Admin!']);
        });
        Route::get('/admin/products', [ProductController::class, 'allProducts']);
    });

    //User-Only Routes
    Route::middleware('role:user')->group(function () {
        Route::get('/user/dashboard', function () {
            return response()->json(['message' => 'Welcome, User!']);
        });
    });
});

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');
