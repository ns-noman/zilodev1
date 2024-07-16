<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubChildTranslation extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'sub_child_id',
        'locale',
        'title',
        'meta_title',
        'meta_description',
        'answer_question',
    ];
}
