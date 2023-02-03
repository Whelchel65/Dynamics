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
        AddBefore("Work Description")
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
