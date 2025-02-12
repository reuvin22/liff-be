<?php

namespace App\Exports;

use App\Models\Answer;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class UserAnswersExport implements FromCollection, WithHeadings, WithStyles
{
    protected $userId;

    public function __construct($userId)
    {
        $this->userId = $userId;
    }

    public function collection()
    {
        return Answer::where('userId', $this->userId)
                     ->select("id", "userId", "displayName", "Question_1", "Ability_Desc_1",
                              "Question_2", "Ability_Desc_2", "Question_3", "Question_4",
                              "Question_5", "Question_6", "Question_7", "Question_8",
                              "Question_9", "Question_10", "Question_11")
                     ->get();
    }

    public function headings(): array
    {
        return ["ID", "User ID", "Display Name", "Question 1", "Ability Description 1", "Question 2", "Ability Description 2", "Question 3", "Question 4", "Question 5", "Question 6", "Question 7", "Question 8", "Question 9", "Question 10", "Question 11"];
    }

    public function styles(Worksheet $sheet)
    {
        return [
            1 => ['font' => ['bold' => true]]
        ];
    }
}
