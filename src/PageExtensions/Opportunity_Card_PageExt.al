pageextension 50510 "SODOpportunity_Card" extends "Opportunity Card"
{
    layout
    {
        AddAfter("Creation Date")
        {
            field("NextFllwUp_SOD"; Rec."NextFllwUp")
            {
                ApplicationArea = all;
            }
        }
        AddBefore("Date Closed")
        {
            field("LastInteraction_SOD"; Rec."LastInteraction")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
