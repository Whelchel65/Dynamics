pageextension 50521 "SODJob_Planning_Lines" extends "Job Planning Lines"
{
    layout
    {
        AddBefore("Description")
        {
            field("Tag_Number_SOD"; Rec."Tag_Number")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
