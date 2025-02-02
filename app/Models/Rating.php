<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'rate',
        'count',
        'comment',
        'status',
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
