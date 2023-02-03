Reportextension 50507 "SODStandard_Sales___Order_Conf" extends "Standard Sales - Order Conf."
{

    dataset
    {
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
