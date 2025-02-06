<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdsCounter extends Model
{
    protected $fillable = [
        'data_id',
        'ads_count'
    ];
}
