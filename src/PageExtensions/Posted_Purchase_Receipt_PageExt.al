pageextension 50514 "SODPosted_Purchase_Receipt" extends "Posted Purchase Receipt"
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
