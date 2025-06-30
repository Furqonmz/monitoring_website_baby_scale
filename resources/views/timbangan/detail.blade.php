@extends('timbangan.tampilan')

@section('anak')
<div class="container mt-3">
    <div class="container mt-3">
            <h5>ID : {{ $anak->id ?? '-' }}</h5>
            <h5>Nama Lengkap : {{ $anak->nama ?? '-' }}</h5>
            <h5>Umur : {{ $anak->umur_bulan ?? 'Data tidak tersedia' }}</h5>
            <h5>Nama Ibu : {{ $anak->nama_ibu ?? '-' }}</h5>
            <h5>Nama Ayah : {{ $anak->nama_ayah ?? '-' }}</h5>

        <div class="py-6 bg-white sm:py-8">
            <div class="px-6 mx-auto max-w-7xl lg:px-8">
                <div class="flex justify-center">
                    <div class="flex items-center justify-center max-w-3xl px-6 py-4 space-x-6 bg-gray-100 shadow-md rounded-2xl">
                        @php
                            $pengukuranTerbaru = $anak->pengukuranTerbaru; // pengukuran terbaru
                            $klasifikasi = $pengukuranTerbaru ? $pengukuranTerbaru->klasifikasi : null; // relasi klasifikasi
                        @endphp

                        <p class="font-semibold text-gray-800">PB/U : {{ $klasifikasi->status_pbu ?? '-' }}</p>
                        <p class="font-semibold text-gray-800">BB/U : {{ $klasifikasi->status_bbu ?? '-' }}</p>
                        <p class="font-semibold text-gray-800">BB/PB : {{ $klasifikasi->status_bbpb ?? '-' }}</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <canvas id="chartBerat" height="200"></canvas>
            </div>
            <div class="col-md-6">
                <canvas id="chartTinggi" height="200"></canvas>
            </div>
        </div>
    </div>
    <a href="{{ route('timbangan.admin.layout') }}" class="mt-4 mb-4 btn btn-primary">Kembali</a>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
@push('scripts')
<script>
    // Grafik Berat
    const ctxBerat = document.getElementById('chartBerat').getContext('2d');
    new Chart(ctxBerat, {
        type: 'line',
        data: {
            labels: @json($labels),
            datasets: [{
                label: 'Berat (kg)',
                data: @json($berat),
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.3
            }]
        },
        options: {
            responsive: true,
            plugins: {
                title: {
                    display: true,
                    text: 'Grafik Berat'
                }
            }
        }
    });

    // Grafik Tinggi
    const ctxTinggi = document.getElementById('chartTinggi').getContext('2d');
    new Chart(ctxTinggi, {
        type: 'line',
        data: {
            labels: @json($labels),
            datasets: [{
                label: 'Tinggi (cm)',
                data: @json($tinggi),
                borderColor: 'rgb(255, 99, 132)',
                tension: 0.3
            }]
        },
        options: {
            responsive: true,
            plugins: {
                title: {
                    display: true,
                    text: 'Grafik Tinggi'
                }
            }
        }
    });
</script>
@endpush

@endsection
