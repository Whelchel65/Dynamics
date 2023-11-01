pageextension 50518 "SODPosted_Purchase_Receip50518" extends "Posted Purchase Receipts"
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
