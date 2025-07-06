<?php

namespace App\Models;

use App\Models\Anak;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Pengukuran extends Model
{
    protected $table = 'pengukuran';
    public $timestamps = true;


    protected $fillable = [
        'anak_id',
        'berat',
        'tinggi',
        'umur',
    ];

    public function anak(): BelongsTo
    {
        return $this->belongsTo(Anak::class, 'anak_id', 'id');
    }

    public function klasifikasi()
    {
        return $this->hasOne(KlasifikasiPengukuran::class, 'pengukuran_id');
    }

}
