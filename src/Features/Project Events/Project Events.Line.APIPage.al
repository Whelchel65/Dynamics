page 50817 "API Project Events LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Project Events Line';
    EntitySetCaption = 'Project Events Lines';
    EntityName = 'project eventsline';
    EntitySetName = 'project eventslines';

    ODataKeyFields = SystemId;
    SourceTable = "Project Events LineSOD";

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
                field(line_action; Rec."Line_Action")
                {
                    Caption = 'Line Action';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Notes';
                }
                field(date_created; Rec."Date_Created")
                {
                    Caption = 'Date Created';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
