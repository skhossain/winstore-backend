<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'price',
        'discount',
        'description',
        'category_id',
        'image',
        'already_sold',
        'available_stock',
        'brand_id',
        'status'
    ];

    // Relationship with Category
    public function category()
    {
        return $this->belongsTo(ProductCategory::class);
    }

    // Relationship with Brand
    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    // Relationship with Rating
    public function ratings()
    {
        return $this->hasMany(Rating::class,'product_id','id');
    }
}
