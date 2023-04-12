pageextension 50511 "SODPurchase_Quote_Subform" extends "Purchase Quote Subform"
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
