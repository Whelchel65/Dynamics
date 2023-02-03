tableextension 50504 "SODPurchase_Line" extends "Purchase Line"
{

    fields
    {
        field(50501;"Vendor_Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Vendor.Name where("No." = field("Buy-from Vendor No.")));
        }
        field(50510;"CostCode"; Text[6])
        {
            Caption = 'CostCode';
            DataClassification = ToBeClassified;
            TableRelation = "Cost_CodeSOD"."CostCode";
        }

    }
}
