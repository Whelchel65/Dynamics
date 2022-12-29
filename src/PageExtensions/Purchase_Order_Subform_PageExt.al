pageextension 50508 "SODPurchase_Order_Subform" extends "Purchase Order Subform"
{
    layout
    {
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
