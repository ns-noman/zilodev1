<?php

namespace App\Http\Controllers\frontend;

use App\Models\Product;
use App\Models\Review;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class ReviewFEController extends Controller
{
    public function createOrEdit($order_id, $product_id)
    {  
        $product = Product::find($product_id);
        $product->order_id = $order_id;
        $review = Review::where(['order_id'=>$order_id,'product_id'=>$product_id])->first();

        return view('frontend.users.review', compact('product', 'review'));
    }
    public function storeUpdate(Request $request)
    {  
        $data = $request->all();
        $data['user_id'] = Auth::guard('web')->user()->id;
        unset($data['_token']);
        if($data['review_id']){
            Review::find($data['review_id'])->update($data);
            $message = 'Review Updated Successfully!';
        }else{
            unset($data['review_id']);
            Review::create($data);
            $message = 'Review Added Successfully!';
        }

        return redirect('user/orders/invoice/'.$data['order_id'])->with('alert',['messageType'=>'success','message'=>$message]);
    }
    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
