pageextension 50521 "SODPurchase_Lines" extends "Purchase Lines"
{
    layout
    {
        AddAfter("Buy-from Vendor No.")
        {
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
                Editable = false;
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
