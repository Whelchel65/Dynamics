pageextension 50516 "SODPosted_Purchase_Receipts" extends "Posted Purchase Receipts"
{
    layout
    {
        AddAfter("No.")
        {
            field("Order No._SOD"; Rec."Order No.")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
