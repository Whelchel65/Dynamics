page 50886 "API P50886 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Purch__Inv__Line';
    EntitySetCaption = 'Purch__Inv__Lines';
    EntityName = 'purch__Inv__Line';
    EntitySetName = 'purch__Inv__Lines';

    ODataKeyFields = SystemId;
    SourceTable = "Purch. Inv. Line";

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
                field(unitofmeasure; Rec."Unit of Measure")
                {
                }
                field(quantity; Rec."Quantity")
                {
                }
                field(directunitcost; Rec."Direct Unit Cost")
                {
                }
                field(unitcost_lcy_; Rec."Unit Cost (LCY)")
                {
                }
                field(amount; Rec."Amount")
                {
                }
                field(amountincludingvat; Rec."Amount Including VAT")
                {
                }
                field(jobno_; Rec."Job No.")
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
                field(unitcost; Rec."Unit Cost")
                {
                }
                field(lineamount; Rec."Line Amount")
                {
                }
                field(jobtaskno_; Rec."Job Task No.")
                {
                }
                field(joblinetype; Rec."Job Line Type")
                {
                }
                field(purchasingcode; Rec."Purchasing Code")
                {
                }
                field(cclookup; Rec."CCLOOKUP")
                {
                }
            }
        }
    }
}
