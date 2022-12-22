table 50540 "Cost_CodeSOD"
{
    TableType = Normal;
    Caption = 'Cost Code Table';
    fields
    {

        field(505100; CostCode; Text[6])
        {
            Caption = 'Cost Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(505101; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;CostCode)
        {
            Clustered = true;
        }

    }

}
