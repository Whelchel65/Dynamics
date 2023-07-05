page 50698 "API Posted Quality HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Quality Header';
    EntitySetCaption = 'Posted Quality Headers';
    EntityName = 'postedqualityheader';
    EntitySetName = 'postedqualityheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Quality HeaderSOD";

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
                field(quality_no; Rec."Quality_No")
                {
                    Caption = 'Quality No';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(status; Rec."Status")
                {
                    Caption = 'Status';
                }
                field(sharepoint_link; Rec."SharePoint_Link")
                {
                    Caption = 'SharePoint Link';
                }
                field(drawing_number; Rec."Drawing_Number")
                {
                    Caption = 'Drawing Number';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Notes';
                }
                field(employee; Rec."Employee")
                {
                    Caption = 'Work Performed By';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
            }
        }
    }
}
