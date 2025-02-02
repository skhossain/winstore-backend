<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\ProductCategory;
use App\Models\Rating;
use App\Models\Brand;
use App\Models\Product;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Product::class;

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence,
            'price' => $this->faker->randomFloat(2, 10, 1000),
            'discount' => $this->faker->randomFloat(2, 0, 50),
            'description' => $this->faker->paragraph,
            'category_id' => ProductCategory::inRandomOrder()->first()->id,  // Random valid category_id
            'brand_id' => Brand::inRandomOrder()->first()->id,
            'image' => $this->faker->imageUrl(640, 480, 'products', true, 'Faker'),
            'already_sold' => $this->faker->numberBetween(0, 500),
            'available_stock' => $this->faker->numberBetween(0, 1000),
            'status' => 'active',
        ];
    }
}
