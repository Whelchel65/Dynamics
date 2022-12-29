pageextension 50507 "SODPurchase_Order" extends "Purchase Order"
{
    layout
    {
        AddAfter("Vendor Order No.")
        {
            field("VendorQuote_SOD"; Rec."VendorQuote")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
