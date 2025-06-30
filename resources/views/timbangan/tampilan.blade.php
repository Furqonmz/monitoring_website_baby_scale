<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite(['resources/css/app.css','resources/js/app.js'])
    <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Data berat dan Tinggi</title>
    <link rel="icon" href="{{ asset('img/unpad.png') }}" type="image/png">
</head>

<body class="d-flex flex-column min-vh-100">
    <header class="py-4 text-center text-white bg-primary">
        <div class="container">
            <h1 class="mb-0 fs-2">Monitoring Alat Ukur Berat dan Tinggi Bayi</h1>
            <p class="mt-2 fs-5">Track your baby's weight and height data here</p>
        </div>
    </header>

    <main>
        @yield('anak')
    </main>

    <footer class="relative py-3 mt-auto text-white bg-primary">
        <div class="container flex items-center justify-center mx-auto">
            <p class="w-full mb-0 text-center">
                &#169; Teknik Elektro FMIPA Universitas Padjadjaran
            </p>
        </div>

        @if (Auth::check())
            <form action="{{ route('timbangan.logout') }}" method="post" class="absolute -translate-y-1/2 right-5 top-1/2">
                @csrf
                <button class="btn btn-danger btn-sm">Logout</button>
            </form>
        @endif
    </footer>


        @stack('scripts')
</body>
</html>
