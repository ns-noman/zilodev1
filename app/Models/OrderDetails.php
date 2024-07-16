<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'order_id',
        'product_id',
        'color_id',
        'size_id',
        'quantity',
        'price',
    ];
    public function color()
    {
        return $this->belongsTo(Color::class,'color_id')->select('id','name');
    }
    public function size()
    {
        return $this->belongsTo(Size::class,'size_id')->select('id','code');
    }
    public function product()
    {
        return $this->belongsTo(Product::class,'product_id')->select('id','product_code','product_title','slug');
    }
}
