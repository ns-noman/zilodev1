<?php

namespace App\Http\Controllers\frontend;

use App\Models\Review;
use App\Models\AboutUs;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AboutUsFEController extends Controller
{
    public function index(){
        $reviews = Review::with('user')->where('status','=',1)->where('home_feature','=',1)->get();
        $aboutUs = AboutUs::first();
        return view('frontend.about-us', compact('reviews','aboutUs'));
    }
}
