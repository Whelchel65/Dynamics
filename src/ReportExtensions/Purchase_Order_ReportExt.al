Reportextension 50510 "SODPurchase_Order" extends "Purchase Order"
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
