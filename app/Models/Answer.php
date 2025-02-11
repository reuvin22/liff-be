<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $fillable = [
        'userId',
        'displayName',
        'Question_1',
        'Question_2',
        'Question_3',
        'Question_4',
        'Question_5',
        'Question_6',
        'Question_7',
        'Question_8',
        'Question_9',
        'Question_10',
        'Question_11',
        'Ability_Desc_1',
        'Ability_Desc_2'
    ];

    public function generatedResult()
    {
        return $this->hasOne(GeneratedResult::class, 'userId', 'userId');
    }
}
