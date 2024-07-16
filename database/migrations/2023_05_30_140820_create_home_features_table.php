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
        Schema::create('home_features', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->string('feature_title', 200);
            $table->string('feature_image', 200);
            $table->tinyInteger('feature_size');
            $table->string('feature_url', 300);
            $table->integer('feature_serial');
            $table->tinyInteger('feature_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('home_features');
    }
};
