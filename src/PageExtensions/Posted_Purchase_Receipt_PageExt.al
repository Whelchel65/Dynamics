pageextension 50514 "SODPosted_Purchase_Receip50514" extends "Posted Purchase Receipt"
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
