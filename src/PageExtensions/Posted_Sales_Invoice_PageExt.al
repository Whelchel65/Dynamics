pageextension 50511 "SODPosted_Sales_Invoice" extends "Posted Sales Invoice"
{
    layout
    {
        AddAfter("Order No.")
        {
            field("QBREF_SOD"; Rec."QBREF")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
