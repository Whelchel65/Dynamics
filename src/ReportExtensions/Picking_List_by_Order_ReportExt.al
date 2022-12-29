Reportextension 50507 "SODPicking_List_by_Order" extends "Picking List by Order"
{

    dataset
    {
        add("<Sales Line Comment>")
        {
            column("PkgLbl__Sales_Line_Comment__SOD"; "<Sales Line Comment>"."PkgLbl")
            {
            }
        }
        add("<Sales Line Comment>")
        {
            column("PkgLbl__Sales_Line_Comment__Lbl_SOD"; "<Sales Line Comment>".FieldCaption("PkgLbl"))
            {
            }
        }
        add("Sales Header")
        {
            column("PckNmbr_Sales_Header_SOD"; "Sales Header"."PckNmbr")
            {
            }
        }
        add("Sales Header")
        {
            column("PckNmbr_Sales_Header_Lbl_SOD"; "Sales Header".FieldCaption("PckNmbr"))
            {
            }
        }
        add("Sales Header")
        {
            column("CustPO_Sales_Header_SOD"; "Sales Header"."CustPO")
            {
            }
        }
        add("Sales Header")
        {
            column("CustPO_Sales_Header_Lbl_SOD"; "Sales Header".FieldCaption("CustPO"))
            {
            }
        }

    }
}
