pageextension 50505 "SODSales_Invoice_Subform50505" extends "Sales Invoice Subform"
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
