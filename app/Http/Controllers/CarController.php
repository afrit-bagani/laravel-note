<?php

namespace App\Http\Controllers;

use App\Models\Car;
use App\Models\User;
use Illuminate\Http\Request;

use function Symfony\Component\Clock\now;

class CarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cars = User::with(['primaryImage', 'model', 'maker'])->findOrFail(5)
            ->findOrFail(5)
            ->cars()
            ->orderBy('created_at', 'desc')
            ->get();

        return view('car.index', compact(['cars']));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('car.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        return view('car.store');
    }

    /**
     * Display the specified resource.
     */
    public function show(Car $car)
    {
        return view('car.show', ['car' => $car]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('car.edit');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function search()
    {
        $query = Car::with(['primaryImage', 'city', 'maker', 'model', 'carType', 'fuelType'])
            ->where('published_at', '<', now())
            ->orderBy('published_at', 'desc');

        $query->join('cities', 'cities.id', '=', 'cars.city_id')
            ->where('cities.state_id', 1);

        $query->select('cars.*', 'cities.name as city_name');

        $cars = $query->paginate(5);

        return view('car.search', compact('cars'));
    }

    public function watchlist()
    {
        $cars = User::findOrFail(4)
            ->favouriteCars()
            ->with([
                'primaryImage',
                'city',
                'maker',
                'model',
                'carType',
                'fuelType'
            ])
            ->get();

        return view('car.watchlist', ['cars' => $cars]);
    }
}
