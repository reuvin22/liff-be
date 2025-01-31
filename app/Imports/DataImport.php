<?php

namespace App\Imports;

use App\Models\Data;
use App\Models\Prompt;
use App\Models\DataImports;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class DataImport implements ToCollection, WithHeadingRow
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        $dataUuid = Str::uuid();

        $prompt = null;
        foreach ($collection as $row) {
            $writingAdvice = $row['writing_advice'] ?? null;

            $data = DataImports::where('question_number', $row['question_number'])->first();

            if ($data) {
                $data->update([
                    'questions' => $row['questions'],
                    'writing_advice' => $writingAdvice,
                ]);
            } else {
                $data = DataImports::create([
                    'data_id' => $dataUuid,
                    'question_number' => $row['question_number'],
                    'questions' => $row['questions'],
                    'writing_advice' => $writingAdvice,
                ]);
            }

            if ($prompt === null && isset($row['prompt'])) {
                $prompt = $row['prompt'];
            }
        }

        if ($prompt !== null) {
            Prompt::create([
                'data_id' => $data->data_id,
                'prompt' => $prompt
            ]);
        }
    }
}
