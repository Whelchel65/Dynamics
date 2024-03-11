page 50887 "API P50887 SOD"
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
                field(description; Rec."Description")
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
                field(projectmanager; Rec."Project Manager")
                {
                }
            }
        }
    }
}
