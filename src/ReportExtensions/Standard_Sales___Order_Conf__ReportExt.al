Reportextension 50507 "SODStandard_Sales___Order_Conf" extends "Standard Sales - Order Conf."
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
        add("Header")
        {
            column("CustPO_Header_SOD"; "Header"."CustPO")
            {
            }
        }
        add("Header")
        {
            column("CustPO_Header_Lbl_SOD"; "Header".FieldCaption("CustPO"))
            {
            }
        }

    }
}
