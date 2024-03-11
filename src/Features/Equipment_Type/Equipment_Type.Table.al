table 50870 "Equipment_TypeSOD"
{
    TableType = Normal;
    Caption = 'Equipment Type';
    LookupPageId = 50870;
    fields
    {

        field(1; Type; Text[50])
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Description; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Type)
        {
            Clustered = true;
        }

    }

}
