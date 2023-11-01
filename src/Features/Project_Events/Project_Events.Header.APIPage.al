page 50816 "API Project_Events HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Project Events Header';
    EntitySetCaption = 'Project Events Headers';
    EntityName = 'project_eventsheader';
    EntitySetName = 'project_eventsheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Project_Events HeaderSOD";

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
                field(no; Rec."No")
                {
                    Caption = 'No';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(project_description; Rec."Project_Description")
                {
                    Caption = 'Project Description';
                }
                field(project_status; Rec."Project_Status")
                {
                    Caption = 'Project Status';
                }
                field(project_manager; Rec."Project_Manager")
                {
                    Caption = 'Project Manager';
                }
            }
        }
    }
}
