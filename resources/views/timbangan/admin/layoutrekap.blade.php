@extends('timbangan.tampilan')

@section('anak')

<section class="p-3 bg-gray-50 dark:bg-gray-900 sm:p-5">
    <div class="max-w-screen-xl px-4 mx-auto lg:px-12">
        <!-- Start coding here -->
        <div class="relative overflow-hidden bg-white shadow-md dark:bg-gray-800 sm:rounded-lg">
            <div class="overflow-x-auto">
                <div class="flex flex-col p-4 space-y-4 md:flex-row md:justify-start md:space-x-4 md:space-y-0">
                    <form action="{{ route('timbangan.admin.layoutrekap') }}" method="GET" class="flex flex-col items-center gap-2 md:flex-row">

                        {{-- Filter per tanggal --}}
                        <div class="flex flex-col">
                            <label for="tanggal" class="text-sm text-gray-700">Tanggal</label>
                            <input type="date" name="tanggal" id="tanggal" class="px-3 py-1 text-sm border border-gray-300 rounded-lg focus:ring-primary-500 focus:border-primary-500">
                        </div>

                        {{-- Filter per minggu dan bulan --}}
                        <div class="flex flex-col">
                            <label for="minggu" class="text-sm text-gray-700">Minggu ke</label>
                            <select name="minggu" id="minggu" class="px-3 py-1 text-sm border border-gray-300 rounded-lg">
                                <option value="">--</option>
                                @for ($i = 1; $i <= 5; $i++)
                                    <option value="{{ $i }}">Minggu {{ $i }}</option>
                                @endfor
                            </select>
                        </div>

                        <div class="flex flex-col">
                            <label for="bulan" class="text-sm text-gray-700">di Bulan</label>
                            <select name="bulan" id="bulan" class="px-3 py-1 text-sm border border-gray-300 rounded-lg">
                                <option value="">--</option>
                                @for ($i = 1; $i <= 12; $i++)
                                    <option value="{{ $i }}">Bulan {{ $i }}</option>
                                @endfor
                            </select>
                        </div>

                        {{-- Rekap 1 bulan penuh --}}
                        <div class="flex flex-col">
                            <label for="rekap_bulan" class="text-sm text-gray-700">Rekap Bulan</label>
                            <select name="rekap_bulan" id="rekap_bulan" class="px-3 py-1 text-sm border border-gray-300 rounded-lg">
                                <option value="">--</option>
                                @for ($i = 1; $i <= 12; $i++)
                                    <option value="{{ $i }}">Bulan {{ $i }}</option>
                                @endfor
                            </select>
                        </div>

                        {{-- Tombol submit --}}
                        <div class="flex flex-col">
                            <label class="invisible">Tampilkan</label>
                            <button type="submit" class="px-4 py-1 text-sm text-white bg-blue-500 rounded-lg hover:bg-blue-600">Tampilkan</button>
                        </div>

                        {{-- Tombol simpan pdf --}}
                        <div class="flex flex-col">
                            <label class="invisible">rekap</label>
                            <a href="{{ route('timbangan.admin.rekap') }}" target="_blank"
                                class="px-4 py-1 text-sm text-white no-underline bg-green-600 rounded-lg hover:bg-green-700">
                                Cetak PDF
                            </a>
                        </div>
                    </form>
                </div>


                <table class="w-full text-sm text-center text-gray-500 table-auto dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th class="w-5 px-2 py-4">No</th>
                            <th>ID</th>
                            <th class="px-2 py-4 w-13">Nama</th>
                            <th>Jenis Kelamin</th>
                            <th>Umur</th>
                            <th>Berat</th>
                            <th>Tinggi</th>
                            <th>PB/U</th>
                            <th>BB/U</th>
                            <th>BB/PB</th>
                            <th>Tanggal Pengukuran</th>
                        </tr>
                    </thead>
                    <tbody class="py-4 text-center">
                    @foreach ($pengukuran as $no => $data)
                        <tr class="mt-2 mb-2 border-b dark:border-gray-700">
                            <td class="py-3 text-center">{{ $no + 1 }}</td>
                            <td>{{ $data->anak->id ?? '-' }}</td>
                            <td class="text-start">{{ $data->anak->nama ?? '-' }}</td>
                            <td>{{ $data->anak->jenis_kelamin ?? '-' }}</td>
                            <td>{{ $data->umur ?? '-' }} bulan</td>
                            <td>{{ $data->berat ?? '-' }} kg</td>
                            <td>{{ $data->tinggi ?? '-' }} cm<S/td>
                            <td>{{ $data->klasifikasi->status_pbu ?? '-' }}</td>
                            <td>{{ $data->klasifikasi->status_bbu ?? '-' }}</td>
                            <td>{{ $data->klasifikasi->status_bbpb ?? '-' }}</td>
                            <td>{{ $data->klasifikasi->created_at->format('d-m-Y H:i') ?? '-' }}</td>
                        </tr>
                    @endforeach
                </tbody>


                </table>
            </div>
        </div>

        <a href="{{ route('timbangan.admin.layout') }}" class="mt-4 mb-4 btn btn-primary">Kembali</a>
    </div>
    </section>

@endsection
