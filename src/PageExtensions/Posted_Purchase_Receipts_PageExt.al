pageextension 50517 "SODPosted_Purchase_Receipts" extends "Posted Purchase Receipts"
{
    layout
    {
        AddAfter("No.")
        {
            field("Order No._SOD"; Rec."Order No.")
            {
                ApplicationArea = all;
            }
            field("JOBNO_SOD"; Rec."JOBNO")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
