table 50692 "Posted Quality HeaderSOD"
{
    TableType = Normal;
    Caption = 'Posted Quality Header';
    LookupPageId = 50690;
    fields
    {

        field(1; Quality_No; Code[20])
        {
            Caption = 'Quality No';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3; Status; Code[20])
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            TableRelation = Quality_StatusSOD.Status;
        }
        field(5; Drawing_Number; Text[50])
        {
            Caption = 'Drawing Number';
            DataClassification = ToBeClassified;
        }
        field(6; Notes; Text[2000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(12; Employee; Text[50])
        {
            Caption = 'Work Performed By';
            DataClassification = ToBeClassified;
        }
        field(14; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }
        field(17; Ops_Package; Code[20])
        {
            Caption = 'Ops Package';
            DataClassification = ToBeClassified;
            TableRelation = "Ops_Package HeaderSOD".no;
        }


    }
    keys
    {
        key(PK;Quality_No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Posted Quality LineSOD";
    begin
       Lines.SetRange("Quality_No",Rec."Quality_No");
       Lines.DeleteAll();
    end;

}
