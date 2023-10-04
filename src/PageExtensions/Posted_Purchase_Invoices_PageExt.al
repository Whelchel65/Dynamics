pageextension 50518 "SODPosted_Purchase_Invoic50518" extends "Posted Purchase Invoices"
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
