pageextension 50503 "SODPurchase_Quote" extends "Purchase Quote"
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
