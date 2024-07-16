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
        Schema::create('sub_children', function (Blueprint $table) {
            $table->id();
            $table->integer('admin_id');
            $table->integer('sub_cat_id');
            $table->string('title');
            $table->string('meta_title')->nullable();
            $table->longText('meta_description')->nullable();
            $table->longText('answer_question')->nullable();
            $table->string('slug');
            $table->enum('status',[1,0])->default(1);
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
        Schema::dropIfExists('sub_children');
    }
};
