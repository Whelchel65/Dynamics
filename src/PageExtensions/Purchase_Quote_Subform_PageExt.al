pageextension 50512 "SODPurchase_Quote_Subform50512" extends "Purchase Quote Subform"
{
    layout
    {
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
