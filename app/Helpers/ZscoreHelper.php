<?php

if (!function_exists('klasifikasiZScoreBBU')) {
    function klasifikasiZScoreBBU($nilai, $ref)
    {
        // Hitung z-score pakai rumus WHO
        if ($ref->l != 0) {
            $z = (pow(($nilai / $ref->m), $ref->l) - 1) / ($ref->l * $ref->s);
        } else {
            $z = log($nilai / $ref->m) / $ref->s;
        }

        // Klasifikasi berdasarkan z-score WHO
        if ($z < -3) return 'Berat badan sangat kurang';
        if ($z >= -3 && $z < -2) return 'Berat badan kurang';
        if ($z >= -2 && $z <= 1) return 'Berat badan normal';
        if ($z > 1 && $z <= 2) return 'Risiko berat badan berlebih';
        if ($z > 2) return 'Berat badan lebih';
        return '-';
    }
}


if (!function_exists('klasifikasiZScorePBU')) {
    function klasifikasiZScorePBU($nilai, $ref)
    {
        if ($ref->l != 0) {
            $z = (pow(($nilai / $ref->m), $ref->l) - 1) / ($ref->l * $ref->s);
        } else {
            $z = log($nilai / $ref->m) / $ref->s;
        }

        if ($z < -3) return 'Sangat pendek';
        if ($z >= -3 && $z < -2) return 'Pendek';
        if ($z >= -2 && $z <= 3) return 'Normal';
        if ($z > 3) return 'Tinggi';
        return '-';
    }
}


if (!function_exists('klasifikasiZScoreBBPB')) {
    function klasifikasiZScoreBBPB($nilai, $ref)
    {
        if ($ref->l != 0) {
            $z = (pow(($nilai / $ref->m), $ref->l) - 1) / ($ref->l * $ref->s);
        } else {
            $z = log($nilai / $ref->m) / $ref->s;
        }

        if ($z < -3) return 'Gizi Buruk';
        if ($z >= -3 && $z < -2) return 'Gizi Kurang';
        if ($z >= -2 && $z <= 1) return 'Gizi Baik';
        if ($z > 1 && $z <= 2) return 'Beresiko gizi lebih';
        if ($z > 2 && $z <= 3) return 'Gizi lebih';
        if ($z > 3) return 'Obesitas';
        return '-';
    }
}

