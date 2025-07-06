<h2>Hasil Pengukuran Anak</h2>

<p>Halo Bapak/Ibu, berikut kami sampaikan hasil pengukuran terbaru untuk anak bernama <strong>{{ $data['nama'] }}</strong>:</p>

<p>Pada pengukuran kali ini, anak memiliki berat badan sebesar <strong>{{ $data['berat'] }} kg</strong> dan tinggi badan <strong>{{ $data['tinggi'] }} cm</strong>.</p>

<p>Berdasarkan perhitungan status gizi:</p>
<ul>
    <li>Berat Badan menurut Umur (BB/U):<strong> {{ $data['status_bbu'] }} </strong></li>
    <li>Tinggi Badan menurut Umur (PB/U):<strong> {{ $data['status_pbu'] }} </strong></li>
    <li>Berat Badan menurut Tinggi Badan (BB/PB):<strong> {{ $data['status_bbpb'] }} </strong></li>
</ul>

<p>Semoga anak tetap tumbuh sehat dan optimal. Terima kasih telah mengikuti proses pemantauan tumbuh kembang anak.</p>

<p><em>Waktu pengukuran: {{ $data['waktu_kirim'] }}</em></p>


@if(isset($data['chart_url']))
    <p>Berikut adalah grafik 3 pengukuran trakhir</p>
    <img src="{{ $data['chart_url'] }}" alt="Grafik Pengukuran" style="max-width: 100%;">
@endif

