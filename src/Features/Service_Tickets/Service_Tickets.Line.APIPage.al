page 50637 "API Service_Tickets LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Service Tickets Line';
    EntitySetCaption = 'Service Tickets Lines';
    EntityName = 'service_ticketsline';
    EntitySetName = 'service_ticketslines';

    ODataKeyFields = SystemId;
    SourceTable = "Service_Tickets LineSOD";

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
            }
        }
    }
}
