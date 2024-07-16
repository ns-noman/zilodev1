<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Product extends Model implements TranslatableContract
{
    use HasFactory;
    use Translatable;
    public $translatedAttributes = 
    [
        'product_id',
        'locale',
        'product_title',
        'short_desc',
        'description',
        'meta_title',
        'meta_description',
        'meta_keywords',
    ];
    
    protected $fillable = 
    [
        'cat_id',
        'sub_cat_id',
        'sub_child_id',
        'product_title',
        'product_code',
        'old_price',
        'new_price',
        'short_desc',
        'description',
        'slug',
        'product_image',
        'product_image_back',
        'meta_title',
        'meta_description',
        'meta_keywords',
        'total_hits',
        'total_sale',
        'product_weight',
        'trending_type',
        'best_seller',
        'new_arrival',
        'home_feature',
        'status',
    ];

    public function category()
    {
        return $this->belongsTo('App\Models\Category', 'cat_id')->select('id','title');
    }
    public function sub_category()
    {
        return $this->belongsTo('App\Models\SubCategory', 'sub_cat_id')->select('id','title');
    }
    public function sub_child()
    {
        return $this->belongsTo('App\Models\SubChild', 'sub_child_id')->select('id','title');
    }
    public function details()
    {
        return $this->belongsTo('App\Models\ProductDetails', 'product_id')->select('id','stock');
    }
    public function avgrating()
    {
        return $this->hasMany(Review::class,'product_id')->select('id','product_id','rating');
    }
    public function product_details()
    {
        return $this->hasMany(ProductDetails::class,'product_id');
    }
}
