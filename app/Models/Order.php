<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'order_no',
        'user_id',
        'shipping_first_name',
        'shipping_last_name',
        'shipping_company_name',
        'shipping_country_id',
        'shipping_street_address',
        'shipping_city',
        'shipping_state',
        'shipping_zip_code',
        'shipping_phone',
        'shipping_email',
        'billing_first_name',
        'billing_last_name',
        'billing_company_name',
        'billing_country_id',
        'billing_street_address',
        'billing_city',
        'billing_state',
        'billing_zip_code',
        'billing_phone',
        'billing_email',
        'total_weight',
        'total_qty',
        'total_price',
        'coupon_code',
        'total_discount',
        'shipping_charge',
        'payable_amount',
        'paid_amount',
        'payment_method',
        'payment_status',
        'payment_updated_at',
        'order_datetime',
        'order_status',
        'order_updated_at',
        'tracking_no',
        'shipped_by',
        'shipping_option',
        'order_from',
        'notes',
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id')->select('id','name','email','phone');
    }
    public function order_details()
    {
        return $this->hasMany(OrderDetails::class,'order_id')->with('color','size','product');
    }
    public function shipping_country()
    {
        return $this->belongsTo(Country::class,'shipping_country_id')->select('id','country_name');
    }
    public function billing_country()
    {
        return $this->belongsTo(Country::class,'billing_country_id')->select('id','country_name');
    }
}
