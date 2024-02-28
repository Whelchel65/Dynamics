table 50860 "Eng_Package HeaderSOD"
{
    TableType = Normal;
    Caption = 'Engineering Package Header';
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
        Lines: Record "Eng_Package LineSOD";
    begin
       Lines.SetRange("No",Rec."No");
       Lines.DeleteAll();
    end;
    trigger OnInsert()
    var
        Setup : Record "SetupSOD";
        IsHandled: Boolean;
        NoSeriesMgt : Codeunit NoSeriesManagement;
        NewNoSeries : Code[20];
    begin
        IsHandled := false;
        OnBeforeInsert(Rec, IsHandled);
        if IsHandled then
            exit;
        if Rec."No" = '' then begin
            Setup.Get();
            Setup.TestField("Eng_Package_Number");
            NoSeriesMgt.InitSeries(Setup.Eng_Package_Number, '', 0D, No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Eng_Package HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Eng_Package HeaderSOD")
    var
        FromDocumentAttachment: Record "Document Attachment";
        ToDocumentAttachment: Record "Document Attachment";
        DocLine : Record "Eng_Package LineSOD";
        PostedDoc : Record "Posted Eng_Package HeaderSOD";
        PostedLine: Record "Posted Eng_Package LineSOD";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(No, Doc.No);
        if DocLine.FindSet() then
            repeat

                PostedLine.Init();
                PostedLine.TransferFields(DocLine);
                PostedLine.Insert(true);
            until DocLine.Next() = 0;
        FromDocumentAttachment.Setrange("Table ID", 50860);
        FromDocumentAttachment.Setrange("No.", Doc.No);
       if FromDocumentAttachment.FindSet() then begin
            repeat
                Clear(ToDocumentAttachment);
                ToDocumentAttachment.Init();
                ToDocumentAttachment.TransferFields(FromDocumentAttachment);
                ToDocumentAttachment.Validate("Table ID", 50862);
                ToDocumentAttachment.Validate("No.", PostedDoc.No);
                if not ToDocumentAttachment.Insert(true) then;
            until FromDocumentAttachment.Next() = 0;
            FromDocumentAttachment.DeleteAll();
        end;
        Doc.Delete(true);
        DocLine.DeleteAll(true);
        OnAfterPosting(PostedDoc);
    end;
    [IntegrationEvent(false, false)]
   local procedure OnBeforePosting(var Doc: Record "Eng_Package HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted Eng_Package HeaderSOD")
   begin
   end;
}
