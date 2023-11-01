table 50833 "Posted Ops_Package LineSOD"
{
    TableType = Normal;
    Caption = 'Posted Operations Package Line';
    LookupPageId = 50830;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(13;Line_Type; Option)
        {
            Caption = 'Line Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Note","Change","Risk","Issue";
        }
        field(14; LDescription; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(15; Date_Created; Date)
        {
            Caption = 'Date Created';
            DataClassification = ToBeClassified;
        }
        field(16; Line_Notes; Text[1000])
        {
            Caption = 'Line Notes';
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
