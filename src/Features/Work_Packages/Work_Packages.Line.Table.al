table 50671 "Work_Packages LineSOD"
{
    TableType = Normal;
    Caption = 'Work Package Line';
    LookupPageId = 50670;
    fields
    {

        field(1; WP_No; Code[20])
        {
            Caption = 'WP No';
            DataClassification = ToBeClassified;
        }
        field(6; Checklist; Text[500])
        {
            Caption = 'Checklist';
            DataClassification = ToBeClassified;
        }
        field(7;Line_Status; Option)
        {
            Caption = 'Line Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Not Started"," Procurement"," In-House"," Engineering"," Complete";
        }
        field(8; Date_Complete; Date)
        {
            Caption = 'Date Complete';
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
        key(PK;WP_No,"Line No.")
        {
            Clustered = true;
        }

    }

}
