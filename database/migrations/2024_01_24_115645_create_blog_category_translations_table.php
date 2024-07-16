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
        Schema::create('blog_category_translations', function (Blueprint $table) {
            $table->id();

            $table->foreignId('blog_category_id')->unsigned();
            $table->string('locale')->index();
            
            $table->string('cat_name');
            $table->string('cat_description')->nullable();

            $table->unique(['blog_category_id', 'locale']);
            $table->foreign('blog_category_id')->references('id')->on('blog_categories')->onDelete('cascade');
            
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
        Schema::dropIfExists('blog_category_translations');
    }
};
