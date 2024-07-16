<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryTranslation extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'cat_id',
        'locale',
        'title',
        'meta_title',
        'meta_description',
    ];
}
