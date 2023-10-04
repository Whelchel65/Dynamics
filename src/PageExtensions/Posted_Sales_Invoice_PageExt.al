pageextension 50512 "SODPosted_Sales_Invoice50512" extends "Posted Sales Invoice"
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
