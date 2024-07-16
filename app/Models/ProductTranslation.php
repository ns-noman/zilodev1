<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductTranslation extends Model
{
    use HasFactory;
    protected $fillable = 
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
}
