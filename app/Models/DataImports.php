<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DataImports extends Model
{
    protected $fillable = [
        'data_id',
        'question_number',
        'questions',
        'writing_advice'
    ];
}
