pageextension 50524 "SODOpportunity_List50524" extends "Opportunity List"
{
    layout
    {
        AddBefore("Estimated Closing Date")
        {
            field("LastInteraction_SOD"; Rec."LastInteraction")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Estimated Closing Date")
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
