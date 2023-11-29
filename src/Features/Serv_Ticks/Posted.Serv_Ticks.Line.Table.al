table 50633 "Posted Serv_Ticks LineSOD"
{
    TableType = Normal;
    Caption = 'Posted Service Tickets Line';
    LookupPageId = 50630;
    fields
    {

        field(505100; Ticket_No; Code[20])
        {
            Caption = 'Ticket No';
            DataClassification = ToBeClassified;
        }
        field(505111;Type; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Note","Email","Call","Task";
        }
        field(505112; Line_Notes; Text[500])
        {
            Caption = 'Line Notes';
            DataClassification = ToBeClassified;
        }
        field(505121; Line_Date; Date)
        {
            Caption = 'Line Date';
            DataClassification = ToBeClassified;
        }
        field(505200;Line_Status; Option)
        {
            Caption = 'Line Status';
            DataClassification = ToBeClassified;
            OptionMembers = "","New","In Progress","Completed";
        }

        field(99999; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK;Ticket_No,"Line No.")
        {
            Clustered = true;
        }

    }

}
