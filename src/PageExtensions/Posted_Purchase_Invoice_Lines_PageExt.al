pageextension 50522 "SODPosted_Purchase_Invoice_Lin" extends "Posted Purchase Invoice Lines"
{
    layout
    {
        AddAfter("Description")
        {
            field("CCLOOKUP_SOD"; Rec."CCLOOKUP")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
