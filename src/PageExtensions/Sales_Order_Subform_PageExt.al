pageextension 50504 "SODSales_Order_Subform" extends "Sales Order Subform"
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
