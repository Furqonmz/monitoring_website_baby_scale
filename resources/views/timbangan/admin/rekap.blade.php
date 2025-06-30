<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Rekap Pengukuran</title>
    <style>
        body { font-family: sans-serif; font-size: 12px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #000; padding: 5px; text-align: center; }
    </style>
</head>
<body>
    <h3 style="text-align: center;">Rekap Pengukuran Gizi</h3>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>ID</th>
                <th>Nama</th>
                <th>Jenis Kelamin</th>
                <th>Umur (bulan)</th>
                <th>Berat</th>
                <th>Tinggi</th>
                <th>PB/U</th>
                <th>BB/U</th>
                <th>BB/PB</th>
                <th>Tanggal Ukur</th>
            </tr>
        </thead>
        <tbody>
            @foreach($pengukuran as $no => $data)
                <tr>
                    <td>{{ $no + 1 }}</td>
                    <td>{{ $data->anak->id ?? '-' }}</td>
                    <td>{{ $data->anak->nama ?? '-' }}</td>
                    <td>{{ $data->anak->jenis_kelamin ?? '-' }}</td>
                    <td>{{ $data->umur ?? '-' }}</td>
                    <td>{{ $data->berat }} kg</td>
                    <td>{{ $data->tinggi }} cm</td>
                    <td>{{ $data->klasifikasi->status_pbu ?? '-' }}</td>
                    <td>{{ $data->klasifikasi->status_bbu ?? '-' }}</td>
                    <td>{{ $data->klasifikasi->status_bbpb ?? '-' }}</td>
                    <td>{{ $data->klasifikasi->created_at->format('d-m-Y') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
