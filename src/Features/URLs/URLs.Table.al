table 50650 "URLsSOD"
{
    TableType = Normal;
    Caption = 'URLs to Flows';
    LookupPageId = 50650;
    fields
    {

        field(505100; Number; Code[20])
        {
            Caption = 'Number';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(505101; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(505102; URL; Text[1000])
        {
            Caption = 'URL';
            DataClassification = ToBeClassified;
            ExtendedDataType = URL;
        }


    }
    keys
    {
        key(PK;Number)
        {
            Clustered = true;
        }

    }

}
