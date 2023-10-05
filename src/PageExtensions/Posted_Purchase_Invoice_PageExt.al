pageextension 50514 "SODPosted_Purchase_Invoic50514" extends "Posted Purchase Invoice"
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
