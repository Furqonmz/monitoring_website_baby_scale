<?php


namespace App\Http\Controllers;

use App\Models\KlasifikasiPengukuran;
use Illuminate\Http\Request;
use App\Models\Pengukuran;
use Illuminate\Support\Facades\Log;
use App\Models\Anak;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use App\Mail\DataPengukuranMail;
use Illuminate\Support\Facades\Mail;


class PengukuranController extends Controller
{
    public function store(Request $request)
    {
        Log::info('ESP32 mengirim data:', $request->all());

        try {
            // Baca JSON dari request body
            $data = json_decode(file_get_contents("php://input"), true);

            // Cek aksi dari JSON atau POST form (untuk cek_id)
            $aksi = $data['aksi'] ?? $_POST['aksi'] ?? null;

            // if ($request->aksi === 'cek_id') {
            if ($aksi === 'cek_id') {
                $anak = Anak::where('id', $request->id)->first();

                if ($anak) {
                    Log::info('ID valid:', ['id' => $request->id]);

                    return response()->json([
                        'status' => 'valid',
                        'id' => $anak->id,
                        'nama' => $anak->nama
                    ], 200);
                } else {
                    Log::warning('ID tidak ditemukan:', ['id' => $request->id]);

                    return response()->json([
                        'status' => 'invalid',
                        'message' => 'ID tidak ditemukan'
                    ], 404);
                }
            }

            // Jika bukan cek_id, berarti simpan data pengukuran
            $request->validate([
                'anak_id' => 'required|exists:anak,id',
                'berat' => 'required|numeric|min:0',
                'tinggi' => 'required|numeric|min:0',
            ]);

            Log::debug('Validasi berhasil.');

            // 🔹 Ambil data anak untuk menghitung umur
            $anak = Anak::find($request->anak_id);
            $tanggal_lahir = Carbon::parse($anak->tanggal_lahir);
            $tanggal_pengukuran = Carbon::now(); // atau $request->created_at jika dikirim

            // 🔹 Hitung umur saat pengukuran
            $umur =  round($tanggal_lahir->diffInDays($tanggal_pengukuran) / 30, 1);

            // 🔹 Simpan ke database
            $pengukuran = Pengukuran::create([
                'anak_id' => $request->anak_id,
                'berat' => $request->berat,
                'tinggi' => $request->tinggi,
                'umur' => $umur, // tambahkan ini
            ]);

            Log::info('Data pengukuran disimpan:', [
                'id' => $pengukuran->id,
                'anak_id' => $request->anak_id,
                'berat' => $request->berat,
                'tinggi' => $request->tinggi,
                'umur' => $umur,
            ]);

            return response()->json([
                'message' => 'Data berhasil disimpan',
                'id' => $pengukuran->id,
            ]);

        } catch (\Illuminate\Validation\ValidationException $e) {
            Log::warning('Validasi gagal:', $e->errors());

            return response()->json([
                'message' => 'Validasi gagal',
                'errors' => $e->errors()
            ], 422);

        } catch (\Exception $e) {
            Log::error('Gagal menyimpan data:', [
                'error' => $e->getMessage()
            ]);

            return response()->json([
                'message' => 'Terjadi kesalahan',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function rekap(Request $request)
    {
        $tanggal = $request->input('tanggal');
        $minggu = $request->input('minggu');
        $bulan = $request->input('bulan');
        $rekapBulan = $request->input('rekap_bulan');

        $pengukuran = Pengukuran::with('anak', 'klasifikasi')
            ->whereHas('klasifikasi', function ($query) use ($tanggal, $minggu, $bulan, $rekapBulan) {
                // Filter berdasarkan tanggal
                if ($tanggal) {
                    $query->whereDate('created_at', $tanggal);
                }

                // Filter berdasarkan minggu ke-x di bulan x
                if ($minggu && $bulan) {
                    $query->whereMonth('created_at', $bulan)
                        ->whereRaw('FLOOR((DAY(created_at)-1)/7)+1 = ?', [$minggu]);
                }

                // Filter berdasarkan satu bulan penuh
                if ($rekapBulan) {
                    $query->whereMonth('created_at', $rekapBulan);
                }
            })
            ->orderBy('created_at', 'desc')
            ->get();

        return view('timbangan.admin.layoutrekap', compact('pengukuran', 'tanggal', 'minggu', 'bulan', 'rekapBulan'));
    }

    public function cetakPDF(Request $request)
    {
        // Sama seperti method rekap tampilan, ambil data sesuai filter
        $query = Pengukuran::with(['anak', 'klasifikasi']);

        if ($request->tanggal) {
            $query->whereDate('created_at', $request->tanggal);
        }

        if ($request->minggu && $request->bulan) {
            $start = Carbon::create(null, $request->bulan, 1)->startOfMonth()->addWeeks($request->minggu - 1);
            $end = (clone $start)->addWeek()->subDay();
            $query->whereBetween('created_at', [$start, $end]);
        }

        if ($request->rekap_bulan) {
            $query->whereMonth('created_at', $request->rekap_bulan);
        }

        $pengukuran = $query->get();

        $pdf = Pdf::loadView('timbangan.admin.rekap', compact('pengukuran'));
        return $pdf->stream('rekap-pengukuran.pdf'); // bisa juga ->download()
    }


}
