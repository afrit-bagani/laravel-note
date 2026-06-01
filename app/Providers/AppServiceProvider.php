<?php

namespace App\Providers;

<<<<<<< HEAD
=======
use Illuminate\Database\Eloquent\Model;
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
<<<<<<< HEAD
=======
        Model::unguard();
        Model::shouldBeStrict();
        Model::automaticallyEagerLoadRelationships();
>>>>>>> b830e961970d6d87bdc2075ff9292f3fa69b8885
    }
}
