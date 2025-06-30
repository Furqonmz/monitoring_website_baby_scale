<?php

use App\Http\Controllers\PengukuranController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Models\Category;
use Illuminate\Support\Facades\Mail;

Route::get('/', function () {
    return view('timbangan.rumah');
});

Route::get('/register', [LoginController::class, 'tampilRegistrasi'])->name('timbangan.register.tampil');
Route::post('/register/submit', [LoginController::class, 'submitRegistrasi'])->name('timbangan.register.submit');

Route::get('/login', [LoginController::class, 'tampilLogin'])->name('timbangan.login');
Route::post('/login/submit', [LoginController::class, 'submitLogin'])->name('timbangan.login.submit');

Route::post('/logout', [LoginController::class,'logout'])->name('timbangan.logout');


// Route::middleware(['auth', 'role:admin'])->group(function () {
Route::middleware(['auth'])->group(function () {
    Route::get('/tampilan', [AuthController::class,'tampil'])->name('timbangan.admin.layout');
    Route::get('/tampilan/tambah', [AuthController::class,'tambah'])->name('timbangan.admin.tambah');
    Route::post('/tampilan/submit', [AuthController::class,'submit'])->name('timbangan.admin.submit');
    Route::get('/tampilan/edit/{id}', [AuthController::class,'edit'])->name('timbangan.admin.edit');
    Route::post('/tampilan/update/{id}', [AuthController::class,'update'])->name('timbangan.admin.update');
    Route::post('/tampilan/delete/{id}', [AuthController::class,'delete'])->name('timbangan.admin.delete');
    Route::get('/rekap', [PengukuranController::class, 'rekap'])->name('timbangan.admin.layoutrekap');
    Route::get('/rekap/pdf', [PengukuranController::class, 'cetakPDF'])->name('timbangan.admin.rekap');
});

Route::get('/search-anak', [AuthController::class, 'searchAnak'])->name('timbangan.anak.search');
Route::get('/{id}/detail', [AuthController::class, 'detailAnak'])->name('timbangan.detail');
// Route::get('/cek-env', function () {
//     return [
//         'sid' => config('services.twilio.sid'),
//         'token' => config('services.twilio.token'),
//         'from' => config('services.twilio.from'),
//     ];
// });
