<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bbup extends Model
{
    protected $table = 'bbup';
    protected $fillable = ['year', 'month', 'l', 'm','s', 'min_tiga', 'min_dua', 'min_satu', 'median', 'satu', 'dua', 'tiga' ];
}
