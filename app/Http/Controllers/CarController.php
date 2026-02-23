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
        $cars = User::findOrFail(5)
            ->cars()
            ->orderBy('created_at', 'desc')
            ->get();

        return view('car.index', ['cars' => $cars]);
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
        $query = Car::where('published_at', '<', now())
            ->orderBy('published_at', 'desc');

        $carCount = $query->count();
        $cars = $query->limit(30)->get();

        return view('car.search', compact('cars', 'carCount'));
    }

    public function watchlist()
    {
        // $cars = User::findOrFail(4)
        //     ->favouriteCars;

        // dump($cars);

        $cars = User::with([
            'favouriteCars.primaryImage',
            'favouriteCars.maker',
            'favouriteCars.model',
            'favouriteCars.city',
            'favouriteCars.carType',
            'favouriteCars.fuelType'
        ])->findOrFail(4)->favouriteCars;

        return view('car.watchlist', ['cars' => $cars]);
    }
}
