page 50637 "API Serv_Ticks LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Service Tickets Line';
    EntitySetCaption = 'Service Tickets Lines';
    EntityName = 'serv_ticksline';
    EntitySetName = 'serv_tickslines';

    ODataKeyFields = SystemId;
    SourceTable = "Serv_Ticks LineSOD";

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
                field(ticket_no; Rec."Ticket_No")
                {
                    Caption = 'Ticket No';
                }
                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(line_notes; Rec."Line_Notes")
                {
                    Caption = 'Line Notes';
                }
                field(line_date; Rec."Line_Date")
                {
                    Caption = 'Line Date';
                }
                field(line_status; Rec."Line_Status")
                {
                    Caption = 'Line Status';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
