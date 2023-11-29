table 50832 "Posted Ops_Package HeaderSOD"
{
    TableType = Normal;
    Caption = 'Posted Operations Package Header';
    LookupPageId = 50830;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3;OStatus; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Planning","Procurement","Production","Quality","Complete";
        }
        field(4; WBS; Text[50])
        {
            Caption = 'WBS';
            DataClassification = ToBeClassified;
        }
        field(5; Work_Package; Code[20])
        {
            Caption = 'Work Package';
            DataClassification = ToBeClassified;
            TableRelation = "Work_Packages HeaderSOD".WP_No;
        }
        field(6; WP_Status; Text[50])
        {
            Caption = 'WP Status';
            DataClassification = ToBeClassified;
        }
        field(7; WSI_Time_Entry; Code[20])
        {
            Caption = 'WSI Time Entry';
            DataClassification = ToBeClassified;
            TableRelation = "WSI_TS_Entry HeaderSOD".no;
        }
        field(8; TE_Status; Text[50])
        {
            Caption = 'TE Status';
            DataClassification = ToBeClassified;
        }
        field(9; WSI_Quality; Code[20])
        {
            Caption = 'WSI Quality';
            DataClassification = ToBeClassified;
            TableRelation = "Quality HeaderSOD".Quality_No;
        }
        field(10; Quality_Status; Text[50])
        {
            Caption = 'Quality Status';
            DataClassification = ToBeClassified;
        }
        field(11; Scope; Text[2000])
        {
            Caption = 'Scope';
            DataClassification = ToBeClassified;
        }
        field(12; Sum_of_Hours; Decimal)
        {
            Caption = 'Sum of Hours';
            DataClassification = ToBeClassified;
        }
        field(17;Complete; Option)
        {
            Caption = 'Complete';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }


    }
    keys
    {
        key(PK;no)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Posted Ops_Package LineSOD";
    begin
       Lines.SetRange("no",Rec."no");
       Lines.DeleteAll();
    end;

}
