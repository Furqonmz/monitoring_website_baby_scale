<?php

namespace Database\Seeders;

use App\Models\Pbup;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PbupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Pbup::insert([
            ['month' => 0, 'l' => 1, 'm' => 49.1477, 's' => 0.03790, 'sd' => 1.8627, 'min_tiga' => 43.6, 'min_dua' => 45.4, 'min_satu' => 47.3, 'median' => 49.1, 'satu' => 51.0, 'dua' => 52.9, 'tiga' => 54.7],
            ['month' => 1, 'l' => 1, 'm' => 53.6872, 's' => 0.03640, 'sd' => 1.9542, 'min_tiga' => 47.8, 'min_dua' => 49.8, 'min_satu' => 51.7, 'median' => 53.7, 'satu' => 55.6, 'dua' => 57.6, 'tiga' => 59.5],
            ['month' => 2, 'l' => 1, 'm' => 57.0673, 's' => 0.03568, 'sd' => 2.0362, 'min_tiga' => 51.0, 'min_dua' => 53.0, 'min_satu' => 55.0, 'median' => 57.1, 'satu' => 59.1, 'dua' => 61.1, 'tiga' => 63.2],
            ['month' => 3, 'l' => 1, 'm' => 59.8029, 's' => 0.03520, 'sd' => 2.1051, 'min_tiga' => 53.5, 'min_dua' => 55.6, 'min_satu' => 57.7, 'median' => 59.8, 'satu' => 61.9, 'dua' => 64.0, 'tiga' => 66.1],
            ['month' => 4, 'l' => 1, 'm' => 62.0899, 's' => 0.03486, 'sd' => 2.1645, 'min_tiga' => 55.6, 'min_dua' => 57.8, 'min_satu' => 59.9, 'median' => 62.1, 'satu' => 64.3, 'dua' => 66.4, 'tiga' => 68.6],
            ['month' => 5, 'l' => 1, 'm' => 64.0301, 's' => 0.03463, 'sd' => 2.2174, 'min_tiga' => 57.4, 'min_dua' => 59.6, 'min_satu' => 61.8, 'median' => 64.0, 'satu' => 66.2, 'dua' => 68.5, 'tiga' => 70.7],
            ['month' => 6, 'l' => 1, 'm' => 65.7311, 's' => 0.03448, 'sd' => 2.2664, 'min_tiga' => 58.9, 'min_dua' => 61.2, 'min_satu' => 63.5, 'median' => 65.7, 'satu' => 68.0, 'dua' => 70.3, 'tiga' => 72.5],
            ['month' => 7, 'l' => 1, 'm' => 67.2873, 's' => 0.03441, 'sd' => 2.3154, 'min_tiga' => 60.3, 'min_dua' => 62.7, 'min_satu' => 65.0, 'median' => 67.3, 'satu' => 69.6, 'dua' => 71.9, 'tiga' => 74.2],
            ['month' => 8, 'l' => 1, 'm' => 68.7498, 's' => 0.03440, 'sd' => 2.3650, 'min_tiga' => 61.7, 'min_dua' => 64.0, 'min_satu' => 66.4, 'median' => 68.7, 'satu' => 71.1, 'dua' => 73.5, 'tiga' => 75.8],
            ['month' => 9, 'l' => 1, 'm' => 70.1435, 's' => 0.03444, 'sd' => 2.4157, 'min_tiga' => 62.9, 'min_dua' => 65.3, 'min_satu' => 67.7, 'median' => 70.1, 'satu' => 72.6, 'dua' => 75.0, 'tiga' => 77.4],
            ['month' => 10, 'l' => 1, 'm' => 71.4818, 's' => 0.03452, 'sd' => 2.4676, 'min_tiga' => 64.1, 'min_dua' => 66.5, 'min_satu' => 69.0, 'median' => 71.5, 'satu' => 73.9, 'dua' => 76.4, 'tiga' => 78.9],
            ['month' => 11, 'l' => 1, 'm' => 72.7710, 's' => 0.03464, 'sd' => 2.5208, 'min_tiga' => 65.2, 'min_dua' => 67.7, 'min_satu' => 70.3, 'median' => 72.8, 'satu' => 75.3, 'dua' => 77.8, 'tiga' => 80.3],
            ['month' => 12, 'l' => 1, 'm' => 74.0150, 's' => 0.03479, 'sd' => 2.5750, 'min_tiga' => 66.3, 'min_dua' => 68.9, 'min_satu' => 71.4, 'median' => 74.0, 'satu' => 76.6, 'dua' => 79.2, 'tiga' => 81.7],
        ]);
    }
}
