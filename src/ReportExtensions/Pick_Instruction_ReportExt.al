Reportextension 50500 "SODPick_Instruction" extends "Pick Instruction"
{

    dataset
    {
        add("Sales Line")
        {
            column("PkgLbl_Sales_Line_SOD"; "Sales Line"."PkgLbl")
            {
            }
        }
        add("Sales Line")
        {
            column("PkgLbl_Sales_Line_Lbl_SOD"; "Sales Line".FieldCaption("PkgLbl"))
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
