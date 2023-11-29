pageextension 50529 "SODPurchase_Order_List50529" extends "Purchase Order List"
{
    layout
    {
        AddAfter("Amount")
        {
            field("Vendor Invoice No._SOD"; Rec."Vendor Invoice No.")
            {
                ApplicationArea = all;
            }
            field("Ready_to_Post_SOD"; Rec."Ready_to_Post")
            {
                ApplicationArea = all;
            }
            field("Purchaser_Approval_SOD"; Rec."Purchaser_Approval")
            {
                ToolTip = 'Only to be filled out by original purchaser';                ApplicationArea = all;
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


    }
    actions
    {

    }
}
