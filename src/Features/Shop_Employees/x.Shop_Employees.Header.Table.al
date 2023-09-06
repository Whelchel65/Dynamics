table 50792 "x Shop_Employees HeaderSOD"
{
    TableType = Normal;
    Caption = 'x Shop Employees Header';
    LookupPageId = 50790;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(2; Last_Name; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }
        field(3; First_Name; Text[50])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(4; Position; Text[50])
        {
            Caption = 'Position';
            DataClassification = ToBeClassified;
        }
        field(5; Date_of_Hire; Date)
        {
            Caption = 'Date of Hire';
            DataClassification = ToBeClassified;
        }
        field(6; Full_Name; Text[50])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "x Shop_Employees LineSOD";
    begin
       Lines.SetRange("No",Rec."No");
       Lines.DeleteAll();
    end;

}
