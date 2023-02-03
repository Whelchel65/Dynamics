pageextension 50514 "SODPosted_Purch__Invoice_Subfo" extends "Posted Purch. Invoice Subform"
{
    layout
    {
        AddAfter("Description")
        {
            field("CostCode_SOD"; Rec."CostCode")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
