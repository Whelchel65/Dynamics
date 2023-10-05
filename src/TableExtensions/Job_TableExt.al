tableextension 50508 "SODJob" extends "Job"
{

    fields
    {
        field(50500;"Job_Notes"; Text[100])
        {
            Caption = 'Job Notes';
            DataClassification = ToBeClassified;
        }
        field(50501;"Bill_Total"; Decimal)
        {
            Caption = 'Bill_Total';
            DataClassification = ToBeClassified;
        }
        field(50502;"Actual_Cost_Total"; Decimal)
        {
            Caption = 'Actual_Cost_Total';
            DataClassification = ToBeClassified;
        }

    }
}
