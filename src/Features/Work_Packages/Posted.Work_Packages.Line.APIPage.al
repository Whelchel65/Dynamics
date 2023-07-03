page 50679 "API Posted Work_Packages LineS"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Work Package Line';
    EntitySetCaption = 'Posted Work Package Lines';
    EntityName = 'postedwork_packagesline';
    EntitySetName = 'postedwork_packageslines';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Work_Packages LineSOD";

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
                field(checklist; Rec."Checklist")
                {
                    Caption = 'Checklist';
                }
                field(line_status; Rec."Line_Status")
                {
                    Caption = 'Line Status';
                }
                field(date_complete; Rec."Date_Complete")
                {
                    Caption = 'Date Complete';
                }
            }
        }
    }
}
