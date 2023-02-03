Reportextension 50508 "SODStandard_Purchase___Order" extends "Standard Purchase - Order"
{

    dataset
    {
        add("Purchase Header")
        {
            column("Buy_from_Contact_No__Purchase_Header_SOD"; "Purchase Header"."Buy-from Contact No.")
            {
            }
        }
        add("Purchase Header")
        {
            column("Buy_from_Contact_No__Purchase_Header_Lbl_SOD"; "Purchase Header".FieldCaption("Buy-from Contact No."))
            {
            }
        }
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
