pageextension 50508 "SODPurchase_Order_Subform50508" extends "Purchase Order Subform"
{
    layout
    {
        AddAfter("Description")
        {
            field("Vendor Item No._SOD"; Rec."Vendor Item No.")
            {
                ApplicationArea = all;
            }
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
