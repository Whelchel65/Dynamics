table 50672 "Posted Work_Packages HeaderSOD"
{
    TableType = Normal;
    Caption = 'Posted Work Package Header';
    LookupPageId = 50670;
    fields
    {

        field(1; WP_No; Code[20])
        {
            Caption = 'WP No';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3;Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Work Package Needed"," Package Complete"," Information Needed","Turned Over","In Progress","Parts on Order";
        }
        field(4; Notes; Text[2000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(5; Drawing_No; Text[50])
        {
            Caption = 'Drawing No';
            DataClassification = ToBeClassified;
        }
        field(9; Ops_Package; Code[20])
        {
            Caption = 'Ops_Package';
            DataClassification = ToBeClassified;
            TableRelation = "Ops_Package HeaderSOD".no;
        }
        field(10; Need_By; Date)
        {
            Caption = 'Need By';
            DataClassification = ToBeClassified;
        }
        field(14; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }


    }
    keys
    {
        key(PK;WP_No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Posted Work_Packages LineSOD";
    begin
       Lines.SetRange("WP_No",Rec."WP_No");
       Lines.DeleteAll();
    end;

}
