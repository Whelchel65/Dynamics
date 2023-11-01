pageextension 50526 "SODOpportunity_Card50526" extends "Opportunity Card"
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
