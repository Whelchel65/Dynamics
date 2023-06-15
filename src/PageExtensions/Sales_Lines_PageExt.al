pageextension 50520 "SODSales_Lines" extends "Sales Lines"
{
    layout
    {
        AddAfter("Description")
        {
            field("PkgLbl_SOD"; Rec."PkgLbl")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Description")
        {
            field("LDTIME_SOD"; Rec."LDTIME")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
