<?php

namespace Database\Factories;

use App\Models\CarType;
use App\Models\City;
use App\Models\FuelType;
use App\Models\Maker;
use App\Models\Model;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Car>
 */
class CarFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // // 1. Fetch the Parent Objects ONCE at the top
        // $maker = Maker::inRandomOrder()->first();
        // $user = User::inRandomOrder()->first();

        // // 2. Fetch the dependent Model based on the Maker we just found
        // $model = Model::where('maker_id', $maker->id)->inRandomOrder()->first();

        // return [
        //     'maker_id' => $maker->id,
        //     'model_id' => $model->id,
        //     'year' => fake()->year(),
        //     'price' => ((int) fake()->randomFloat(2, 5, 100)) * 1000,
        //     'vin' => strtoupper(Str::random(17)),
        //     'mileage' => ((int) fake()->randomFloat(2, 5, 500)) * 1000,

        //     'car_type_id' => CarType::inRandomOrder()->value('id'),
        //     'fuel_type_id' => FuelType::inRandomOrder()->value('id'),
        //     'city_id' => City::inRandomOrder()->value('id'),

        //     'user_id' => $user->id,
        //     'phone' => $user->id,
        //     'address' => fake()->address(),
        //     'description' => fake()->text(2000),
        //     'published_at' => fake()->optional(0.9)->dateTimeBetween('-1 month', '+1 day'),
        // ];

        return [
            'maker_id' => Maker::inRandomOrder()->first()->id,
            'model_id' => function (array $attributes) {
                return Model::where('maker_id', $attributes['maker_id'])
                    ->inRandomOrder()->first()->id;
            },
            'year' => fake()->year(),
            'price' => ((int) fake()->randomFloat(2, 5, 100)) * 1000,
            'vin' => strtoupper(Str::random(17)),
            'mileage' => ((int) fake()->randomFloat(2, 5, 500)) * 1000,

            'car_type_id' => CarType::inRandomOrder()->first()->id,
            'fuel_type_id' => FuelType::inRandomOrder()->first()->id,
            'user_id' => User::inRandomOrder()->first()->id,
            'city_id' => City::inRandomOrder()->first()->id,

            'address' => fake()->address(),
            'phone' => function (array $attributes) {
                return User::find($attributes['user_id'])->phone;
            },
            'description' => fake()->text(2000),
            'published_at' => fake()->optional(0.9)
                ->dateTimeBetween('-1 month', '+1 day'),
        ];
    }
}
