pageextension 50521 "SODPosted_Purchase_Invoic50521" extends "Posted Purchase Invoice Lines"
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
