page 50639 "API Posted Serv_Ticks LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Service Tickets Line';
    EntitySetCaption = 'Posted Service Tickets Lines';
    EntityName = 'postedserv_ticksline';
    EntitySetName = 'postedserv_tickslines';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Serv_Ticks LineSOD";

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
