pageextension 50503 "SODSales_Order" extends "Sales Order"
{
    layout
    {
        AddBefore("WorkDescription")
        {
            field("Quote_Expiration_SOD"; Rec."Quote_Expiration")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Due Date")
        {
            field("QBREF_SOD"; Rec."QBREF")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Package Tracking No.")
        {
            field("PckNmbr_SOD"; Rec."PckNmbr")
            {
                ApplicationArea = all;
            }
        }
        AddBefore("Quote No.")
        {
            field("CustPO_SOD"; Rec."CustPO")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
