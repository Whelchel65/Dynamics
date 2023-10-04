Reportextension 50501 "SODPurchase___Quote" extends "Purchase - Quote"
{

    dataset
    {
        add("Purchase Header")
        {
            column("VendorQuote_Purchase_Header_SOD"; "Purchase Header"."VendorQuote")
            {
            }
        }
        add("Purchase Header")
        {
            column("VendorQuote_Purchase_Header_Lbl_SOD"; "Purchase Header".FieldCaption("VendorQuote"))
            {
            }
        }

    }

}
