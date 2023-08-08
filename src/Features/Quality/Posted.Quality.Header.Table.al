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
        field(2; Description; Text[200])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3;Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "","In Production","Ready for Inspection","Rework Needed","Approved";
        }
        field(4; SharePoint_Link; Text[250])
        {
            Caption = 'SharePoint Link';
            DataClassification = ToBeClassified;
            ExtendedDataType = URL;
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
