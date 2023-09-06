page 50815 "API P50815 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Job';
    EntitySetCaption = 'Jobs';
    EntityName = 'job';
    EntitySetName = 'jobs';

    ODataKeyFields = SystemId;
    SourceTable = "Job";

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
                field(no_; Rec."No.")
                {
                }
                field(searchdescription; Rec."Search Description")
                {
                }
                field(description; Rec."Description")
                {
                }
                field(description2; Rec."Description 2")
                {
                }
                field(billtocustomerno_; Rec."Bill-to Customer No.")
                {
                }
                field(creationdate; Rec."Creation Date")
                {
                }
                field(startingdate; Rec."Starting Date")
                {
                }
                field(endingdate; Rec."Ending Date")
                {
                }
                field(status; Rec."Status")
                {
                }
                field(personresponsible; Rec."Person Responsible")
                {
                }
                field(jobpostinggroup; Rec."Job Posting Group")
                {
                }
                field(no_series; Rec."No. Series")
                {
                }
                field(projectmanager; Rec."Project Manager")
                {
                }
                field(selltocustomerno_; Rec."Sell-to Customer No.")
                {
                }
                field(selltocustomername; Rec."Sell-to Customer Name")
                {
                }
                field(selltocustomername2; Rec."Sell-to Customer Name 2")
                {
                }
                field(selltoaddress; Rec."Sell-to Address")
                {
                }
                field(selltoaddress2; Rec."Sell-to Address 2")
                {
                }
                field(selltocity; Rec."Sell-to City")
                {
                }
                field(selltocontact; Rec."Sell-to Contact")
                {
                }
                field(selltopostcode; Rec."Sell-to Post Code")
                {
                }
                field(selltocounty; Rec."Sell-to County")
                {
                }
                field(shiptoaddress; Rec."Ship-to Address")
                {
                }
                field(shiptoaddress2; Rec."Ship-to Address 2")
                {
                }
                field(shiptocity; Rec."Ship-to City")
                {
                }
                field(shiptocontact; Rec."Ship-to Contact")
                {
                }
                field(shiptopostcode; Rec."Ship-to Post Code")
                {
                }
                field(shiptocounty; Rec."Ship-to County")
                {
                }
                field(shiptocountryregioncode; Rec."Ship-to Country/Region Code")
                {
                }
                field(job_notes; Rec."Job_Notes")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
            }
        }
    }
}
