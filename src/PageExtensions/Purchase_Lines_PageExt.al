pageextension 50520 "SODPurchase_Lines50520" extends "Purchase Lines"
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
            field("Cost_Code_SOD"; Rec."Cost_Code")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
