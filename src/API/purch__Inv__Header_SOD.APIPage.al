page 50885 "API P50885 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Purch__Inv__Header';
    EntitySetCaption = 'Purch__Inv__Headers';
    EntityName = 'purch__Inv__Header';
    EntitySetName = 'purch__Inv__Headers';

    ODataKeyFields = SystemId;
    SourceTable = "Purch. Inv. Header";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(APIRepeaterSOD)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(buyfromvendorno_; Rec."Buy-from Vendor No.")
                {
                }
                field(no_; Rec."No.")
                {
                }
                field(paytovendorno_; Rec."Pay-to Vendor No.")
                {
                }
                field(paytoname; Rec."Pay-to Name")
                {
                }
                field(shiptocode; Rec."Ship-to Code")
                {
                }
                field(shiptoname; Rec."Ship-to Name")
                {
                }
                field(orderdate; Rec."Order Date")
                {
                }
                field(postingdate; Rec."Posting Date")
                {
                }
                field(expectedreceiptdate; Rec."Expected Receipt Date")
                {
                }
                field(paymenttermscode; Rec."Payment Terms Code")
                {
                }
                field(shipmentmethodcode; Rec."Shipment Method Code")
                {
                }
                field(orderno_; Rec."Order No.")
                {
                }
                field(amount; Rec."Amount")
                {
                }
                field(amountincludingvat; Rec."Amount Including VAT")
                {
                }
                field(vendororderno_; Rec."Vendor Order No.")
                {
                }
                field(vendorinvoiceno_; Rec."Vendor Invoice No.")
                {
                }
                field(userid; Rec."User ID")
                {
                }
            }
        }
    }
}
