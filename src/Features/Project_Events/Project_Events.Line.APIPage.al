page 50817 "API Project_Events LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Project Events Line';
    EntitySetCaption = 'Project Events Lines';
    EntityName = 'project_eventsline';
    EntitySetName = 'project_eventslines';

    ODataKeyFields = SystemId;
    SourceTable = "Project_Events LineSOD";

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
                field(line_type; Rec."Line_Type")
                {
                    Caption = 'Line Type';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(line_status; Rec."Line_Status")
                {
                    Caption = 'Line Status';
                }
                field(date_created; Rec."Date_Created")
                {
                    Caption = 'Date Created';
                }
                field(line_action; Rec."Line_Action")
                {
                    Caption = 'Line Action';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Notes';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
