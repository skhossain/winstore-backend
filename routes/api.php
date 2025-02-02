<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ProductCategoryController;
use App\Http\Controllers\Api\ProductController;

Route::apiResource('/products/categories', ProductCategoryController::class);
Route::apiResource('/products', ProductController::class);
Route::get('/products/category/{category}', [ProductController::class, 'getProductsByCategory']);


Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
