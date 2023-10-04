pageextension 50506 "SODPurchase_Quote50506" extends "Purchase Quote"
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
