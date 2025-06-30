<?php

namespace Database\Seeders;

use App\Models\Bbup;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BbupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Bbup::insert([
            ['month' => 0, 'l' => 0.3809, 'm' => 3.2322, 's' => 0.14171, 'min_tiga' => 2.0, 'min_dua' => 2.4, 'min_satu' => 2.8, 'median' => 3.2, 'satu' => 3.7, 'dua' => 4.2, 'tiga' => 4.8],
            ['month' => 1, 'l' => 0.1714, 'm' => 4.1873, 's' => 0.13724, 'min_tiga' => 2.7, 'min_dua' => 3.2, 'min_satu' => 3.6, 'median' => 4.2, 'satu' => 4.8, 'dua' => 5.5, 'tiga' => 6.2],
            ['month' => 2, 'l' => 0.0962, 'm' => 5.1282, 's' => 0.13, 'min_tiga' => 3.4, 'min_dua' => 3.9, 'min_satu' => 4.5, 'median' => 5.1, 'satu' => 5.8, 'dua' => 6.6, 'tiga' => 7.5],
            ['month' => 3, 'l' => 0.0402, 'm' => 5.8458, 's' => 0.12619, 'min_tiga' => 4.0, 'min_dua' => 4.5, 'min_satu' => 5.2, 'median' => 5.8, 'satu' => 6.6, 'dua' => 7.5, 'tiga' => 8.5],
            ['month' => 4, 'l' => -0.005, 'm' => 6.4237, 's' => 0.12402, 'min_tiga' => 4.4, 'min_dua' => 5.0, 'min_satu' => 5.7, 'median' => 6.4, 'satu' => 7.3, 'dua' => 8.2, 'tiga' => 9.3],
            ['month' => 5, 'l' => -0.043, 'm' => 6.8985, 's' => 0.12274, 'min_tiga' => 4.8, 'min_dua' => 5.4, 'min_satu' => 6.1, 'median' => 6.9, 'satu' => 7.8, 'dua' => 8.8, 'tiga' => 10.0],
            ['month' => 6, 'l' => -0.0756, 'm' => 7.297, 's' => 0.12204, 'min_tiga' => 5.1, 'min_dua' => 5.7, 'min_satu' => 6.5, 'median' => 7.3, 'satu' => 8.2, 'dua' => 9.3, 'tiga' => 10.6],
            ['month' => 7, 'l' => -0.1039, 'm' => 7.6422, 's' => 0.12178, 'min_tiga' => 5.3, 'min_dua' => 6.0, 'min_satu' => 6.8, 'median' => 7.6, 'satu' => 8.6, 'dua' => 9.8, 'tiga' => 11.1],
            ['month' => 8, 'l' => -0.1288, 'm' => 7.9487, 's' => 0.12181, 'min_tiga' => 5.6, 'min_dua' => 6.3, 'min_satu' => 7.0, 'median' => 7.9, 'satu' => 9.0, 'dua' => 10.2, 'tiga' => 11.6],
            ['month' => 9, 'l' => -0.1507, 'm' => 8.2254, 's' => 0.12199, 'min_tiga' => 5.8, 'min_dua' => 6.5, 'min_satu' => 7.3, 'median' => 8.2, 'satu' => 9.3, 'dua' => 10.5, 'tiga' => 12.0],
            ['month' => 10, 'l' => -0.17, 'm' => 8.48, 's' => 0.12223, 'min_tiga' => 5.9, 'min_dua' => 6.7, 'min_satu' => 7.5, 'median' => 8.5, 'satu' => 9.6, 'dua' => 10.9, 'tiga' => 12.4],
            ['month' => 11, 'l' => -0.1872, 'm' => 8.7192, 's' => 0.12247, 'min_tiga' => 6.1, 'min_dua' => 6.9, 'min_satu' => 7.7, 'median' => 8.7, 'satu' => 9.9, 'dua' => 11.2, 'tiga' => 12.8],
            ['month' => 12, 'l' => -0.2024, 'm' => 8.9481, 's' => 0.12268, 'min_tiga' => 6.3, 'min_dua' => 7.0, 'min_satu' => 7.9, 'median' => 8.9, 'satu' => 10.1, 'dua' => 11.5, 'tiga' => 13.1],
        ]);
    }
}
