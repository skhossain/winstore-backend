<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Inertia\Inertia;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    
    public function index(Request $request){
        $query = Product::with(['category', 'brand', 'ratings']);
        $products = $query->get();
        return Inertia::render('Product/Index', ['products' => $products]); 
    }

    public function uploadImage(Request $request, $id){
    $request->validate([
        'image' => 'required|image|mimes:jpeg,png,jpg,gif,webp|max:2048',
    ]);

    $product = Product::findOrFail($id);

    if ($request->hasFile('image')) {
        $path = $request->file('image')->store('products', 'public');
        $product->image = Storage::url($path);
        $product->save();
    }

    return redirect()->back()->with('success', 'Image uploaded successfully.');
}
}
