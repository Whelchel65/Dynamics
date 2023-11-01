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
        AddAfter("No.")
        {
            field("Vendor_No__SOD"; Rec."Vendor_No_")
            {
                ApplicationArea = all;
            }
            field("Vendor_Item_No__SOD"; Rec."Vendor_Item_No_")
            {
                ApplicationArea = all;
            }
            field("ManfName_SOD"; Rec."ManfName")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
