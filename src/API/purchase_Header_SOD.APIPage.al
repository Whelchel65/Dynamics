page 50822 "API P50822 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Purchase_Header';
    EntitySetCaption = 'Purchase_Headers';
    EntityName = 'purchase_Header';
    EntitySetName = 'purchase_Headers';

    ODataKeyFields = SystemId;
    SourceTable = "Purchase Header";

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
                field(documenttype; Rec."Document Type")
                {
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
                field(paytoaddress; Rec."Pay-to Address")
                {
                }
                field(shiptocity; Rec."Ship-to City")
                {
                }
                field(shiptocontact; Rec."Ship-to Contact")
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
                field(postingdescription; Rec."Posting Description")
                {
                }
                field(paymenttermscode; Rec."Payment Terms Code")
                {
                }
                field(duedate; Rec."Due Date")
                {
                }
                field(purchasercode; Rec."Purchaser Code")
                {
                }
                field(comment; Rec."Comment")
                {
                }
                field(amount; Rec."Amount")
                {
                }
                field(vendorshipmentno_; Rec."Vendor Shipment No.")
                {
                }
                field(vendorinvoiceno_; Rec."Vendor Invoice No.")
                {
                }
                field(buyfromvendorname; Rec."Buy-from Vendor Name")
                {
                }
                field(status; Rec."Status")
                {
                }
                field(quoteno_; Rec."Quote No.")
                {
                }
                field(assigneduserid; Rec."Assigned User ID")
                {
                }
                field(vendorquote; Rec."VendorQuote")
                {
                }
                field(senttovendor; Rec."SentToVendor")
                {
                }
                field(jobno; Rec."JOBNO")
                {
                }
                field(lead_time; Rec."Lead_Time")
                {
                }
                field(planned_order_date; Rec."Planned_Order_Date")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
                field(systemcreatedby; Rec."SystemCreatedBy")
                {
                }
            }
        }
    }
}
