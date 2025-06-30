<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pbul extends Model
{
    use HasFactory;

    protected $table = 'pbul';
    protected $fillable = ['year', 'month', 'l', 'm', 's', 'sd', 'min_tiga', 'min_dua', 'min_satu', 'median', 'satu', 'dua', 'tiga'];
   
    // public static function calculateZScore($y, $month)
    // {
    //     // Ambil data L, M, S berdasarkan bulan
    //     $data = self::where('month', $month)->first();

    //     if (!$data) {
    //         return null; // Data tidak ditemukan
    //     }

    //     $L = $data->l;
    //     $M = $data->m;
    //     $S = $data->s;

    //     // Hitung Z-score
    //     $zScore = (pow(($y / $M), $L) - 1) / ($S * $L);

    //     return $zScore;
    // }
}
