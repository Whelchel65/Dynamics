table 50713 "Closed Sales_Leads LineSOD"
{
    TableType = Normal;
    Caption = 'Closed Sales Propects Line';
    LookupPageId = 50710;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(19;Line_Type; Option)
        {
            Caption = 'Line Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Email","Phone Call","Text","In Person Visit","Note";
        }
        field(20; LineDate; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(21; LineNotes; Text[2000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(27; SP_Code; Code[20])
        {
            Caption = 'Salesperson Code';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Code;
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
