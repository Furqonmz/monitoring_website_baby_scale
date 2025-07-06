<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Anak;
use App\Models\Pengukuran;
use Carbon\Carbon;

class PengukuranSeeder extends Seeder
{
    public function run(): void
    {
       // Buat anak dummy laki-laki umur 1 tahun 5 bulan
        // $anak = Anak::create([
        //     'nik' => '1234567890123456',
        //     'custom_id' => 'B001',
        //     'api_key' => null,
        //     'nama' => 'Budi',
        //     'jenis_kelamin' => 'L',
        //     'tanggal_lahir' => now()->subYears(0)->subMonths(5)->format('Y-m-d'),
        //     'nama_ayah' => 'Pak Budi',
        //     'nama_ibu' => 'Bu Budi',
        //     'no_wa' => '081234567890',
        //     'email' => 'budi@example.com'
        // ]);


        // Buat pengukuran baru untuk anak tersebut
        // Pengukuran::create([
        //     'anak_id' => 240617001,
        //     'berat' => 9,
        //     'tinggi' => 70.7,
        // ]);

        //Input data anak pake Seeder
        $anak = Anak::find(6282119171960); // Ambil data anak yang akan diukur
        $tanggal_lahir = Carbon::parse($anak->tanggal_lahir);
        $tanggal_pengukuran = Carbon::now();

        $umur =  round($tanggal_lahir->diffInDays($tanggal_pengukuran) / 30, 1);

        Pengukuran::create([
            'anak_id' => $anak->id,
            'berat' => 8,
            'tinggi' => 85,
            'umur' => $umur,
        ]);

        // DB::statement("
        //     UPDATE pengukuran
        //     JOIN Klasifikasi_pengukuran ON klasifikasi_pengukuran.pengukuran_id = pengukuran_id
        //     SET pengukuran.created_at = klasifikasi_pengukuran.created_at
        //     WHERE pengukuran.created_at IS NULL
        // ");
    }
}
