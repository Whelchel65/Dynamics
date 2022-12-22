tableextension 50504 "SODPurchase_Line" extends "Purchase Line"
{

    fields
    {
        field(50510;"CostCode"; Text[6])
        {
            Caption = 'CostCode';
            DataClassification = ToBeClassified;
            TableRelation = "Cost_CodeSOD"."CostCode";
        }

    }
}
