page 50836 "API Ops_Package HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Operations Package Header';
    EntitySetCaption = 'Operations Package Headers';
    EntityName = 'ops_packageheader';
    EntitySetName = 'ops_packageheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Ops_Package HeaderSOD";

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
                field(no; Rec."no")
                {
                    Caption = 'no';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(ostatus; Rec."OStatus")
                {
                    Caption = 'Status';
                }
                field(wbs; Rec."WBS")
                {
                    Caption = 'WBS';
                }
                field(work_package; Rec."Work_Package")
                {
                    Caption = 'Work Package';
                }
                field(wp_status; Rec."WP_Status")
                {
                    Caption = 'WP Status';
                }
                field(wsi_time_entry; Rec."WSI_Time_Entry")
                {
                    Caption = 'WSI Time Entry';
                }
                field(te_status; Rec."TE_Status")
                {
                    Caption = 'TE Status';
                }
                field(wsi_quality; Rec."WSI_Quality")
                {
                    Caption = 'WSI Quality';
                }
                field(quality_status; Rec."Quality_Status")
                {
                    Caption = 'Quality Status';
                }
                field(scope; Rec."Scope")
                {
                    Caption = 'Scope';
                }
                field(sum_of_hours; Rec."Sum_of_Hours")
                {
                    Caption = 'Sum of Hours';
                }
                field(complete; Rec."Complete")
                {
                    Caption = 'Complete';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(drawing_no; Rec."Drawing_No")
                {
                    Caption = 'Drawing No';
                }
                field(quality_complete; Rec."Quality_Complete")
                {
                    Caption = 'Quality Complete?';
                }
            }
        }
    }
}
