pageextension 50526 "SODContact_List50526" extends "Contact List"
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
