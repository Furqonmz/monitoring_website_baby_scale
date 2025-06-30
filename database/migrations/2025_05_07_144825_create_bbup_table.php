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
        Schema::create('bbup', function (Blueprint $table) {
            $table->id();
            $table->integer('month');
            $table->float('l');
            $table->float('m');
            $table->float('s');
            $table->float('min_tiga');
            $table->float('min_dua');
            $table->float('min_satu');
            $table->float('median');
            $table->float('satu');
            $table->float('dua');
            $table->float('tiga');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bbup');
    }
};
