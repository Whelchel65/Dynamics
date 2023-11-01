pageextension 50513 "SODPosted_Sales_Invoice50513" extends "Posted Sales Invoice"
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
