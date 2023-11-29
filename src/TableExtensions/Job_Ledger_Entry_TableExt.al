tableextension 50509 "SODJob_Ledger_Entry" extends "Job Ledger Entry"
{

    fields
    {
        field(50500;"Vendor_No"; Code[20])
        {
            Caption = 'Vendor_No';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Item."Vendor No." where("No." = field("No.")));
        }
        field(50501;"Vendor_Name"; Text[100])
        {
            Caption = 'Vendor_Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Vendor.Name where("No." = field(Vendor_No)));
        }
        field(50502;"Cost_Code"; Lookup)
        {
            Caption = 'Cost_Code';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Item.Cost_Code where("No." = field("No.")));
        }

    }
}
