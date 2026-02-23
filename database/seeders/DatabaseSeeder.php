<?php

namespace Database\Seeders;

use App\Models\Car;
use App\Models\CarImage;
use App\Models\CarType;
use App\Models\City;
use App\Models\FuelType;
use App\Models\Maker;
use App\Models\Model;
use App\Models\State;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        set_time_limit(0);

        CarType::factory()
            ->sequence(
                ['name' => 'SUV'],
                ['name' => 'Hatchback'],
                ['name' => 'Sedan'],
                ['name' => 'Coupe'],
                ['name' => 'Convertible'],
                ['name' => 'Wagon'],
                ['name' => 'Pickup Truck'],
                ['name' => 'Minivan'],
                ['name' => 'Crossover'],
                ['name' => 'Sports Car'],
                ['name' => 'Luxury'],
                ['name' => 'Electric'],
                ['name' => 'Hybrid'],
            )
            ->count(13)
            ->create()
        ;

        FuelType::factory()
            ->sequence(
                ['name' => 'Petrol'],
                ['name' => 'Diesel'],
                ['name' => 'Electric'],
                ['name' => 'Hybrid'],
                ['name' => 'Plug-in Hybrid'],
                ['name' => 'CNG'],
                ['name' => 'LPG'],
                ['name' => 'Hydrogen'],
            )
            ->count(8)
            ->create()
        ;

        $states = [
            'California' => [
                'Los Angeles',
                'San Francisco',
                'San Diego',
                'Sacramento',
                'San Jose'
            ],
            'Texas' => [
                'Houston',
                'Austin',
                'Dallas',
                'San Antonio',
                'Fort Worth'
            ],
            'New York' => [
                'New York City',
                'Buffalo',
                'Rochester',
                'Albany',
                'Syracuse'
            ],
            'Florida' => [
                'Miami',
                'Orlando',
                'Tampa',
                'Jacksonville',
                'Tallahassee'
            ],
            'Illinois' => [
                'Chicago',
                'Aurora',
                'Naperville',
                'Joliet',
                'Rockford'
            ],
            'Michigan' => [
                'Detroit',
                'Grand Rapids',
                'Warren',
                'Sterling Heights',
                'Ann Arbor'
            ],
        ];

        foreach ($states as $state => $cities) {
            State::factory()
                ->state(['name' => $state])
                ->has(
                    City::factory()
                        ->count(count($cities))
                        ->sequence(...array_map(fn($city) => ['name' => $city], $cities))
                )
                ->create();
        }

        $makers = [
            'Toyota' => [
                'Camry',
                'Corolla',
                'RAV4',
                'Highlander',
                'Prius'
            ],
            'Honda' => [
                'Civic',
                'Accord',
                'CR-V',
                'Pilot',
                'Odyssey'
            ],
            'Ford' => [
                'F-150',
                'Mustang',
                'Explorer',
                'Escape',
                'Bronco'
            ],
            'Tesla' => [
                'Model S',
                'Model 3',
                'Model X',
                'Model Y',
                'Cybertruck'
            ],
            'BMW' => [
                '3 Series',
                '5 Series',
                'X3',
                'X5',
                'M4'
            ],
            'Mercedes-Benz' => [
                'C-Class',
                'E-Class',
                'S-Class',
                'GLC',
                'G-Class'
            ],
            'Chevrolet' => [
                'Silverado',
                'Equinox',
                'Tahoe',
                'Suburban',
                'Corvette'
            ],
            'Nissan' => [
                'Altima',
                'Rogue',
                'Sentra',
                'Pathfinder',
                'Leaf'
            ],
            'Hyundai' => [
                'Elantra',
                'Sonata',
                'Tucson',
                'Santa Fe',
                'Ioniq 5'
            ],
        ];

        foreach ($makers as $maker => $models) {
            Maker::factory()
                ->state(['name' => $maker])
                ->has(
                    Model::factory()
                        ->count(count($models))
                        ->sequence(...array_map(fn($model) => ['name' => $model], $models))
                )
                ->create();
        }

        User::factory()
            ->count(3)
            ->create();

        User::factory()
            ->count(2)
            ->has(
                Car::factory()
                    ->count(50)
                    ->has(
                        CarImage::factory()
                            ->count(5)
                            ->sequence(fn(Sequence $sequence) =>
                            ['position' => $sequence->index % 5 + 1]),
                        relationship: 'images'
                    )
                    ->hasFeatures(),
                relationship: 'favouriteCars'
            )
            ->create();
    }
}
