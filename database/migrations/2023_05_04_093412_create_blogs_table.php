<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->integer('cat_id');
            $table->string('title');
            $table->string('short_desc');
            $table->longText('description')->nullable();
            $table->string('slug');
            $table->string('image');
            $table->integer('created_by');
            $table->tinyInteger('status')->default(0);
            $table->timestamps();
        });
    }
    public function down(): void
    {
        Schema::dropIfExists('blogs');
    }
};
