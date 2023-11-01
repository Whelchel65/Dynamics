pageextension 50520 "SODSales_Lines50520" extends "Sales Lines"
{
    layout
    {
        AddAfter("Description")
        {
            field("PkgLbl_SOD"; Rec."PkgLbl")
            {
                ApplicationArea = all;
            }
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
