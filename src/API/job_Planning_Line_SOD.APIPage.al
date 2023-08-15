page 50787 "API P50787 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Job_Planning_Line';
    EntitySetCaption = 'Job_Planning_Lines';
    EntityName = 'job_Planning_Line';
    EntitySetName = 'job_Planning_Lines';

    ODataKeyFields = SystemId;
    SourceTable = "Job Planning Line";

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
                field(lineno_; Rec."Line No.")
                {
                }
                field(jobno_; Rec."Job No.")
                {
                }
                field(planningdate; Rec."Planning Date")
                {
                }
                field(documentno_; Rec."Document No.")
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
                field(quantity; Rec."Quantity")
                {
                }
                field(directunitcost_lcy_; Rec."Direct Unit Cost (LCY)")
                {
                }
                field(unitcost_lcy_; Rec."Unit Cost (LCY)")
                {
                }
                field(totalcost_lcy_; Rec."Total Cost (LCY)")
                {
                }
                field(unitprice_lcy_; Rec."Unit Price (LCY)")
                {
                }
                field(totalprice_lcy_; Rec."Total Price (LCY)")
                {
                }
                field(resourcegroupno_; Rec."Resource Group No.")
                {
                }
                field(unitofmeasurecode; Rec."Unit of Measure Code")
                {
                }
                field(locationcode; Rec."Location Code")
                {
                }
                field(userid; Rec."User ID")
                {
                }
                field(gen_bus_postinggroup; Rec."Gen. Bus. Posting Group")
                {
                }
                field(gen_prod_postinggroup; Rec."Gen. Prod. Posting Group")
                {
                }
                field(jobtaskno_; Rec."Job Task No.")
                {
                }
                field(unitcost; Rec."Unit Cost")
                {
                }
                field(totalcost; Rec."Total Cost")
                {
                }
                field(unitprice; Rec."Unit Price")
                {
                }
                field(totalprice; Rec."Total Price")
                {
                }
                field(lineamount; Rec."Line Amount")
                {
                }
                field(serialno_; Rec."Serial No.")
                {
                }
                field(linetype; Rec."Line Type")
                {
                }
                field(description2; Rec."Description 2")
                {
                }
                field(status; Rec."Status")
                {
                }
                field(remainingqty_; Rec."Remaining Qty.")
                {
                }
                field(qty_posted; Rec."Qty. Posted")
                {
                }
                field(qty_transferredtoinvoice; Rec."Qty. Transferred to Invoice")
                {
                }
                field(qty_invoiced; Rec."Qty. Invoiced")
                {
                }
                field(reservedquantity; Rec."Reserved Quantity")
                {
                }
                field(planned; Rec."Planned")
                {
                }
                field(qty_perunitofmeasure; Rec."Qty. per Unit of Measure")
                {
                }
                field(quantity_base_; Rec."Quantity (Base)")
                {
                }
                field(qty_onjournal; Rec."Qty. on Journal")
                {
                }
                field(tag_number; Rec."Tag_Number")
                {
                }
                field(pkglbl; Rec."PkgLbl")
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
