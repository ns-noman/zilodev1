<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductDetails extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'product_id',
        'color_id',
        'size_id',
        'image',
        'stock',
    ];

    public function color()
    {
        return $this->belongsTo('App\Models\Color', 'color_id')->select('id','name');
    }
    public function size()
    {
        return $this->belongsTo('App\Models\Size', 'size_id')->select('id','name','code');
    }
}
