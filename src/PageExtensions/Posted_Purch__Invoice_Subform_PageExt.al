pageextension 50516 "SODPosted_Purch__Invoice_50516" extends "Posted Purch. Invoice Subform"
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
