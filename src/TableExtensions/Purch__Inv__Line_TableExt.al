tableextension 50506 "SODPurch__Inv__Line" extends "Purch. Inv. Line"
{

    fields
    {
        field(50512;"CCLOOKUP"; Code[10])
        {
            Caption = 'Cost Code ';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Item."Purchasing Code" where("No." = field("No.")));
        }

    }
}
