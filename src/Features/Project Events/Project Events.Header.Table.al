table 50810 "Project Events HeaderSOD"
{
    TableType = Normal;
    Caption = 'Project Events Header';
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
        Lines: Record "Project Events LineSOD";
    begin
       Lines.SetRange("no",Rec."no");
       Lines.DeleteAll();
    end;

    procedure Post(Doc : Record "Project Events HeaderSOD")
    var
        DocLine : Record "Project Events LineSOD";
        PostedDoc : Record "Posted Project Events HeaderSOD";
        PostedLine: Record "Posted Project Events LineSOD";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(no, Doc.no);
        if DocLine.FindSet() then
            repeat

                PostedLine.Init();
                PostedLine.TransferFields(DocLine);
                PostedLine.Insert(true);
            until DocLine.Next() = 0;
        Doc.Delete(true);
        DocLine.DeleteAll(true);
        OnAfterPosting(PostedDoc);
    end;
    [IntegrationEvent(false, false)]
   local procedure OnBeforePosting(var Doc: Record "Project Events HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted Project Events HeaderSOD")
   begin
   end;
}
