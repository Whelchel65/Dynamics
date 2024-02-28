table 50862 "Posted Eng_Package HeaderSOD"
{
    TableType = Normal;
    Caption = 'Posted Engineering Package Header';
    LookupPageId = 50860;
    fields
    {

        field(10; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(20; Package_Name; Text[250])
        {
            Caption = 'Package Name';
            DataClassification = ToBeClassified;
        }
        field(30; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }
        field(40;Release_Status; Option)
        {
            Caption = 'Release Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Engineering","Released";
        }
        field(50;Release_to_Floor; Option)
        {
            Caption = 'Release to Floor';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }
        field(60; Notes; Text[500])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Posted Eng_Package LineSOD";
    begin
       Lines.SetRange("No",Rec."No");
       Lines.DeleteAll();
    end;

}
