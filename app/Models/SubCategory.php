<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;
class SubCategory extends Model implements TranslatableContract
{
    use HasFactory;
    use Translatable;
    public $translatedAttributes = ['title', 'meta_title','meta_description'];

    protected $fillable = 
    [
        'admin_id',
        'cat_id',
        'title',
        'meta_title',
        'meta_description',
        'slug',
        'status',
    ];
    public function category()
    {
        return $this->belongsTo(Category::class, 'cat_id');
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product', 'sub_cat_id')->where('status','=',1);
    }
    
}
