pageextension 50525 "SODOpportunity_Card" extends "Opportunity Card"
{
    layout
    {
        AddBefore("Date Closed")
        {
            field("LastInteraction_SOD"; Rec."LastInteraction")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Creation Date")
        {
            field("NextFllwUp_SOD"; Rec."NextFllwUp")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
