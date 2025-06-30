<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  @vite(['resources/css/app.css','resources/js/app.js'])
  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <title>Home Page</title>
</head>

<body class="bg-white dark:bg-gray-900">
  <section class="flex flex-col items-center justify-center min-h-screen px-4 text-center">

    <!-- Teks Atas -->
    <div class="mb-8">
      <h1 class="text-4xl font-extrabold leading-none tracking-tight md:text-5xl xl:text-6xl dark:text-white">Selamat Datang!</h1>
      <p class="mt-4 text-gray-500 md:text-lg lg:text-xl dark:text-gray-400">
        di Website Alat Ukur berat dan tinggi Bayi.
      </p>
      <a href="{{ route('timbangan.login') }}"
         class="inline-flex items-center justify-center px-5 py-3 mt-6 text-base font-medium text-white rounded-lg bg-primary-700 hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 dark:focus:ring-primary-900">
        Masuk
        <svg class="w-5 h-5 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20"
             xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd"
                d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                clip-rule="evenodd"></path>
        </svg>
      </a>
    </div>

    <!-- Logo Bawah -->
    <div>
      <img src="img/Logo Alat.png" alt="mockup" class="h-auto w-96"> <!-- atur ukuran sesuai kebutuhan -->
    </div>

  </section>
</body>
</html>


{{-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  @vite(['resources/css/app.css','resources/js/app.js'])
  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <title>Home Page</title>
  <link rel="icon" href="{{ asset('img/unpad.png') }}" type="image/png">
</head>

<body class="bg-white dark:bg-gray-900">
  <section class="flex items-center justify-center min-h-screen px-4">
    <div class="grid items-center w-full max-w-screen-xl lg:gap-8 xl:gap-0 lg:grid-cols-2">
      <!-- Kiri -->
      <div class="text-center lg:text-left">
        <h1 class="mb-4 text-4xl font-extrabold leading-none tracking-tight md:text-5xl xl:text-6xl dark:text-white">Selamat Datang!</h1>
        <p class="mb-6 font-light text-gray-500 md:text-lg lg:text-xl dark:text-gray-400">
          di Website Alat Ukur berat dan tinggi Bayi.
        </p>
        <a href="{{ route('timbangan.login') }}"
          class="inline-flex items-center justify-center px-5 py-3 text-base font-medium text-white rounded-lg bg-primary-700 hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 dark:focus:ring-primary-900">
          Masuk
          <svg class="w-5 h-5 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
              clip-rule="evenodd"></path>
          </svg>
        </a>
      </div>
      <!-- Kanan -->
      <div class="flex justify-center mt-8 lg:mt-0">
        <img src="img/Logo Alat.png" alt="mockup" class="h-auto max-w-full">
      </div>
    </div>
  </section>
</body>
</html> --}}


{{-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite(['resources/css/app.css','resources/js/app.js'])
    <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Home Page</title>
</head>

<body">
    <section class="bg-white dark:bg-gray-900">
    <div class="grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
        <div class="mr-auto place-self-center lg:col-span-7">
            <h1 class="max-w-2xl mb-4 text-4xl font-extrabold leading-none tracking-tight md:text-5xl xl:text-6xl dark:text-white">Selamat Datang!</h1>
            <p class="max-w-2xl mb-6 font-light text-gray-500 lg:mb-8 md:text-lg lg:text-xl dark:text-gray-400">di Website Alat Ukur berat dan tinggi Bayi.</p>
            <a href="{{ route('timbangan.login') }}" class="inline-flex items-center justify-center px-5 py-3 mr-3 text-base font-medium text-center text-white rounded-lg bg-primary-700 hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 dark:focus:ring-primary-900">
                Masuk
                <svg class="w-5 h-5 ml-2 -mr-1" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </a>
        </div>
        <div class="hidden lg:mt-0 lg:col-span-5 lg:flex">
            <img src="img/Logo Alat.png" alt="mockup">
        </div>
    </div>
</section>
</body>
</html> --}}
