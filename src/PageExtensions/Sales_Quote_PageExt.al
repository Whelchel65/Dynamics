pageextension 50502 "SODSales_Quote" extends "Sales Quote"
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
        modify("Quote Valid Until Date")
        {
            ShowMandatory = true;
        }
        modify("Salesperson Code")
        {
            ShowMandatory = true;
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
                if not (Rec."Quote Valid Until Date" = CalcDate('<-1M>',Today())) then begin
                    Error('Need Date- Standard 30 days',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Salesperson Code" <> '') then begin
                    Error('Enter SalesPerson Code',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Payment Terms Code" <> '') then begin
                    Error('Need Payment Terms Code',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Shipment Method Code" <> '') then begin
                    Error('If unknown, use Best Method',Mgt.DataCaption(Rec));
                end;
            end;
        }

    }
}
