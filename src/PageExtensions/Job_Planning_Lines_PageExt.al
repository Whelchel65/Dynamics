pageextension 50523 "SODJob_Planning_Lines" extends "Job Planning Lines"
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
        AddAfter("Invoiced Amount (LCY)")
        {
            field("PkgLbl_SOD"; Rec."PkgLbl")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
