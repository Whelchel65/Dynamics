pageextension 50526 "SODPurchase_Order_List50526" extends "Purchase Order List"
{
    layout
    {
        AddAfter("Amount")
        {
            field("Vendor Invoice No._SOD"; Rec."Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Amount Received Not Invoiced (LCY)")
        {
            field("Expected Receipt Date_SOD"; Rec."Expected Receipt Date")
            {
                ApplicationArea = all;
            }
            field("SentToVendor_SOD"; Rec."SentToVendor")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("No.")
        {
            field("JOBNO_SOD"; Rec."JOBNO")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Status")
        {
            field("Ready_To_Post_SOD"; Rec."Ready_To_Post")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
