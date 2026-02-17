<?php

namespace App\Http\Controllers;

use App\Models\Maker;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Sequence;

class HomeController extends Controller
{
    public function index()
    {
        Maker::factory()->count(5)->hasModels()->create();
    }
}
