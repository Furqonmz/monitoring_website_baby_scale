<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KlasifikasiPengukuran extends Model
{
    protected $table = 'klasifikasi_pengukuran';
    protected $fillable = [
        'pengukuran_id',
        'status_bbu',
        'status_pbu',
        'status_bbpb',
    ];

    public function pengukuran()
    {
        return $this->belongsTo(Pengukuran::class);
    }
}
