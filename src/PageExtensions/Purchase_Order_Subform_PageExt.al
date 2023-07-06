pageextension 50509 "SODPurchase_Order_Subform" extends "Purchase Order Subform"
{
    layout
    {
        AddAfter("Description")
        {
            field("Vendor Item No._SOD"; Rec."Vendor Item No.")
            {
                ApplicationArea = all;
            }
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
