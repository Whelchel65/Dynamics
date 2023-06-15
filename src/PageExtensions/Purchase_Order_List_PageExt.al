pageextension 50527 "SODPurchase_Order_List" extends "Purchase Order List"
{
    layout
    {
        AddAfter("Amount Received Not Invoiced (LCY)")
        {
            field("Expected Receipt Date_SOD"; Rec."Expected Receipt Date")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Amount")
        {
            field("Vendor Invoice No._SOD"; Rec."Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Amount Received Not Invoiced (LCY)")
        {
            field("SentToVendor_SOD"; Rec."SentToVendor")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("no.")
        {
            field("JOBNO_SOD"; Rec."JOBNO")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
