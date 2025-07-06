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

        $status = $this->hitungStatusGizi($anak, $pengukuran);
        $this->simpanStatusGizi($pengukuran, $status);
        $this->kirimEmailHasilPengukuran($anak, $pengukuran, $status);
    }

    private function hitungStatusGizi($anak, $pengukuran): array
    {
        $umur_dalam_bulan = Carbon::parse($anak->tanggal_lahir)->diffInMonths(Carbon::now());

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

        return [
            'status_bbu' => $bb_ref ? klasifikasiZScoreBBU($pengukuran->berat, $bb_ref) : '-',
            'status_pbu' => $pb_ref ? klasifikasiZScorePBU($pengukuran->tinggi, $pb_ref) : '-',
            'status_bbpb' => $bbpb_ref ? klasifikasiZScoreBBPB($pengukuran->berat, $bbpb_ref) : '-',
        ];
    }

    private function simpanStatusGizi($pengukuran, $status): void
    {
        KlasifikasiPengukuran::create([
            'pengukuran_id' => $pengukuran->id,
            'status_bbu' => $status['status_bbu'],
            'status_pbu' => $status['status_pbu'],
            'status_bbpb' => $status['status_bbpb'],
        ]);
    }

    private function kirimEmailHasilPengukuran($anak, $pengukuran, $status): void
    {
        $dataEmail = [
            'nama' => $anak->nama,
            'berat' => $pengukuran->berat,
            'tinggi' => $pengukuran->tinggi,
            'status_bbu' => $status['status_bbu'],
            'status_pbu' => $status['status_pbu'],
            'status_bbpb' => $status['status_bbpb'],
            'waktu_kirim' => now()->format('H:i:s d-m-Y'),
        ];

        $riwayat = Pengukuran::where('anak_id', $anak->id)
            ->orderBy('created_at', 'desc')
            ->take(3)
            ->get()
            ->reverse();

        $labels = $riwayat->pluck('created_at')->map(fn($t) => Carbon::parse($t)->format('d M'))->values();
        $berat = $riwayat->pluck('berat')->values();
        $tinggi = $riwayat->pluck('tinggi')->values();

        $config = [
            'type' => 'line',
            'data' => [
                'labels' => $labels,
                'datasets' => [
                    [
                        'label' => 'Berat (kg)',
                        'data' => $berat,
                        'borderColor' => 'blue',
                        'backgroundColor' => 'blue',
                        'fill' => false,
                        'datalabels' => [
                            'align' => 'bottom',
                            'anchor' => 'center',
                            'color' => 'blue',
                            'formatter' => 'value => `${value} kg`',
                        ],
                    ],
                    [
                        'label' => 'Tinggi (cm)',
                        'data' => $tinggi,
                        'borderColor' => 'green',
                        'backgroundColor' => 'green',
                        'fill' => false,
                        'datalabels' => [
                            'align' => 'bottom',
                            'anchor' => 'center',
                            'color' => 'green',
                            'formatter' => 'value => `${value} cm`',
                        ],
                    ],
                ],
            ],
            'options' => [
                'plugins' => [
                    'datalabels' => [
                        'display' => true,
                        'font' => ['weight' => 'bold'],
                    ],
                ],
            ],
            'plugins' => ['datalabels'],
        ];

        $chart_url = "https://quickchart.io/chart?c=" . urlencode(json_encode($config));
        $dataEmail['chart_url'] = $chart_url;

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
