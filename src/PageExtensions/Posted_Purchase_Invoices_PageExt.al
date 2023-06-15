pageextension 50519 "SODPosted_Purchase_Invoices" extends "Posted Purchase Invoices"
{
    layout
    {
        AddAfter("Closed")
        {
            field("User ID_SOD"; Rec."User ID")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
