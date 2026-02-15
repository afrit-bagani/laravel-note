<?php

use App\Http\Controllers\CarController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SignupController;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/signup', [SignupController::class, 'signup'])->name('signup');
Route::get('/login', [SignupController::class, 'create'])->name('login');

Route::get('/car/search', [CarController::class, 'search'])->name('car.search');
Route::resource("/car", CarController::class);

Route::fallback(function () {
    return "Error 404 : Page not found";
});
