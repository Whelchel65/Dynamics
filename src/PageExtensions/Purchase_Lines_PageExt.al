pageextension 50514 "SODPurchase_Lines" extends "Purchase Lines"
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