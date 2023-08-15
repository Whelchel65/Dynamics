table 50760 "Quality_StatusSOD"
{
    TableType = Normal;
    Caption = 'Quality_Status';
    LookupPageId = 50760;
    fields
    {

        field(1; Status; Code[20])
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Status)
        {
            Clustered = true;
        }

    }

}
