table 50700 "Asset_Maintenance HeaderSOD"
{
    TableType = Normal;
    Caption = 'Asset Maintenance Header';
    LookupPageId = 50700;
    fields
    {

        field(1; Equip_No; Code[20])
        {
            Caption = 'Equipment No';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Equipment_Name; Text[100])
        {
            Caption = 'Equipment Name';
            DataClassification = ToBeClassified;
        }
        field(3;Equipment_Type; Option)
        {
            Caption = 'Equipment Type';
            DataClassification = ToBeClassified;
            OptionMembers = "","Rolling Asset","Stationary Equipment","Movable Equipment","Kit (Multiple Items)";
        }
        field(4; Manufacturer; Text[50])
        {
            Caption = 'Manufacturer';
            DataClassification = ToBeClassified;
        }
        field(5; Model; Text[50])
        {
            Caption = 'Model';
            DataClassification = ToBeClassified;
        }
        field(6; Serial; Text[50])
        {
            Caption = 'Serial';
            DataClassification = ToBeClassified;
        }
        field(7; Purchase_Date; Date)
        {
            Caption = 'Purchase Date';
            DataClassification = ToBeClassified;
        }
        field(8; Warranty_Expire_Date; Date)
        {
            Caption = 'Warranty Expire Date';
            DataClassification = ToBeClassified;
        }
        field(9; Storage_Location; Text[50])
        {
            Caption = 'Location';
            DataClassification = ToBeClassified;
        }
        field(10; Equipment_Notes; Text[2000])
        {
            Caption = 'Equipment Notes';
            DataClassification = ToBeClassified;
        }
        field(17;Operating_Status; Option)
        {
            Caption = 'Operating Status';
            DataClassification = ToBeClassified;
            OptionMembers = "","Operational","Needs Maintenance"," Needs Repair","Needs Immidiate Attention","Deadlined";
        }


    }
    keys
    {
        key(PK;Equip_No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Asset_Maintenance LineSOD";
    begin
       Lines.SetRange("Equip_No",Rec."Equip_No");
       Lines.DeleteAll();
    end;

}
