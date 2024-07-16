<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Blog extends Model implements TranslatableContract
{   
    use HasFactory;

    use Translatable;
    public $translatedAttributes = ['title', 'short_desc','description'];

    protected $table = 'blogs';
    protected $fillable = 
    [
        'cat_id',
        'title',
        'short_desc',
        'description',
        'slug',
        'image',
        'created_by',
        'status',
    ];
    public function blogcategory()
    {
        return $this->belongsTo(BlogCategory::class, 'cat_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
