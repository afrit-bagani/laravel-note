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
        Schema::create('cars', function (Blueprint $table) {
            $table->id();
            $table->foreignId('maker_id')->constrained()->nullOnDelete();
            $table->foreignId('model_id')->constrained()->nullOnDelete();
            $table->timestamp('years')->nullable();
            $table->string('price');
            $table->string('vin');
            $table->integer('mileage');
            $table->foreignId('car_type_id')->constrained()->nullOnDelete();
            $table->foreignId('fuel_type_id')->constrained()->nullOnDelete();
            $table->foreignId('user_id')->constrained()->nullOnDelete();
            $table->foreignId('city_id')->constrained()->nullOnDelete();
            $table->string('address', 100);
            $table->string('phone', 35);
            $table->longText('description')->nullable();
            $table->timestamp('published_at')->nullable();
            $table->nullableTimestamps();
            $table->timestamp('deleted_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cars');
    }
};
