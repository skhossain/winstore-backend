<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\ProductCategoryResource;
use App\Models\ProductCategory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    public function index()
    {
        $categories = ProductCategory::where('status', 'active')->get();
        return response()->json(
            ProductCategoryResource::collection($categories)->pluck('name')
        );
    }
}
