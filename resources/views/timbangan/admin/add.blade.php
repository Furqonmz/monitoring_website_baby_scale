@extends('timbangan.tampilan')

@section('anak')

<section class="bg-white dark:bg-gray-900">
  <div class="max-w-2xl px-4 py-8 mx-auto lg:py-16">
      <form action="{{ route('timbangan.admin.submit') }}" method="post">
        @csrf
          <div class="grid gap-4 sm:grid-cols-2 sm:gap-6">
                <div>
                    <label for="id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nomor WhatsApp</label>
                    <input type="text" value="62" name="id" id="id" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="..." required="">
                </div>
                <div class="w-full">
                  <label for="nik" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">NIK</label>
                  <input type="text" name="nik" id="nik" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="32..." required="">
              </div>
              <div class="w-full">
                  <label for="nama" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama Lengkap</label>
                  <input type="text" name="nama" id="nama" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="Nama lengkap" required="">
              </div>
              <div>
                  <label for="jenis_kelamin" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">jenis_kelamin</label>
                  <select id="jenis_kelamin" name="jenis_kelamin" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500">
                      <option selected="">-- Pilih --</option>
                      <option value="L">Laki-Laki</option>
                      <option value="P">Perempuan</option>
                  </select>
              </div>
              <div>
                  <label for="tanggal_lahir" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Tanggal Lahir</label>
                  <input type="date" name="tanggal_lahir" id="tanggal_lahir" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" required="">
              </div>
              <div>
                  <label for="nama_ayah" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama Ayah</label>
                  <input type="text" name="nama_ayah" id="nama_ayah" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="..." required="">
              </div>
              <div>
                  <label for="nama_ibu" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nama Ibu</label>
                  <input type="text" name="nama_ibu" id="nama_ibu" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="..." required="">
              </div>
              <div>
                  <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Email</label>
                  <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500" placeholder="..." required="">
              </div>

          </div>
            <div class="flex justify-between mt-4 sm:mt-6">
                <a href="{{ route('timbangan.admin.layout') }}"
                class="no-underline inline-flex items-center px-5 py-2.5 text-sm font-medium text-white bg-primary-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800">
                    Kembali
                </a>

                <button type="submit"
                    class="inline-flex items-center px-5 py-2.5 text-sm font-medium text-white bg-primary-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800">
                    Simpan Data
                </button>
            </div>

      </form>
  </div>
</section>


{{-- <div class="form-bayi-container">
        <h2>Input Data Bayi</h2>
        <form action="{{ route('timbangan.admin.submit') }}" method="post">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <label for="nik">NIK:</label>
                    <input type="text" id="nik" name="nik" required>

                    <label for="nama">Nama:</label>
                    <input type="text" id="nama" name="nama" required>

                    <label for="jenis_kelamin">Jenis Kelamin:</label>
                    <select id="jenis_kelamin" name="jenis_kelamin" required>
                        <option value="">-- Pilih --</option>
                        <option value="L">Laki-laki</option>
                        <option value="P">Perempuan</option>
                    </select>

                    <label for="tanggal_lahir">Tanggal Lahir:</label>
                    <input type="date" id="tanggal_lahir" name="tanggal_lahir" required>
                </div>

                <div class="col-md-6">
                    <label for="ayah">Nama Ayah:</label>
                    <input type="text" id="nama_ayah" name="nama_ayah" required>

                    <label for="ibu">Nama Ibu:</label>
                    <input type="text" id="nama_ibu" name="nama_ibu" required>

                    <label for="wa">Nomor WhatsApp:</label>
                    <input type="text" id="no_wa" name="no_wa" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
            </div>

            <div class="mt-3 d-flex justify-content-center">
                <button type="submit" class="px-3 py-2 btn btn-primary">Simpan Data</button>
            </div>
        </form>

        <a href="{{ route('timbangan.admin.layout') }}" class="bottom-0 px-3 py-2 m-3 text-white position-absolute start-0 text-decoration-none" style="background-color: #6c757d; border-radius: 8px;">Kembali</a>
    </div> --}}
@endsection
