<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeFeature extends Model
{
    use HasFactory;
    protected $fillable = [        
        'feature_title',
        'feature_image',
        'feature_size',
        'feature_url',
        'feature_serial',
        'feature_status'
    ];
}
