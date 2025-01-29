<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GeneratedResult extends Model
{
    protected $fillable = [
        'userId',
        'openai_result'
    ];

    /**
     * Get the user that owns the GeneratedResult
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function answers()
    {
        return $this->belongsTo(Answer::class, 'userId', 'userId');
    }
}
