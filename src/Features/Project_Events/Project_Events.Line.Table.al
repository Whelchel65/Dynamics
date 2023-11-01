table 50811 "Project_Events LineSOD"
{
    TableType = Normal;
    Caption = 'Project Events Line';
    LookupPageId = 50810;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(6;Line_Type; Option)
        {
            Caption = 'Line Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Change","Issue","Risk";
        }
        field(7; Description; Text[200])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(8;Line_Status; Option)
        {
            Caption = 'Line Status';
            DataClassification = ToBeClassified;
            OptionMembers = "New","Action Needed","In Progress","Complete";
        }
        field(9; Date_Created; Date)
        {
            Caption = 'Date Created';
            DataClassification = ToBeClassified;
        }
        field(10;Line_Action; Option)
        {
            Caption = 'Line Action';
            DataClassification = ToBeClassified;
            OptionMembers = "","Avoid","Accept","Mitigate","Transfer","Update";
        }
        field(11; Notes; Text[2000])
        {
            Caption = 'Notes';
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
        key(PK;No,"Line No.")
        {
            Clustered = true;
        }

    }

}
