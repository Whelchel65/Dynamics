pageextension 50525 "SODContact_Card50525" extends "Contact Card"
{
    layout
    {
        AddAfter("Name")
        {
            field("Cold_Call_SOD"; Rec."Cold_Call")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
