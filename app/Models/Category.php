<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;


class Category extends Model implements TranslatableContract
{
    use HasFactory;
    use Translatable;
    public $translatedAttributes = ['title', 'meta_title','meta_description'];
    protected $fillable = 
    [
        'admin_id',
        'title',
        'meta_title',
        'meta_description',
        'image',
        'slug',
        'best_seller',
        'status',
    ];
    
    public function products()
    {
        return $this->hasMany('App\Models\Product', 'cat_id')->where('status','=',1);
    }
    public function subcategoris()
    {
        return $this->hasMany(SubCategory::class,'cat_id')->where('status','=',1)->limit(4);
    }
}
