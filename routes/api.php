<?php

use App\Http\Controllers\PengukuranController;
use Illuminate\Support\Facades\Route;


Route::post('/pengukuran', [PengukuranController::class, 'store']);

Route::get('/tes', function() {
    return response()->json(['status' => 'api routes working']);
});
