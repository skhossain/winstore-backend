<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'           => $this->id,
            'title'        => $this->title,
            'price'        => $this->price,
            'discount'     => $this->discount,
            'discount_percent' => round(($this->discount / $this->price) * 100, 2),
            'description'  => $this->description,
            'brand'        => $this->brand ? $this->brand->name : null,
            'available_stock' => $this->available_stock,
            'already_sold' => $this->already_sold,
            'category'     => $this->category ? $this->category->name : null,
            'image'        => url($this->image),
            'rating'       => [
                'rate'  => round($this->ratings->avg('rate') ?? 0, 1), 
                'count' => $this->ratings->count() ?? 0
            ]
        ];
    }
}
