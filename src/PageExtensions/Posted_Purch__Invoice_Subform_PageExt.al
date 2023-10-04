pageextension 50515 "SODPosted_Purch__Invoice_50515" extends "Posted Purch. Invoice Subform"
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
