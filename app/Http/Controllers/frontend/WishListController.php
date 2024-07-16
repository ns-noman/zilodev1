<?php

namespace App\Http\Controllers\frontend;


use App\Models\Product;
use App\Models\productDetails;
use App\Models\Color;
use App\Models\Size;
use App\Models\Coupon;
use App\Models\BasicInfo;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class WishListController extends Controller
{
    public function index()
    {
        return view('frontend.wish-list');
    }
    public function insertUpdate(Request $request)
    {
        $product = Product::find($request->product_id);
        $color = Color::find($request->color_id);
        $size = Size::find($request->size_id);

        $data['product_id'] = $request->product_id;
        $data['color_id'] = $request->color_id;
        $data['size_id'] = $request->size_id;
        $data['quantity'] = $request->quantity;

        $data['product_title'] = $product->product_title;
        $data['product_image'] = $product->product_image;
        $data['old_price'] = $product->old_price;
        $data['new_price'] = $product->new_price;
        $data['short_desc'] = $product->short_desc;
        $data['slug'] = $product->slug;

        $data['color'] = $color->name;
        $data['color_code'] = $color->code;
        $data['size'] = $size->code;

        $cart = Session::get('wishList') ? Session::get('wishList'):[];
        if(count($cart)){
            $exist = false;
            foreach ($cart as $key => $item) {
                if($data['product_id'] == $item['product_id'] && $data['color_id'] == $item['color_id'] && $data['size_id'] == $item['size_id']){
                    
                    $cart[$key]['quantity'] = $data['quantity'];
                    $exist = true;
                    break;
                }
            }
            if(!$exist){
                $cart[max(array_keys($cart))+1] = $data;
            }
        }
        else{
            $cart = [$data];
        }
        
        Session::put('wishList',$cart);

        return response()->json(['message'=>'Product added to wish list succussfully!'], 200);

    }
    
    public function currentStock($product_id,$color_id,$size_id)
    {
        $stock = ProductDetails::where('product_id','=',$product_id)->where('color_id','=',$color_id)->where('size_id','=',$size_id)->first()->stock;
        return response()->json($stock);
    }
    
    public function delete($index)
    {
        $cart = Session::get('wishList');
        unset($cart[$index]);
        Session::put('wishList',$cart);
        return redirect()->back();
    }
}
