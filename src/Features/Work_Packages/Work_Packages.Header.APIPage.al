page 50676 "API Work_Packages HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Work Package Header';
    EntitySetCaption = 'Work Package Headers';
    EntityName = 'work_packagesheader';
    EntitySetName = 'work_packagesheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Work_Packages HeaderSOD";

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
                    Caption = 'Notes';
                }
                field(drawing_no; Rec."Drawing_No")
                {
                    Caption = 'Drawing No';
                }
                field(ops_package; Rec."Ops_Package")
                {
                    Caption = 'Ops_Package';
                }
                field(need_by; Rec."Need_By")
                {
                    Caption = 'Need By';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
            }
        }
    }
}
