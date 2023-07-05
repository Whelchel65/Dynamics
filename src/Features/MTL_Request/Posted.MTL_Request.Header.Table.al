table 50682 "Posted MTL_Request HeaderSOD"
{
    TableType = Normal;
    Caption = 'Material Request';
    LookupPageId = 50680;
    fields
    {

        field(1; Request_No; Code[20])
        {
            Caption = 'Request No';
            DataClassification = ToBeClassified;
        }
        field(2; Vendor; Code[20])
        {
            Caption = 'Vendor';
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
        }
        field(3;"Vendor_Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Vendor.Name where("No." = field(Vendor)));
        }
        field(4;Importance; Option)
        {
            Caption = 'Importance';
            DataClassification = ToBeClassified;
            OptionMembers = "","-","Low","High","Urgent";
        }
        field(5; User; Code[20])
        {
            Caption = 'User';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(6; Date_Needed; Date)
        {
            Caption = 'Date Needed';
            DataClassification = ToBeClassified;
        }
        field(7; Notes; Text[1000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(14;Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Requested","Review","Approved";
        }


    }
    keys
    {
        key(PK;Request_No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Posted MTL_Request LineSOD";
    begin
       Lines.SetRange("Request_No",Rec."Request_No");
       Lines.DeleteAll();
    end;

}
