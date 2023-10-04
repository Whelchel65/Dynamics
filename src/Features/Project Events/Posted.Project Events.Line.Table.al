table 50813 "Posted Project Events LineSOD"
{
    TableType = Normal;
    Caption = 'Posted Project Events Line';
    LookupPageId = 50810;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6;Line_Type; Option)
        {
            Caption = 'Line Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Change","Issue","Risk";
        }
        field(7; Description; Text[50])
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
        field(9;Line_Action; Option)
        {
            Caption = 'Line Action';
            DataClassification = ToBeClassified;
            OptionMembers = "","Avoid","Accept","Mitigate","Transfer","Update";
        }
        field(10; Notes; Text[2000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(11; Date_Created; Date)
        {
            Caption = 'Date Created';
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
        key(PK;no,"Line No.")
        {
            Clustered = true;
        }

    }

}
