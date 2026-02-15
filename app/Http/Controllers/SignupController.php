<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SignupController extends Controller
{
    public function create()
    {
        return view('auth.login',);
    }

    public function signup()
    {
        return view('auth.signup');
    }
}
