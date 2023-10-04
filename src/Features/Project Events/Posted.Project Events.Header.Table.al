table 50812 "Posted Project Events HeaderSOD"
{
    TableType = Normal;
    Caption = 'Posted Project Events Header';
    LookupPageId = 50810;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }
        field(3; Project_Manager; Code[50])
        {
            Caption = 'Project Manager';
            DataClassification = ToBeClassified;
            TableRelation = "User Setup"."User ID";
        }
        field(4;Project_Status; Option)
        {
            Caption = 'Project Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Engineering","Production","Installation","Complete";
        }
        field(5;"Project_Description"; Text[100])
        {
            Caption = 'Project Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Job.Description where("No." = field(Job_No)));
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
        Lines: Record "Posted Project Events LineSOD";
    begin
       Lines.SetRange("no",Rec."no");
       Lines.DeleteAll();
    end;

}
