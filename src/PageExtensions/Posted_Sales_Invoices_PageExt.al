pageextension 50516 "SODPosted_Sales_Invoices50516" extends "Posted Sales Invoices"
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
