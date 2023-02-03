pageextension 50515 "SODPosted_Sales_Invoices" extends "Posted Sales Invoices"
{
    layout
    {
        AddAfter("Due Date")
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
