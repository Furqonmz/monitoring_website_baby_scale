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
        Schema::create('pengukuran', function (Blueprint $table) {
            $table->id();  // Kolom ID dengan auto increment
            $table->string('anak_id', 20);
            $table->foreign('anak_id')->references('id')->on('anak')->onDelete('cascade');  // Relasi dengan tabel 'anak'
            $table->decimal('berat', 5, 2);
            $table->decimal('tinggi', 5, 2);
            $table->string('umur')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //Schema::dropIfExists('pengukuran');
        // Schema::table('pengukuran', function (Blueprint $table) {
        //     $table->dropColumn('umur'); // Hapus kolom umur saat rollback
        // });
    }
};
