pageextension 50516 "SODPosted_Purch__Invoice_Subfo" extends "Posted Purch. Invoice Subform"
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
