<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory;
    protected $fillable = [
        'coupon_type',
        'coupon_code',
        'discount_perc',
        'start_date',
        'end_date',
        'coupon_img',
        'home_view',
    ];
}
