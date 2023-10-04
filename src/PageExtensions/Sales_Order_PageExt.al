pageextension 50503 "SODSales_Order50503" extends "Sales Order"
{
    layout
    {
        AddBefore("Work Description")
        {
            field("CustPO_SOD"; Rec."CustPO")
            {
                ApplicationArea = all;
            }
        }
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
        modify("Payment Terms Code")
        {
            ShowMandatory = true;
        }
        modify("Shipment Method Code")
        {
            ShowMandatory = true;
        }


    }
    actions
    {
        modify(Approvals)
        {
            trigger OnBeforeAction()
            var
                Mgt : codeunit "Field Transfers Mgt. SOD";
                Lines: Record "Sales Line";
            begin
                if not (Rec."Payment Terms Code" <> '') then begin
                    Error('Need to have value',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Shipment Method Code" <> '') then begin
                    Error('Need to have Value',Mgt.DataCaption(Rec));
                end;
                if not (Rec.CustPO <> '') then begin
                    Error('Need to enter Customer PO',Mgt.DataCaption(Rec));
                end;
            end;
        }

    }
}
