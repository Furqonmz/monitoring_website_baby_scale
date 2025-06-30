<?php

namespace Database\Seeders;

use App\Models\Bbul;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BbulSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Bbul::insert([
            ['month' => 0, 'l' => 0.3487, 'm' => 3.3464, 's' => 0.14602, 'min_tiga' => 2.1, 'min_dua' => 2.5, 'min_satu' => 2.9, 'median' => 3.3, 'satu' => 3.9, 'dua' => 4.4, 'tiga' => 5.0],
            ['month' => 1, 'l' => 0.2297, 'm' => 4.4709, 's' => 0.13395, 'min_tiga' => 2.9, 'min_dua' => 3.4, 'min_satu' => 3.9, 'median' => 4.5, 'satu' => 5.1, 'dua' => 5.8, 'tiga' => 6.6],
            ['month' => 2, 'l' => 0.197, 'm' => 5.5675, 's' => 0.12385, 'min_tiga' => 3.8, 'min_dua' => 4.3, 'min_satu' => 4.9, 'median' => 5.6, 'satu' => 6.3, 'dua' => 7.1, 'tiga' => 8.0],
            ['month' => 3, 'l' => 0.1738, 'm' => 6.3762, 's' => 0.11727, 'min_tiga' => 4.4, 'min_dua' => 5.0, 'min_satu' => 5.7, 'median' => 6.4, 'satu' => 7.2, 'dua' => 8.0, 'tiga' => 9.0],
            ['month' => 4, 'l' => 0.1553, 'm' => 7.0023, 's' => 0.11316, 'min_tiga' => 4.9, 'min_dua' => 5.6, 'min_satu' => 6.2, 'median' => 7.0, 'satu' => 7.8, 'dua' => 8.7, 'tiga' => 9.7],
            ['month' => 5, 'l' => 0.1395, 'm' => 7.5105, 's' => 0.1108, 'min_tiga' => 5.3, 'min_dua' => 6.0, 'min_satu' => 6.7, 'median' => 7.5, 'satu' => 8.4, 'dua' => 9.3, 'tiga' => 10.4],
            ['month' => 6, 'l' => 0.1257, 'm' => 7.934, 's' => 0.10958, 'min_tiga' => 5.7, 'min_dua' => 6.4, 'min_satu' => 7.1, 'median' => 7.9, 'satu' => 8.8, 'dua' => 9.8, 'tiga' => 10.9],
            ['month' => 7, 'l' => 0.1134, 'm' => 8.297, 's' => 0.10902, 'min_tiga' => 5.9, 'min_dua' => 6.7, 'min_satu' => 7.4, 'median' => 8.3, 'satu' => 9.2, 'dua' => 10.3, 'tiga' => 11.4],
            ['month' => 8, 'l' => 0.1021, 'm' => 8.6151, 's' => 0.10882, 'min_tiga' => 6.2, 'min_dua' => 6.9, 'min_satu' => 7.7, 'median' => 8.6, 'satu' => 9.6, 'dua' => 10.7, 'tiga' => 11.9],
            ['month' => 9, 'l' => 0.0917, 'm' => 8.9014, 's' => 0.10881, 'min_tiga' => 6.4, 'min_dua' => 7.1, 'min_satu' => 8.0, 'median' => 8.9, 'satu' => 9.9, 'dua' => 11.0, 'tiga' => 12.3],
            ['month' => 10, 'l' => 0.082, 'm' => 9.1649, 's' => 0.10891, 'min_tiga' => 6.6, 'min_dua' => 7.4, 'min_satu' => 8.2, 'median' => 9.2, 'satu' => 10.2, 'dua' => 11.4, 'tiga' => 12.7],
            ['month' => 11, 'l' => 0.073, 'm' => 9.4122, 's' => 0.10906, 'min_tiga' => 6.8, 'min_dua' => 7.6, 'min_satu' => 8.4, 'median' => 9.4, 'satu' => 10.5, 'dua' => 11.7, 'tiga' => 13.0],
            ['month' => 12, 'l' => 0.0644, 'm' => 9.6479, 's' => 0.10925, 'min_tiga' => 6.9, 'min_dua' => 7.7, 'min_satu' => 8.6, 'median' => 9.6, 'satu' => 10.8, 'dua' => 12.0, 'tiga' => 13.3],
        ]);

    }
}
