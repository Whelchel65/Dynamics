table 50740 "StatesSOD"
{
    TableType = Normal;
    Caption = 'State/Region';
    LookupPageId = 50740;
    fields
    {

        field(1; State; Code[3])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; State_Name; Text[50])
        {
            Caption = 'State Name';
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
        key(PK;State)
        {
            Clustered = true;
        }

    }

}
