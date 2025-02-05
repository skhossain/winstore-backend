<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\CategoryResource;
use App\Models\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProductCategoryController extends Controller
{
    public function index()
    {
        $categories = Category::where('status', 'active')->get();
        return response()->json(
            CategoryResource::collection($categories)->pluck('name')
        );
    }
}
