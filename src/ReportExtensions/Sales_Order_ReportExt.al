Reportextension 50509 "SODSales_Order" extends "Sales Order"
{

    dataset
    {
        add("Sales Line")
        {
            column("LDTIME_Sales_Line_SOD"; "Sales Line"."LDTIME")
            {
            }
        }
        add("Sales Line")
        {
            column("LDTIME_Sales_Line_Lbl_SOD"; "Sales Line".FieldCaption("LDTIME"))
            {
            }
        }

    }
}
