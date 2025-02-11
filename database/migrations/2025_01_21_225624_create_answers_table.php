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
        Schema::create('answers', function (Blueprint $table) {
            $table->id();
            $table->string('userId')->nullable();
            $table->string('displayName')->nullable();
            $table->longText('Question_1')->nullable();
            $table->longText('Ability_Desc_1')->nullable();
            $table->longText('Question_2')->nullable();
            $table->longText('Ability_Desc_2')->nullable();
            $table->longText('Question_3')->nullable();
            $table->longText('Question_4')->nullable();
            $table->longText('Question_5')->nullable();
            $table->longText('Question_6')->nullable();
            $table->longText('Question_7')->nullable();
            $table->longText('Question_8')->nullable();
            $table->longText('Question_9')->nullable();
            $table->longText('Question_10')->nullable();
            $table->longText('Question_11')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('answers');
    }
};
