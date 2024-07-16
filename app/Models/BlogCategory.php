<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class BlogCategory extends Model implements TranslatableContract
{
    use HasFactory;    
    use Translatable;
    public $translatedAttributes = ['cat_name','cat_description'];
    protected $table='blog_categories';
    protected $fillable = [
        'cat_name',
        'cat_url',
        'cat_description',
        'cat_status',
    ];

    public function category_post()
    {
        return $this->hasMany(Blog::class, 'cat_id')->where('status','=',1);
    }
}
