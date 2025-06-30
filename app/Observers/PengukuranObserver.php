<?php

namespace App\Observers;

use App\Jobs\SendDataPengukuranEmail;
use App\Models\Pengukuran;
use App\Models\Anak;
use App\Models\Bbul;
use App\Models\Bbup;
use App\Models\Pbul;
use App\Models\Pbup;
use App\Models\Bbpbl;
use App\Models\Bbpbp;
use App\Models\KlasifikasiPengukuran;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class PengukuranObserver
{
    /**
     * Handle the Pengukuran "created" event.
     */
   public function created(Pengukuran $pengukuran): void
{
    Log::info("Observer triggered for pengukuran id: {$pengukuran->id}");

    $anak = Anak::find($pengukuran->anak_id);
    if (!$anak) {
        Log::warning("Anak not found for pengukuran id: {$pengukuran->id}");
        return;
    }

    // Hitung umur bulan
    $umur_dalam_bulan = Carbon::parse($anak->tanggal_lahir)->diffInMonths(Carbon::now());

    // Ambil referensi z-score sesuai jenis kelamin dan umur bulan
    $bb_ref = $anak->jenis_kelamin === 'L'
    ? Bbul::where('month', '<=', $umur_dalam_bulan)->orderBy('month', 'desc')->first()
    : Bbup::where('month', '<=', $umur_dalam_bulan)->orderBy('month', 'desc')->first();

    $pb_ref = $anak->jenis_kelamin === 'L'
    ? Pbul::where('month', '<=', $umur_dalam_bulan)->orderBy('month', 'desc')->first()
    : Pbup::where('month', '<=', $umur_dalam_bulan)->orderBy('month', 'desc')->first();

    $tinggi_terdekat = round($pengukuran->tinggi * 2) / 2;

    $bbpb_ref = $anak->jenis_kelamin === 'L'
    ? Bbpbl::where('length', $tinggi_terdekat)->first()
    : Bbpbp::where('length', $tinggi_terdekat)->first();

    Log::info("Referensi z-score:", [
        'bb_ref' => $bb_ref ? $bb_ref->toArray() : null,
        'pb_ref' => $pb_ref ? $pb_ref->toArray() : null,
        'bbpb_ref' => $bbpb_ref ? $bbpb_ref->toArray() : null,
    ]);

    $status_bbu = $bb_ref ? klasifikasiZScoreBBU($pengukuran->berat, $bb_ref) : '-';
    $status_pbu = $pb_ref ? klasifikasiZScorePBU($pengukuran->tinggi, $pb_ref) : '-';
    $status_bbpb = $bbpb_ref ? klasifikasiZScoreBBPB($pengukuran->berat, $bbpb_ref) : '-';

    Log::info("Status klasifikasi:", compact('status_bbu', 'status_pbu', 'status_bbpb'));

    KlasifikasiPengukuran::create([
        'pengukuran_id' => $pengukuran->id,
        'status_bbu' => $status_bbu,
        'status_pbu' => $status_pbu,
        'status_bbpb' => $status_bbpb,
    ]);

    $dataEmail = [
    'nama' => $anak->nama,
    'berat' => $pengukuran->berat,
    'tinggi' => $pengukuran->tinggi,
    'status_bbu' => $status_bbu,
    'status_pbu' => $status_pbu,
    'status_bbpb' => $status_bbpb,
    'waktu_kirim' => now()->format('H:i:s d-m-Y'),
    ];

    if ($anak->email) {
        SendDataPengukuranEmail::dispatch($dataEmail, $anak->email);
    }
}



    /**
     * Handle the Pengukuran "updated" event.
     */
    public function updated(Pengukuran $pengukuran): void
    {
        //
    }

    /**
     * Handle the Pengukuran "deleted" event.
     */
    public function deleted(Pengukuran $pengukuran): void
    {
        //
    }

    /**
     * Handle the Pengukuran "restored" event.
     */
    public function restored(Pengukuran $pengukuran): void
    {
        //
    }

    /**
     * Handle the Pengukuran "force deleted" event.
     */
    public function forceDeleted(Pengukuran $pengukuran): void
    {
        //
    }
}
