table 50631 "Service_Tickets LineSOD"
{
    TableType = Normal;
    Caption = 'Service Tickets';
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
