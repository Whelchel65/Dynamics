pageextension 50523 "SODOpportunity_List" extends "Opportunity List"
{
    layout
    {
        AddAfter("Estimated Closing Date")
        {
            field("NextFllwUp_SOD"; Rec."NextFllwUp")
            {
                ApplicationArea = all;
            }
        }
        AddBefore("Estimated Closing Date")
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
