<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CustomerFEController extends Controller
{ 
    public function login(){
        return view('frontend.customer.login');
    }
    public function register(){
        return view('frontend.customer.register');
    }
    public function forgetPassword(){
        return view('frontend.customer.forget-password');
    }
}
