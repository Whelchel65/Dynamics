pageextension 50518 "SODSales_Lines" extends "Sales Lines"
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


    }
    actions
    {

    }
}
