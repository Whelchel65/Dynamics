table 50550 "ManufacturersSOD"
{
    TableType = Normal;
    Caption = 'Manufacturers';
    fields
    {

        field(50550; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(50551; Search; Text[50])
        {
            Caption = 'Search Description';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Name)
        {
            Clustered = true;
        }

    }

}
