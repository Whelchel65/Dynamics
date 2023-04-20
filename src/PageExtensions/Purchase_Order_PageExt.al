pageextension 50507 "SODPurchase_Order" extends "Purchase Order"
{
    layout
    {
        AddAfter("Vendor Order No.")
        {
            field("VendorQuote_SOD"; Rec."VendorQuote")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Posting Description")
        {
            field("SentToVendor_SOD"; Rec."SentToVendor")
            {
                ApplicationArea = all;
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
                if not (Rec."Expected Receipt Date" > CalcDate('<1W>',Today())) then begin
                    Error('Ensure Date is Accurate',Mgt.DataCaption(Rec));
                end;
                if not (Rec.SentToVendor > 0D) then begin
                    Error('Need to enter date PO was sent to vendor',Mgt.DataCaption(Rec));
                end;
            end;
        }

    }
}
