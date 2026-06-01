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
<<<<<<< HEAD
=======
        $makers = Maker::orderBy('name')->get();
        $carTypes = CarType::orderBy('name')->get();
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885

        return view('home.index', ['cars' => $cars]);
    }
}
