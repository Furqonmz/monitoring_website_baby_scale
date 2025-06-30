<?php

namespace App\Http\Controllers;

use App\Jobs\SendDataPengukuranEmail;
use Carbon\Carbon;
use App\Models\Pengukuran;
use App\Models\Anak;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    function tampil()
    {
        $anak = Anak::with('pengukuranTerbaru.klasifikasi')->get();

        foreach ($anak as $a) {
            $tanggalLahir = Carbon::parse($a->tanggal_lahir);
            $now = now();

            $diff = $tanggalLahir->diff($now); // menghasilkan DateInterval
            $tahun = $diff->y;  // tahun
            $bulan = $diff->m;  // bulan

            $a->umur_text = "{$tahun} tahun {$bulan} bulan";
        }

        return view('timbangan.admin.layout', compact('anak'));
    }

    function tambah () {
        return view('timbangan.admin.add');
    }


    function submit(Request $request) {
        $request->validate([
            'id' => ['required', 'regex:/^62[0-9]{8,13}$/'], //nanti hapus kalau pake ultah
            'nik' => 'required',
            'nama' => 'required',
            'jenis_kelamin' => 'required',
            'tanggal_lahir' => 'required',
            'nama_ayah' => 'required',
            'nama_ibu' => 'required',
            //'no_wa' => 'required',
            'email' => 'required|email',
        ]);

        // $tanggalLahir = Carbon::parse($request->tanggal_lahir);
        // $prefixTanggal = $tanggalLahir->format('ymd'); // misalnya: 240502

        // // Hitung jumlah anak dengan tanggal lahir yang sama
        // $jumlahAnakPadaTanggal = Anak::where('id', 'like', $prefixTanggal . '%')->count();

        // $urutan = $jumlahAnakPadaTanggal + 1; // urutan dimulai dari 1

        // // Format urutan sebagai 3 digit
        // $urutanId = str_pad((string) $urutan, 3, '0', STR_PAD_LEFT);

        // // Gabungkan tanggal lahir dan urutan untuk ID
        // $id = $prefixTanggal . $urutanId;

        // Buat instance model Anak dan simpan data
        Anak::create([
            //'id' => $id,
            'id' => $request->id,
            'nik' => $request->nik,
            'nama' => $request->nama,
            'jenis_kelamin' => $request->jenis_kelamin,
            'tanggal_lahir' => $request->tanggal_lahir,
            'nama_ayah' => $request->nama_ayah,
            'nama_ibu' => $request->nama_ibu,
            //'no_wa' => $request->no_wa,
            'email' => $request->email,
        ]);

        return redirect()->route('timbangan.admin.layout');
    }


    function edit($id) {
        $anak = Anak::find($id);
        if (!$anak) {
            return redirect()->route('timbangan.admin.layout')->with('error', 'Data tidak ditemukan');
        }
        return view('timbangan.admin.edit', compact('anak'));
    }

    function update (Request $request, $id) {
        $anak = Anak::find($id);

        if (!$anak) {
            return redirect()->route('timbangan.admin.layout')->with('error', 'Data tidak ditemukan');
        }

        $request->validate([
            'nik' => 'required|unique:anak,nik,' . $id . ',id',
            'nama' => 'required',
            'jenis_kelamin' => 'required',
            'tanggal_lahir' => 'required|date',
            'nama_ayah' => 'required',
            'nama_ibu' => 'required',
            'email' => 'required|email',
        ]);

        $anak->update($request->only([
            'nik',
            'nama',
            'jenis_kelamin',
            'tanggal_lahir',
            'nama_ayah',
            'nama_ibu',
            'email',
        ]));

        return redirect()->route('timbangan.admin.layout')->with('success', 'Data berhasil diperbarui');

    }

    function delete($id)   {
        $anak = Anak::find($id);
        if (!$anak) {
            return redirect()->route('timbangan.admin.layout')->with('error', 'Data tidak ditemukan');
        }
        $anak->delete();
        return redirect()->route('timbangan.admin.layout')->with('success', 'Data berhasil dihapus');
    }

    public function searchAnak(Request $request)
    {
        $search = $request->input('search');

        $anak = Anak::with('pengukuranTerbaru') // relasi ke pengukuran terbaru
            ->when($search, function ($query) use ($search) {
                $query->where('nama', 'like', '%' . $search . '%');
            })
            ->paginate(10);

        return view('timbangan.admin.layout', ['anak' => $anak]); // pastikan ini sesuai nama file view-nya
    }

    public function detailAnak($id)
    {
        // Ambil data anak + semua pengukuran + relasi terbaru + klasifikasi-nya
        $anak = Anak::with(['pengukuran.klasifikasi','pengukuranTerbaru.klasifikasi'])->findOrFail($id);


        // Ambil data berat dan tinggi dari semua pengukuran
        $labels = $anak->pengukuran->map(function($item) {
        return optional($item->klasifikasi)->created_at
            ? Carbon::parse($item->klasifikasi->created_at)->format('d M Y')
            : '-';
        });


        $berat = $anak->pengukuran->pluck('berat');
        $tinggi = $anak->pengukuran->pluck('tinggi');

        return view('timbangan.detail', compact('anak', 'labels', 'berat', 'tinggi'));
    }

    public function kirimEmailPengukuran($id_anak)
    {
        $anak = Anak::with('pengukuranTerbaru')->findOrFail($id_anak);

        $data = [
            'nama' => $anak->nama,
            'nama_orangtua' => $anak->nama_orangtua, // ✅ tambahkan ini
            'nomor_wa' =>'+'.$anak->nomor_wa,
            'berat' => $anak->pengukuranTerbaru->berat,
            'tinggi' => $anak->pengukuranTerbaru->tinggi,
            'status' => $anak->pengukuranTerbaru->status_gizi,
        ];

        //pesanWA
        $data['pesan_wa'] = "Halo {$data['nama_orangtua']}, berikut data pengukuran anak Anda:\n"
        . "Nama: {$data['nama']}\n"
        . "Berat: {$data['berat']} kg\n"
        . "Tinggi: {$data['tinggi']} cm\n"
        . "Status Gizi: {$data['status_gizi']}";

        //Mail::to($anak->email)->send(new DataPengukuranMail($data));

        // ✅ Dispatch job (email + WA)
        SendDataPengukuranEmail::dispatch($data, $anak->email);

        return back()->with('success', 'Email berhasil dikirim.');
    }

}
