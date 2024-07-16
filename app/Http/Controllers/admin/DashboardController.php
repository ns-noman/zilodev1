<?php

namespace App\Http\Controllers\admin;

use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Product;
use App\Models\ProductDetails;
use App\Models\User;
use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $data['totalOrders'] = Order::count('id');
        $data['newOrders'] = Order::whereDate('created_at',Carbon::today())->count('id');
        $data['pendingOrders'] = Order::where('order_status','=','Pending')->count('id');
        $data['totalSales'] = Order::where('order_status','=','Delivered')->sum('total_price');
        $data['totalProducts'] = Product::count('id');
        $data['activeProducts'] = Product::where('status','=',1)->count('id');
        $data['totalCustomers'] = User::count('id');
        $data['newCustomers'] = User::whereMonth('created_at', Carbon::now()->month)->whereYear('created_at', Carbon::now()->year)->count('id');

        $data['latestOrders'] = Order::with('user')->latest()->limit(8)->get();

        return view('admin.index', compact('data'));
    }
}

