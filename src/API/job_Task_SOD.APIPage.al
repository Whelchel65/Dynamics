page 50888 "API P50888 SOD"
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
            }
        }
    }
}
