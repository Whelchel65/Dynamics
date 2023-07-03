page 50666 "API Project_TimeSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Project Time';
    EntitySetCaption = 'Project Times';
    EntityName = 'project_time';
    EntitySetName = 'project_times';

    ODataKeyFields = SystemId;
    SourceTable = "Project_TimeSOD";

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
                    Caption = 'Entry Number';
                }
                field(employee; Rec."Employee")
                {
                    Caption = 'Employee';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(parent_task; Rec."Parent_Task")
                {
                    Caption = 'Parent Task';
                }
                field(task_name; Rec."Task_Name")
                {
                    Caption = 'Task Name';
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
                    Caption = 'Hours Worked';
                }
                field(date; Rec."Date")
                {
                    Caption = 'Date';
                }
            }
        }
    }
}
