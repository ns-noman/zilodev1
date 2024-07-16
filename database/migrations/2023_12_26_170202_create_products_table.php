<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            
            $table->integer('cat_id');
            $table->integer('sub_cat_id');
            $table->integer('sub_child_id')->default(0);
            $table->string('product_title');
            $table->string('product_code');
			$table->double('old_price',20,2)->nullable();
			$table->double('new_price',20,2);
            $table->double('product_weight',10,2);
            $table->string('short_desc')->nullable();
            $table->longText('description')->nullable();
            $table->string('slug');
            $table->string('product_image');
            $table->string('product_image_back');
            $table->string('meta_title')->nullable();
            $table->longText('meta_description')->nullable();
            $table->string('meta_keywords')->nullable();
            $table->integer('total_hits')->default(0);
            $table->integer('total_sale')->default(0);
            $table->tinyInteger('trending_type')->default(0);
            $table->tinyInteger('best_seller')->default(0);
            $table->tinyInteger('new_arrival')->default(0);
            $table->tinyInteger('home_feature')->default(0);
            $table->tinyInteger('status')->default(1);

            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
};
