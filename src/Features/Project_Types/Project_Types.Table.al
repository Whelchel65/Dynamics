table 50730 "Project_TypesSOD"
{
    TableType = Normal;
    Caption = 'Project Types for Sales';
    LookupPageId = 50730;
    fields
    {

        field(2; Item; Code[20])
        {
            Caption = 'Item';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Item)
        {
            Clustered = true;
        }

    }

}
