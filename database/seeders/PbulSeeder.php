<?php

namespace Database\Seeders;

use App\Models\Pbul;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PbulSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Pbul::insert([
            ['month' => 0, 'l' => 1, 'm' => 49.8842, 's' => 0.03795, 'sd' => 1.8931, 'min_tiga' => 44.2, 'min_dua' => 46.1, 'min_satu' => 48.0, 'median' => 49.9, 'satu' => 51.8, 'dua' => 53.7, 'tiga' => 55.6],
            ['month' => 1, 'l' => 1, 'm' => 54.7244, 's' => 0.03557, 'sd' => 1.9465, 'min_tiga' => 48.9, 'min_dua' => 50.8, 'min_satu' => 52.8, 'median' => 54.7, 'satu' => 56.7, 'dua' => 58.6, 'tiga' => 60.6],
            ['month' => 2, 'l' => 1, 'm' => 58.4249, 's' => 0.03424, 'sd' => 2.0005, 'min_tiga' => 52.4, 'min_dua' => 54.4, 'min_satu' => 56.4, 'median' => 58.4, 'satu' => 60.4, 'dua' => 62.4, 'tiga' => 64.4],
            ['month' => 3, 'l' => 1, 'm' => 61.4292, 's' => 0.03328, 'sd' => 2.0444, 'min_tiga' => 55.3, 'min_dua' => 57.3, 'min_satu' => 59.4, 'median' => 61.4, 'satu' => 63.5, 'dua' => 65.5, 'tiga' => 67.6],
            ['month' => 4, 'l' => 1, 'm' => 63.8860, 's' => 0.03257, 'sd' => 2.0808, 'min_tiga' => 57.6, 'min_dua' => 59.7, 'min_satu' => 61.8, 'median' => 63.9, 'satu' => 66.0, 'dua' => 68.0, 'tiga' => 70.1],
            ['month' => 5, 'l' => 1, 'm' => 65.9026, 's' => 0.03204, 'sd' => 2.1115, 'min_tiga' => 59.6, 'min_dua' => 61.7, 'min_satu' => 63.8, 'median' => 65.9, 'satu' => 68.0, 'dua' => 70.1, 'tiga' => 72.2],
            ['month' => 6, 'l' => 1, 'm' => 67.6236, 's' => 0.03165, 'sd' => 2.1403, 'min_tiga' => 61.2, 'min_dua' => 63.3, 'min_satu' => 65.5, 'median' => 67.6, 'satu' => 69.8, 'dua' => 71.9, 'tiga' => 74.0],
            ['month' => 7, 'l' => 1, 'm' => 69.1645, 's' => 0.03139, 'sd' => 2.1711, 'min_tiga' => 62.7, 'min_dua' => 64.8, 'min_satu' => 67.0, 'median' => 69.2, 'satu' => 71.3, 'dua' => 73.5, 'tiga' => 75.7],
            ['month' => 8, 'l' => 1, 'm' => 70.5994, 's' => 0.03124, 'sd' => 2.2055, 'min_tiga' => 64.0, 'min_dua' => 66.2, 'min_satu' => 68.4, 'median' => 70.6, 'satu' => 72.8, 'dua' => 75.0, 'tiga' => 77.2],
            ['month' => 9, 'l' => 1, 'm' => 71.9687, 's' => 0.03117, 'sd' => 2.2433, 'min_tiga' => 65.2, 'min_dua' => 67.5, 'min_satu' => 69.7, 'median' => 72.0, 'satu' => 74.2, 'dua' => 76.5, 'tiga' => 78.7],
            ['month' => 10, 'l' => 1, 'm' => 73.2812, 's' => 0.03118, 'sd' => 2.2849, 'min_tiga' => 66.4, 'min_dua' => 68.7, 'min_satu' => 71.0, 'median' => 73.3, 'satu' => 75.6, 'dua' => 77.9, 'tiga' => 80.1],
            ['month' => 11, 'l' => 1, 'm' => 74.5388, 's' => 0.03125, 'sd' => 2.3293, 'min_tiga' => 67.6, 'min_dua' => 69.9, 'min_satu' => 72.2, 'median' => 74.5, 'satu' => 76.9, 'dua' => 79.2, 'tiga' => 81.5],
            ['month' => 12, 'l' => 1, 'm' => 75.7488, 's' => 0.03137, 'sd' => 2.3762, 'min_tiga' => 68.6, 'min_dua' => 71.0, 'min_satu' => 73.4, 'median' => 75.7, 'satu' => 78.1, 'dua' => 80.5, 'tiga' => 82.9],
        ]);
    }
}
