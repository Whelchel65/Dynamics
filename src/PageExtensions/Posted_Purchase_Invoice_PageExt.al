pageextension 50515 "SODPosted_Purchase_Invoice" extends "Posted Purchase Invoice"
{
    layout
    {
        AddBefore("Document Date")
        {
            field("User ID_SOD"; Rec."User ID")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
