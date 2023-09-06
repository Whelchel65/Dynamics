table 50791 "Shop_Employees LineSOD"
{
    TableType = Normal;
    Caption = 'Shop Employees Line';
    LookupPageId = 50790;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(7;Type; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Near Miss","Recordable","Note","Warning","Written Warning","Termination";
        }
        field(8; Date; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(9; Description; Text[2000])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

        field(99999; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK;No,"Line No.")
        {
            Clustered = true;
        }

    }

}
