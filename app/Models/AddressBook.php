<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddressBook extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'user_id',
        'billing_first_name',
        'billing_last_name',
        'billing_company_name',
        'billing_country_id',
        'billing_street_address',
        'billing_city',
        'billing_state',
        'billing_zip_code',
        'billing_phone',
        'billing_email',
        'shipping_first_name',
        'shipping_last_name',
        'shipping_company_name',
        'shipping_country_id',
        'shipping_street_address',
        'shipping_city',
        'shipping_state',
        'shipping_zip_code',
        'shipping_phone',
        'shipping_email',
        'notes',
    ];
}
