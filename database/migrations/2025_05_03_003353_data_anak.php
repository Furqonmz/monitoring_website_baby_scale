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
        Schema::create('anak', function (Blueprint $table) {
            // $table->unsignedBigInteger('id')->primary(); // Kolom untuk custom ID
            $table->string('id', 20)->primary(); //ini nanti hapus kalau misal mau pake id ultah yah
            $table->string('nik')->unique();
            $table->string('api_key')->unique()->nullable();
            $table->string('nama', 100);
            $table->string('jenis_kelamin', 10);
            $table->date('tanggal_lahir');
            $table->string('nama_ayah', 100);
            $table->string('nama_ibu', 100);
            $table->string('email', 100);
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('anak', function (Blueprint $table) {
            $table->dropColumn('api_key');
        });
    }
};
