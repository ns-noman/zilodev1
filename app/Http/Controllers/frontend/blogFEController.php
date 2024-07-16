<?php

namespace App\Http\Controllers\frontend;

use App\Models\Blog;
use App\Models\BlogCategory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class blogFEController extends Controller
{
    public function blog($slug)
    {
        $blogCategory = BlogCategory::where('cat_url','=',$slug)->first();
        $blogs = Blog::with(['blogcategory','user'])->where('cat_id','=',$blogCategory->id)->get();
        $blogCategories = BlogCategory::with('category_post')->where('cat_status','=',1)->get();
        $latests = Blog::where('status','=',1)->latest()->limit(4)->get();
        return view('frontend.blog.blog', compact('blogs','blogCategories','latests'));
    }
    public function blogDetails($slug)
    {
        $blog = Blog::with(['blogcategory','user'])->where('slug','=',$slug)->first();
        $blogCategories = BlogCategory::with('category_post')->where('cat_status','=',1)->get();
        $latests = Blog::where('status','=',1)->latest()->limit(4)->get();
        return view('frontend.blog.blog-details', compact('blog','blogCategories','latests'));
    }
}
