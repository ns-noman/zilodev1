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
        Schema::create('sub_child_translations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sub_child_id')->unsigned();
            $table->string('locale')->index();
            
            $table->string('title');
            $table->string('meta_title')->nullable();
            $table->longText('meta_description')->nullable();
            $table->longText('answer_question')->nullable();
            
            $table->unique(['sub_child_id', 'locale']);
            $table->foreign('sub_child_id')->references('id')->on('sub_children')->onDelete('cascade');
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
        Schema::dropIfExists('sub_child_translations');
    }
};
