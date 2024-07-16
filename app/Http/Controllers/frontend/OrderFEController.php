<?php

namespace App\Http\Controllers\frontend;

use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\AddressBook;
use App\Models\Product;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;

use Auth;

class OrderFEController extends Controller
{
    public function index()
    {
        $user_id = Auth::guard('web')->user()->id;
        $orders = Order::where('user_id',$user_id)->orderBy('id','desc')->get();
        return view('frontend.users.my-orders',compact('orders'));
    }

    public function invoice($id, $print=null)
    {
        $order = Order::with(['order_details','user','shipping_country','billing_country'])->find($id);
        return view('frontend.users.invoice', compact('order','print'));
    }

    public function store(Request $request)
    {
        $request->paymentType = $request->paymentType;

        $user_id = Auth::guard('web')->user()->id;
        $cart = Session::get('cart');
        $coupon = Session::get('coupon');

        $address = AddressBook::where('user_id','=',$user_id)->first();
        
        $total_weight = 0;
        $total_qty = 0;
        $total_price = 0;

        foreach ($cart as $key => $item) {
            $product = Product::find($item['product_id']);
            $total_weight += $product->product_weight;
            $total_qty += $item['quantity'];
            $total_price += $item['quantity'] * $item['new_price'];
        }
        $total_discount = $coupon? ($total_price * ($coupon->discount_perc/100)) : 0;
        $coupon_code = $coupon ? ($coupon->coupon_code) : '';
        $shipping_charge = $total_price * 20/100;
        $payable_amount = $total_price - $total_discount + $shipping_charge;

        $order['order_no'] = time();
        $order['user_id'] = $user_id;
        $order['shipping_first_name'] = $address['shipping_first_name'];
        $order['shipping_last_name'] = $address['shipping_last_name'];
        $order['shipping_company_name'] = $address['shipping_company_name'];
        $order['shipping_country_id'] = $address['shipping_country_id'];
        $order['shipping_street_address'] = $address['shipping_street_address'];
        $order['shipping_city'] = $address['shipping_city'];
        $order['shipping_state'] = $address['shipping_state'];
        $order['shipping_zip_code'] = $address['shipping_zip_code'];
        $order['shipping_phone'] = $address['shipping_phone'];
        $order['shipping_email'] = $address['shipping_email'];
        $order['billing_first_name'] = $address['billing_first_name'];
        $order['billing_last_name'] = $address['billing_last_name'];
        $order['billing_company_name'] = $address['billing_company_name'];
        $order['billing_country_id'] = $address['billing_country_id'];
        $order['billing_street_address'] = $address['billing_street_address'];
        $order['billing_city'] = $address['billing_city'];
        $order['billing_state'] = $address['billing_state'];
        $order['billing_zip_code'] = $address['billing_zip_code'];
        $order['billing_phone'] = $address['billing_phone'];
        $order['billing_email'] = $address['billing_email'];
        $order['total_weight'] = $total_weight;
        $order['total_qty'] = $total_qty;
        $order['total_price'] = $total_price;
        $order['coupon_code'] = $coupon_code;
        $order['total_discount'] = $total_discount;
        $order['shipping_charge'] = $shipping_charge;
        $order['payable_amount'] = $payable_amount;

        $order['paid_amount'] = 0;
        $order['payment_method'] = 'Cash Payment';
        $order['payment_status'] = 'Unpaid';
        $order['payment_updated_at'] = Carbon::now();
        $order['order_datetime'] = Carbon::now();
        $order['order_status'] = 'Pending';
        $order['order_updated_at'] = Carbon::now();
        $order['tracking_no'] = time();
        $order['notes'] = $address['notes'];

        $order = Order::create($order);
        $orderDetails = [];
        foreach ($cart as $key => $item) {
            $orderDetails['order_id'] = $order->id;
            $orderDetails['product_id'] = $item['product_id'];
            $orderDetails['color_id'] = $item['color_id'];
            $orderDetails['size_id'] = $item['size_id'];
            $orderDetails['quantity'] = $item['quantity'];
            $orderDetails['price'] = $item['new_price'];
            OrderDetails::create($orderDetails);
        }
    
        $cart = Session::put('cart',[]);
        $coupon = Session::put('coupon','');

        return redirect('user/order-completed');

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
