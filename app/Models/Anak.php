<?php

namespace App\Models;

use Carbon\Carbon;
use App\Models\Pengukuran;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Anak extends Model
{
    use HasFactory;

    protected $table = 'anak';
    protected $primaryKey = 'id';
    public $incrementing = false;
    public $keyType = 'string'; //'int' nanti ubah lagi

    protected $dates = ['tanggal_lahir'];

    protected $fillable = [
            'id',
            'nik',
            'nama',
            'jenis_kelamin',
            'tanggal_lahir',
            'nama_ayah',
            'nama_ibu',
            // 'no_wa',
            'email',
        ];

        public function pengukuran(): HasMany
        {
            return $this->hasMany(Pengukuran::class, 'anak_id', 'id');
        }

        public function user()
        {
            return $this->belongsTo(User::class);
        }


        public function pengukuranTerbaru()
        {
            return $this->hasOne(Pengukuran::class, 'anak_id', 'id')->latestOfMany();
        }

         public function getUmurTahunAttribute()
        {
            return Carbon::parse($this->tanggal_lahir)->age . ' tahun';
        }

        public function getUmurBulanAttribute()
        {
            $months = Carbon::parse($this->tanggal_lahir)->diffInMonths(Carbon::now());
            return number_format($months, 1) . ' bulan';
        }


}
