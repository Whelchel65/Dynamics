table 50831 "Ops_Package LineSOD"
{
    TableType = Normal;
    Caption = 'Operations Package Line';
    LookupPageId = 50830;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(13; Drawing_Number; Text[20])
        {
            Caption = 'Drawing_Number';
            DataClassification = ToBeClassified;
        }
        field(14; LDescription; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(15; Eng_Package; Text[50])
        {
            Caption = 'Package_Name';
            DataClassification = ToBeClassified;
        }
        field(16; Drawing_Rev; Text[10])
        {
            Caption = 'Drawing_Rev';
            DataClassification = ToBeClassified;
        }
        field(21;Drawing_COmplete_; Option)
        {
            Caption = 'Drawing Complete?';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
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
