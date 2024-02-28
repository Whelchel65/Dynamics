table 50861 "Eng_Package LineSOD"
{
    TableType = Normal;
    Caption = 'Engineering Package Line';
    LookupPageId = 50860;
    fields
    {

        field(10; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(70; Drawing_No; Text[50])
        {
            Caption = 'Drawing No';
            DataClassification = ToBeClassified;
        }
        field(80; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(90; Ops_Package; Code[20])
        {
            Caption = 'Ops Package';
            DataClassification = ToBeClassified;
            TableRelation = "Ops_Package HeaderSOD".no;
        }
        field(100; Rev; Text[50])
        {
            Caption = 'Rev';
            DataClassification = ToBeClassified;
        }
        field(110;Rev_Released; Option)
        {
            Caption = 'Rev Released';
            DataClassification = ToBeClassified;
            OptionMembers = "","No","Yes";
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
