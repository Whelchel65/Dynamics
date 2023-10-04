page 50818 "API Posted Project Events Head"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Project Events Header';
    EntitySetCaption = 'Posted Project Events Headers';
    EntityName = 'postedproject eventsheader';
    EntitySetName = 'postedproject eventsheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Project Events HeaderSOD";

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
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(project_manager; Rec."Project_Manager")
                {
                    Caption = 'Project Manager';
                }
                field(project_status; Rec."Project_Status")
                {
                    Caption = 'Project Status';
                }
                field(project_description; Rec."Project_Description")
                {
                    Caption = 'Project Description';
                }
            }
        }
    }
}
