table 50770 "StatesSOD"
{
    TableType = Normal;
    Caption = 'State/Region';
    LookupPageId = 50770;
    fields
    {

        field(1; Abbr; Code[20])
        {
            Caption = 'Abbr';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; State; Text[50])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
        }
        field(3; Country; Text[50])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Abbr)
        {
            Clustered = true;
        }

    }

}
