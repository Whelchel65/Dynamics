pageextension 50522 "SODJob_Planning_Lines50522" extends "Job Planning Lines"
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
