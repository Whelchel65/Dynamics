Reportextension 50503 "SODStandard_Sales___Quote" extends "Standard Sales - Quote"
{

    dataset
    {
        add("Header")
        {
            column("Quote_Expiration_Header_SOD"; "Header"."Quote_Expiration")
            {
            }
        }
        add("Header")
        {
            column("Quote_Expiration_Header_Lbl_SOD"; "Header".FieldCaption("Quote_Expiration"))
            {
            }
        }
        add("Line")
        {
            column("LineNumber_Line_SOD"; "Line"."LineNumber")
            {
            }
        }
        add("Line")
        {
            column("LineNumber_Line_Lbl_SOD"; "Line".FieldCaption("LineNumber"))
            {
            }
        }

    }
}
