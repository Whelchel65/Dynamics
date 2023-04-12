pageextension 50508 "SODPurchase_Order_Subform" extends "Purchase Order Subform"
{
    layout
    {
        AddAfter("Description")
        {
            field("Vendor Item No._SOD"; Rec."Vendor Item No.")
            {
                ApplicationArea = all;
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
