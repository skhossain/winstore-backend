<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ProductCategory;

class ProductCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Define the list of default category names
        $categories = [
            'electronics',
            'jewelery',
            "men's clothing",
            "women's clothing",
            'Home & Kitchen',
            'Beauty & Personal Care',
            'Sports & Outdoors',
            'Automotive',
            'Books',
            'Toys & Games',
            'Health & Wellness',
            'Groceries',
            'Baby Products',
            'Furniture'
        ];

        // Loop through the list and create records using Eloquent
        foreach ($categories as $categoryName) {
            ProductCategory::create([
                'name' => $categoryName, // Insert category name
            ]);
        }
    }
}
