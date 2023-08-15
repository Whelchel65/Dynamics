page 50786 "API P50786 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Job_Task';
    EntitySetCaption = 'Job_Tasks';
    EntityName = 'job_Task';
    EntitySetName = 'job_Tasks';

    ODataKeyFields = SystemId;
    SourceTable = "Job Task";

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
                field(jobno_; Rec."Job No.")
                {
                }
                field(jobtaskno_; Rec."Job Task No.")
                {
                }
                field(description; Rec."Description")
                {
                }
                field(jobtasktype; Rec."Job Task Type")
                {
                }
                field(wiptotal; Rec."WIP-Total")
                {
                }
                field(jobpostinggroup; Rec."Job Posting Group")
                {
                }
                field(wipmethod; Rec."WIP Method")
                {
                }
                field(schedule_totalcost_; Rec."Schedule (Total Cost)")
                {
                }
                field(schedule_totalprice_; Rec."Schedule (Total Price)")
                {
                }
                field(usage_totalcost_; Rec."Usage (Total Cost)")
                {
                }
                field(usage_totalprice_; Rec."Usage (Total Price)")
                {
                }
                field(contract_totalcost_; Rec."Contract (Total Cost)")
                {
                }
                field(contract_totalprice_; Rec."Contract (Total Price)")
                {
                }
                field(contract_invoicedprice_; Rec."Contract (Invoiced Price)")
                {
                }
                field(contract_invoicedcost_; Rec."Contract (Invoiced Cost)")
                {
                }
                field(postingdatefilter; Rec."Posting Date Filter")
                {
                }
                field(planningdatefilter; Rec."Planning Date Filter")
                {
                }
                field(totaling; Rec."Totaling")
                {
                }
                field(newpage; Rec."New Page")
                {
                }
                field(no_ofblanklines; Rec."No. of Blank Lines")
                {
                }
                field(indentation; Rec."Indentation")
                {
                }
                field(recognizedsalesamount; Rec."Recognized Sales Amount")
                {
                }
                field(recognizedcostsamount; Rec."Recognized Costs Amount")
                {
                }
                field(recognizedsalesglamount; Rec."Recognized Sales G/L Amount")
                {
                }
                field(recognizedcostsglamount; Rec."Recognized Costs G/L Amount")
                {
                }
                field(globaldimension1code; Rec."Global Dimension 1 Code")
                {
                }
                field(globaldimension2code; Rec."Global Dimension 2 Code")
                {
                }
                field(outstandingorders; Rec."Outstanding Orders")
                {
                }
                field(amt_rcd_notinvoiced; Rec."Amt. Rcd. Not Invoiced")
                {
                }
                field(remaining_totalcost_; Rec."Remaining (Total Cost)")
                {
                }
                field(remaining_totalprice_; Rec."Remaining (Total Price)")
                {
                }
                field(startdate; Rec."Start Date")
                {
                }
                field(enddate; Rec."End Date")
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
                field(systemmodifiedat; Rec."SystemModifiedAt")
                {
                }
                field(systemmodifiedby; Rec."SystemModifiedBy")
                {
                }
            }
        }
    }
}
