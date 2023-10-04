Reportextension 50506 "SODStandard_Sales___Quote" extends "Standard Sales - Quote"
{

    dataset
    {
        add("Line")
        {
            column("Unit_of_Measure_Code_Line_SOD"; "Line"."Unit of Measure Code")
            {
            }
        }
        add("Line")
        {
            column("Unit_of_Measure_Code_Line_Lbl_SOD"; "Line".FieldCaption("Unit of Measure Code"))
            {
            }
        }
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
        add("Line")
        {
            column("LDTIME_Line_SOD"; "Line"."LDTIME")
            {
            }
        }
        add("Line")
        {
            column("LDTIME_Line_Lbl_SOD"; "Line".FieldCaption("LDTIME"))
            {
            }
        }

    }

}
