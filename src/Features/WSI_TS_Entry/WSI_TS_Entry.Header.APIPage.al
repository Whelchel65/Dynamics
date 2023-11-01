page 50806 "API WSI_TS_Entry HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'WSI Time Entries Header';
    EntitySetCaption = 'WSI Time Entries Headers';
    EntityName = 'wsi_ts_entryheader';
    EntitySetName = 'wsi_ts_entryheaders';

    ODataKeyFields = SystemId;
    SourceTable = "WSI_TS_Entry HeaderSOD";

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
                field(date_assigned; Rec."Date_Assigned")
                {
                    Caption = 'Date Assigned';
                }
                field(hours_allocated; Rec."Hours_Allocated")
                {
                    Caption = 'Hours Allocated';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(parent_task; Rec."Parent_Task")
                {
                    Caption = 'Parent Task';
                }
                field(operation; Rec."Operation")
                {
                    Caption = 'Operation';
                }
                field(drawing_number; Rec."Drawing_Number")
                {
                    Caption = 'Drawing Number';
                }
                field(complete; Rec."Complete")
                {
                    Caption = 'Complete';
                }
                field(task_name; Rec."Task_Name")
                {
                    Caption = 'Task Name';
                }
                field(priority; Rec."Priority")
                {
                    Caption = 'Priority';
                }
                field(sum; Rec."Sum")
                {
                    Caption = 'Total Hours';
                }
            }
        }
    }
}
