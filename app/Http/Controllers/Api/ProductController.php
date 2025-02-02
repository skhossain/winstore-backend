<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Http\Resources\ProductResource;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $query = Product::with(['category', 'brand', 'ratings']);

        // Sorting (default: ascending)
        $sortOrder = $request->query('sort', 'asc'); // Default: ascending
        $query->orderBy('id', $sortOrder);

        // Apply filters
        if ($request->has('category')) {
            $query->whereHas('category', function ($q) use ($request) {
                $q->where('name', $request->category);
            });
        }

        if ($request->has('min_price')) {
            $query->where('price', '>=', $request->min_price);
        }

        if ($request->has('max_price')) {
            $query->where('price', '<=', $request->max_price);
        }

        if ($request->has('search')) {
            $query->where(function ($q) use ($request) {
                $q->where('title', 'like', '%' . $request->search . '%')
                  ->orWhere('description', 'like', '%' . $request->search . '%');
            });
        }

        // If 'limit' is provided, return limited results without pagination
        if ($request->has('limit')) {
            $limit = intval($request->limit);
            $products = $query->paginate($limit);
        }else{
            $products = $query->get();
        }

        // Transform response
        $products = $products->map(function ($product) {
            return [
                'id'           => $product->id,
                'title'        => $product->title,
                'price'        => $product->price,
                'discount'     => $product->discount,
                'discount_percent' => round(($product->discount / $product->price) * 100, 2),
                'description'  => $product->description,
                'brand'        => $product->brand ? $product->brand->name : null,
                'available_stock' => $product->available_stock,
                'already_sold' => $product->already_sold,
                'category'     => $product->category ? $product->category->name : null,
                'image'        => url($product->image),
                'rating'       => [
                    'rate'  => round($product->ratings->avg('rate') ?? 0, 1), 
                    'count' => $product->ratings->count() ?? 0
                ]
            ];
        });

        return response()->json($products);
    }

    // Show the specified resource
    function show($id)
    {
        $product = Product::with(['category', 'brand', 'ratings'])->find($id);

        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        // Format response
        $response = [
            'id'             => $product->id,
            'title'          => $product->title,
            'price'          => number_format($product->price, 2),
            'discount'       => number_format($product->discount, 2),
            'discount_percent' => $product->discount > 0 ? round(($product->discount / $product->price) * 100, 2) : 0,
            'description'    => $product->description,
            'brand'        => $product->brand ? $product->brand->name : null,
            'available_stock' => $product->available_stock,
            'already_sold' => $product->already_sold,
            'category'       => $product->category ? $product->category->name : 'Unknown',
            'image'          => url($product->image),
            'rating'         => [
                'rate'  => round($product->ratings->avg('rating') ?? 0, 1),
                'count' => $product->ratings->count(),
            ],
        ];

        return response()->json($response);
    }

    public function getProductsByCategory($category)
    {
        // Fetch products by category name
        $products = Product::whereHas('category', function ($query) use ($category) {
            $query->where('name', $category);
        })->get();

        // Return response with ProductResource
        return response()->json(ProductResource::collection($products));
    }
}   
