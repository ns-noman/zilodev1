<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class SubChild extends Model implements TranslatableContract
{
    use HasFactory; 
    use Translatable;
    public $translatedAttributes = ['title', 'meta_title','meta_description','answer_question'];
    protected $fillable = 
    [
        'admin_id',
        'sub_cat_id',
        'title',
        'meta_title',
        'meta_description',
        'answer_question',
        'slug',
        'status',
    ];
    public function subcategory()
    {
        return $this->belongsTo(SubCategory::class, 'sub_cat_id');
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product', 'sub_child_id')->where('status','=',1);
    }
}
