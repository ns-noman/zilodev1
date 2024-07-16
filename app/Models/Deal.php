<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Deal extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'product_id',
        'start_at',
        'end_at',
        'status',
    ];
    public function product()
    {
        return $this->belongsTo(Product::class,'product_id')->with('product_details');
    }
}
