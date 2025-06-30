<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pbup extends Model
{
    protected $table = 'pbup';
    protected $fillable = ['year', 'month', 'l', 'm', 's', 'sd', 'min_tiga', 'min_dua', 'min_satu', 'median', 'satu', 'dua', 'tiga'];
}
