page 50856 "API Done_Project_TimeSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Completed Project Time';
    EntitySetCaption = 'Completed Project Times';
    EntityName = 'done_project_time';
    EntitySetName = 'done_project_times';

    ODataKeyFields = SystemId;
    SourceTable = "Done_Project_TimeSOD";

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
                field(entry_number; Rec."Entry_Number")
                {
                    Caption = 'Entry_Number';
                }
                field(employee; Rec."Employee")
                {
                    Caption = 'Employee';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job_No';
                }
                field(parent_task; Rec."Parent_Task")
                {
                    Caption = 'Parent_Task';
                }
                field(task_name; Rec."Task_Name")
                {
                    Caption = 'Task_Name';
                }
                field(operation; Rec."Operation")
                {
                    Caption = 'Operation';
                }
                field(planned; Rec."Planned")
                {
                    Caption = 'Planned';
                }
                field(drawing; Rec."Drawing")
                {
                    Caption = 'Drawing';
                }
                field(hours_worked; Rec."Hours_Worked")
                {
                    Caption = 'Hours_Worked';
                }
                field(date; Rec."Date")
                {
                    Caption = 'Date';
                }
                field(timesheet_reference; Rec."TimeSheet_Reference")
                {
                    Caption = 'TimeSheet_Reference';
                }
            }
        }
    }
}
