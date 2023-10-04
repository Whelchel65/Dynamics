page 50678 "API Posted Work_Packages Heade"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Work Package Header';
    EntitySetCaption = 'Posted Work Package Headers';
    EntityName = 'postedwork_packagesheader';
    EntitySetName = 'postedwork_packagesheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Work_Packages HeaderSOD";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(RepeaterGroup)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(wp_no; Rec."WP_No")
                {
                    Caption = 'WP No';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(status; Rec."Status")
                {
                    Caption = 'Status';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Planning Notes';
                }
                field(drawing_no; Rec."Drawing_No")
                {
                    Caption = 'Drawing No';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
            }
        }
    }
}
