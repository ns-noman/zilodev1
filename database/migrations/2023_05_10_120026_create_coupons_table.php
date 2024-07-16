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
        Schema::create('coupons', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->string('coupon_type');
            $table->string('coupon_code');
            $table->double('discount_perc');
            $table->date('start_date');
            $table->date('end_date');
            $table->string('coupon_img');
            $table->tinyInteger('home_view');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coupons');
    }
};
