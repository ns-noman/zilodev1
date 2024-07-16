<?php

namespace App\Http\Controllers\frontend;

use App\Models\Country;
use App\Models\AddressBook;
use App\Models\Category;
use App\Models\Service;
use App\Models\Slider;
use App\Models\BasicInfo;
use App\Models\Message;
use App\Models\Product;
use App\Models\ProductDetails;
use App\Models\Review;
use App\Models\HomeFeature;
use App\Models\Deal;
use App\Models\SubChild;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use DB;
use Auth;

class HomeController extends Controller
{
    public function index(){
        $reviews = Review::with('user')->where('status','=',1)->where('home_feature','=',1)->get();
        $sliders = Slider::where('status','=',1)->get();
        $bestselling = Product::with('avgrating')->where('best_seller','=',1)->where('status','=',1)->get();
        $trendings = Product::with('avgrating')->where('trending_type','=',1)->where('status','=',1)->get();
        $featureProducts = Product::with('avgrating')->where('home_feature','=',1)->where('status','=',1)->get();
        $homeFeature = HomeFeature::where('feature_status','=',1)->get();
        $best_seller_cats = Category::with('subcategoris')->where('best_seller','=',1)->get();
        $basicInfo = BasicInfo::first();
        $deals = Deal::with('product')->where('status','=',1)->where('start_at','<=',date('Y-m-d H:i:s'))->where('end_at','>=',date('Y-m-d H:i:s'))->orderBy('id', 'desc')->get();

        return view('frontend.index', compact('sliders','reviews','bestselling','trendings','homeFeature','deals','featureProducts','best_seller_cats','basicInfo'));
    }
    
    public function contact(){
        $basicInfo = BasicInfo::first();
        return view('frontend.contact', compact('basicInfo'));
    }
    public function messageStore(Request $request){
        Message::create($request->all());
        return redirect()->back()->with('alert',['messageType'=>'success','message'=>'Message Sent Successfully!']);
    }

    public function compare(){
        return view('frontend.compare');
    }
    
    public function checkout(){

        $user_id = Auth::guard('web')->user()->id;
        $countries = Country::where('status', '=', 1)->get();
        $address = AddressBook::where('user_id','=',$user_id)->first();
        $cart = Session::get('cart');

        if(!$address){
            return redirect('user/address-book')->with('alert',['messageType'=>'danger','message'=>'Please insert your billing and shipping address!']);
        }else if(empty($cart)){
            return redirect('/home')->with('alert',['messageType'=>'danger','message'=>'Your cart is Empty!']);
        }

        return view('frontend.checkout', compact('countries','address'));
    }
    public function services($slug){
        $service = Service::where('slug','=',$slug)->first();
        return view('frontend.services', compact('service'));
    }

    public function productDetails($slug){
        $basicInfo = BasicInfo::first();
        $product = Product::where('slug','=',$slug)->first();
        $product->hasStock = ProductDetails::where('product_id','=',$product->id)->sum('stock');
        $product->colors = ProductDetails::with('color')->where('product_id','=',$product->id)->groupBy('color_id')->get();
        $product->sizes = ProductDetails::with('size')->where('product_id','=',$product->id)->groupBy('size_id')->get();
        $product->details = ProductDetails::with('size')->where('product_id','=',$product->id)->get();
        $product->review = Review::with('user')->where('status','=',1)->where('product_id','=',$product->id)->paginate(4);
        $product->avg_rating = count($product->review->items())?ceil(Review::where('status','=',1)->where('product_id','=',$product->id)->sum('rating')/count($product->review->items())):0;
        $product->relatedProducts = Product::with('avgrating')->where('sub_child_id','=',$product->sub_child_id)->where('id','!=',$product->id)->limit(4)->get();
        
        $product->subchild = SubChild::find($product->sub_child_id);
        return view('frontend.product-details', compact('product','basicInfo'));

    }

    public function loadSizes($productID, $colorID){
        $sizes = ProductDetails::with('size')->where('product_id','=',$productID)->where('color_id','=',$colorID)->get();
        return response()->json($sizes, 200);
    }

    public function orderCompleted(){
        return view('frontend.order-completed');
    }
}
