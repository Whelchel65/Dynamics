table 50683 "Posted MTL_Request LineSOD"
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
        field(8; Item_Number; Code[20])
        {
            Caption = 'Item Number';
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";
        }
        field(9;"Description"; Text[100])
        {
            Caption = 'Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Item.Description where("No." = field(Item_Number)));
        }
        field(10;"Vendor_Item_No"; Text[50])
        {
            Caption = 'Vendor Item No';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Item."Vendor Item No." where("No." = field(Item_Number)));
        }
        field(11;"Manufacturer_Part_No"; Text[50])
        {
            Caption = 'Manufacturer Part No';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Item.ManfPartNum where("No." = field(Item_Number)));
        }
        field(12; QTY_Needed; Integer)
        {
            Caption = 'QTY Needed';
            DataClassification = ToBeClassified;
        }
        field(13;Line_Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Requested","Review","Approved";
        }

        field(99999; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK;Request_No,"Line No.")
        {
            Clustered = true;
        }

    }

}
