<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('address_books', function (Blueprint $table) {
            $table->id();


            $table->integer('user_id');

            $table->string('billing_first_name');
            $table->string('billing_last_name');
            $table->string('billing_company_name')->nullable();
            $table->integer('billing_country_id');
            $table->string('billing_street_address');
            $table->string('billing_city');
            $table->string('billing_state');
            $table->string('billing_zip_code');
            $table->string('billing_phone');
            $table->string('billing_email');

            $table->string('shipping_first_name');
            $table->string('shipping_last_name');
            $table->string('shipping_company_name')->nullable();
            $table->integer('shipping_country_id');
            $table->string('shipping_street_address');
            $table->string('shipping_city');
            $table->string('shipping_state');
            $table->string('shipping_zip_code');
            $table->string('shipping_phone');
            $table->string('shipping_email');
            
            $table->string('notes')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('address_books');
    }
};
