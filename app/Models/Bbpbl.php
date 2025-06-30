<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bbpbl extends Model
{
    protected $table = 'bbpbl';
    protected $fillable = ['length', 'l', 'm','s', 'min_tiga', 'min_dua', 'min_satu', 'median', 'satu', 'dua', 'tiga'];
           
}
