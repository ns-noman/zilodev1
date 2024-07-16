<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('order_no');
            $table->integer('user_id');


            $table->string('shipping_first_name')->nullable();
            $table->string('shipping_last_name')->nullable();
            $table->string('shipping_company_name')->nullable();
            $table->integer('shipping_country_id')->nullable();
            $table->string('shipping_street_address')->nullable();
            $table->string('shipping_city')->nullable();
            $table->string('shipping_state')->nullable();
            $table->string('shipping_zip_code')->nullable();
            $table->string('shipping_phone')->nullable();
            $table->string('shipping_email')->nullable();

            $table->string('billing_first_name')->nullable();
            $table->string('billing_last_name')->nullable();
            $table->string('billing_company_name')->nullable();
            $table->integer('billing_country_id')->nullable();
            $table->string('billing_street_address')->nullable();
            $table->string('billing_city')->nullable();
            $table->string('billing_state')->nullable();
            $table->string('billing_zip_code')->nullable();
            $table->string('billing_phone')->nullable();
            $table->string('billing_email')->nullable();



            $table->double('total_weight',20,2)->default(0.00);
            $table->double('total_qty',20,2)->default(0.00);
            $table->double('total_price',20,2)->default(0.00);
            $table->string('coupon_code')->nullable();
            $table->double('total_discount',20,2)->default(0.00);
            $table->double('shipping_charge',20,2)->default(0.00);
            $table->double('payable_amount',20,2)->default(0.00);

            $table->double('paid_amount',20,2)->default(0.00);
            $table->string('payment_method', 100)->nullable();
            $table->string('payment_status', 100)->nullable();
            $table->dateTime('payment_updated_at')->nullable();

            $table->dateTime('order_datetime')->nullable();
            $table->string('order_status', 100)->nullable();
            $table->dateTime('order_updated_at')->nullable();

            $table->string('tracking_no', 200)->nullable();
            $table->string('shipped_by', 200)->nullable();
            $table->string('shipping_option', 100)->nullable();
            $table->string('order_from', 100)->nullable();
            $table->longText('notes')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('orders');
    }
};
