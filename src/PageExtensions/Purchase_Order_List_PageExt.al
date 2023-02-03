pageextension 50525 "SODPurchase_Order_List" extends "Purchase Order List"
{
    layout
    {
        AddAfter("Amount")
        {
            field("Vendor Invoice No._SOD"; Rec."Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
