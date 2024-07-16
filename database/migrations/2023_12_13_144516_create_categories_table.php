<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->integer('admin_id');
            $table->string('title');
            $table->string('meta_title')->nullable();
            $table->longText('meta_description')->nullable();
            $table->string('image',50);
            $table->string('slug');
            $table->tinyInteger('best_seller',[1, 0])->default(0);
            $table->enum('status',[1, 0])->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
};
