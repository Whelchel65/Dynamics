page 50823 "API P50823 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Purchase_Line';
    EntitySetCaption = 'Purchase_Lines';
    EntityName = 'purchase_Line';
    EntitySetName = 'purchase_Lines';

    ODataKeyFields = SystemId;
    SourceTable = "Purchase Line";

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
                field(documentno_; Rec."Document No.")
                {
                }
                field(lineno_; Rec."Line No.")
                {
                }
                field(type; Rec."Type")
                {
                }
                field(no_; Rec."No.")
                {
                }
                field(description; Rec."Description")
                {
                }
                field(description2; Rec."Description 2")
                {
                }
                field(unitofmeasure; Rec."Unit of Measure")
                {
                }
                field(quantity; Rec."Quantity")
                {
                }
                field(qty_toinvoice; Rec."Qty. to Invoice")
                {
                }
                field(qty_toreceive; Rec."Qty. to Receive")
                {
                }
                field(directunitcost; Rec."Direct Unit Cost")
                {
                }
                field(unitcost_lcy_; Rec."Unit Cost (LCY)")
                {
                }
                field(jobno_; Rec."Job No.")
                {
                }
                field(quantityreceived; Rec."Quantity Received")
                {
                }
                field(quantityinvoiced; Rec."Quantity Invoiced")
                {
                }
                field(orderno_; Rec."Order No.")
                {
                }
                field(orderlineno_; Rec."Order Line No.")
                {
                }
                field(vendoritemno_; Rec."Vendor Item No.")
                {
                }
                field(gen_bus_postinggroup; Rec."Gen. Bus. Posting Group")
                {
                }
                field(gen_prod_postinggroup; Rec."Gen. Prod. Posting Group")
                {
                }
                field(unitcost; Rec."Unit Cost")
                {
                }
                field(jobtaskno_; Rec."Job Task No.")
                {
                }
                field(joblinetype; Rec."Job Line Type")
                {
                }
                field(vendor_name; Rec."Vendor_Name")
                {
                }
                field(cost_code; Rec."Cost_Code")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
                field(systemcreatedat; Rec."SystemCreatedAt")
                {
                }
                field(systemcreatedby; Rec."SystemCreatedBy")
                {
                }
            }
        }
    }
}
