tableextension 50500 "SODItem" extends "Item"
{

    fields
    {
        field(50500;"Vendor_Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
        }
        field(50501;"ManfName"; Text[50])
        {
            Caption = 'Manufacturer';
            DataClassification = ToBeClassified;
            TableRelation = "ManufacturersSOD"."Name";
        }
        field(50505;"ManfPartNum"; Text[50])
        {
            Caption = 'Manf. Part Number';
            DataClassification = ToBeClassified;
        }
        field(50506;"PackQTY"; Text[50])
        {
            Caption = 'Pack Quantity';
            DataClassification = ToBeClassified;
        }

    }
}
