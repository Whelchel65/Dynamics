tableextension 50506 "SODPurch__Inv__Line" extends "Purch. Inv. Line"
{

    fields
    {
        field(50500;"CostCode"; Text[6])
        {
            Caption = 'CostCode';
            DataClassification = ToBeClassified;
            TableRelation = "Cost_CodeSOD".CostCode;
        }

    }
}
