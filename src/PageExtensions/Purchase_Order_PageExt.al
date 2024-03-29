pageextension 50507 "SODPurchase_Order50507" extends "Purchase Order"
{
    layout
    {
        AddAfter("Buy-from Vendor No.")
        {
            field("Tax_Exempt_SOD"; Rec."Tax_Exempt")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Expected Receipt Date")
        {
            field("Lead_Time_SOD"; Rec."Lead_Time")
            {
                ApplicationArea = all;
            }
            field("Planned_Order_Date_SOD"; Rec."Planned_Order_Date")
            {
                ToolTip = 'Only use this field if building a PO that is not being sent to vendor immediately';                ApplicationArea = all;
            }
        }
        AddAfter("Posting Description")
        {
            field("SentToVendor_SOD"; Rec."SentToVendor")
            {
                ApplicationArea = all;
            }
            field("JOBNO_SOD"; Rec."JOBNO")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Vendor Order No.")
        {
            field("VendorQuote_SOD"; Rec."VendorQuote")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Your Reference")
        {
            field("Ready_to_Post_SOD"; Rec."Ready_to_Post")
            {
                ApplicationArea = all;
            }
            field("Purchaser_Approval_SOD"; Rec."Purchaser_Approval")
            {
                ToolTip = 'Only to be filled out by original purchaser';                ApplicationArea = all;
            }
        }
        modify("Expected Receipt Date")
        {
            ShowMandatory = true;
        }


    }
    actions
    {
        modify("&Print")
        {
            trigger OnBeforeAction()
            var
                Mgt : codeunit "Field Transfers Mgt. SOD";
                Lines: Record "Purchase Line";
            begin
                if not (Rec."Expected Receipt Date" > 0D) then begin
                    Error('Enter Date',Mgt.DataCaption(Rec));
                end;
                if not (Rec.SentToVendor > 0D) then begin
                    Error('Need to enter date PO was sent to vendor',Mgt.DataCaption(Rec));
                end;
            end;
        }

    }
}
