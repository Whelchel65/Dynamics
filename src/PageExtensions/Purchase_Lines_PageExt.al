pageextension 50519 "SODPurchase_Lines" extends "Purchase Lines"
{
    layout
    {
        AddAfter("Buy-from Vendor No.")
        {
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
                Enabled = false;
            }
        }
        AddAfter("Description")
        {
            field("CostCode_SOD"; Rec."CostCode")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
