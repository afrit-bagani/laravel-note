<?php

namespace App\Http\Controllers;

use App\Models\Car;
use App\Models\CarType;
use App\Models\Maker;;

class HomeController extends Controller
{
    public function index()
    {
        $cars = Car::with(['primaryImage', 'city', 'maker', 'model',  'carType', 'fuelType'])
            ->where('published_at', '<', now())
            ->orderBy('published_at', 'desc')
            ->limit(30)
            ->get();
        $makers = Maker::orderBy('name')->get();
        $carTypes = CarType::orderBy('name')->get();

        return view('home.index', ['cars' => $cars]);
    }
}
