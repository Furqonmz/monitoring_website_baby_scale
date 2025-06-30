<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bbul extends Model
{
    protected $table = 'bbul';
    protected $fillable = ['year', 'month', 'l', 'm','s', 'min_tiga', 'min_dua', 'min_satu', 'median', 'satu', 'dua', 'tiga' ];
}
