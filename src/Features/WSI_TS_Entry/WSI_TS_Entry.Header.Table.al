table 50800 "WSI_TS_Entry HeaderSOD"
{
    TableType = Normal;
    Caption = 'WSI Time Entries Header';
    LookupPageId = 50800;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(2; Date_Assigned; Date)
        {
            Caption = 'Date Assigned';
            DataClassification = ToBeClassified;
        }
        field(3; Hours_Allocated; Decimal)
        {
            Caption = 'Hours Allocated';
            DataClassification = ToBeClassified;
        }
        field(4; Job_No; Text[50])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
        }
        field(5; Parent_Task; Text[50])
        {
            Caption = 'Parent Task';
            DataClassification = ToBeClassified;
        }
        field(6; Operation; Text[50])
        {
            Caption = 'Operation';
            DataClassification = ToBeClassified;
        }
        field(7; Drawing_Number; Text[50])
        {
            Caption = 'Drawing Number';
            DataClassification = ToBeClassified;
        }
        field(10;Complete; Option)
        {
            Caption = 'Complete';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }
        field(12; Task_Name; Text[50])
        {
            Caption = 'Task Name';
            DataClassification = ToBeClassified;
        }
        field(15;Priority; Option)
        {
            Caption = 'Priority';
            DataClassification = ToBeClassified;
            OptionMembers = "Medium"," Low"," High"," Critical";
        }
        field(18; Sum; Decimal)
        {
            Caption = 'Total Hours';
            DataClassification = ToBeClassified;
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
        Lines: Record "WSI_TS_Entry LineSOD";
    begin
       Lines.SetRange("no",Rec."no");
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
        if Rec."no" = '' then begin
            Setup.Get();
            Setup.TestField("WSI_TS_Entry_Number");
            NoSeriesMgt.InitSeries(Setup.WSI_TS_Entry_Number, '', 0D, no, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "WSI_TS_Entry HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "WSI_TS_Entry HeaderSOD")
    var
        FromDocumentAttachment: Record "Document Attachment";
        ToDocumentAttachment: Record "Document Attachment";
        DocLine : Record "WSI_TS_Entry LineSOD";
        PostedDoc : Record "Posted WSI_TS_Entry HeaderSOD";
        PostedLine: Record "Posted WSI_TS_Entry LineSOD";
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
        FromDocumentAttachment.Setrange("Table ID", 50800);
        FromDocumentAttachment.Setrange("No.", Doc.no);
       if FromDocumentAttachment.FindSet() then begin
            repeat
                Clear(ToDocumentAttachment);
                ToDocumentAttachment.Init();
                ToDocumentAttachment.TransferFields(FromDocumentAttachment);
                ToDocumentAttachment.Validate("Table ID", 50802);
                ToDocumentAttachment.Validate("No.", PostedDoc.no);
                if not ToDocumentAttachment.Insert(true) then;
            until FromDocumentAttachment.Next() = 0;
            FromDocumentAttachment.DeleteAll();
        end;
        Doc.Delete(true);
        DocLine.DeleteAll(true);
        OnAfterPosting(PostedDoc);
    end;
    [IntegrationEvent(false, false)]
   local procedure OnBeforePosting(var Doc: Record "WSI_TS_Entry HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted WSI_TS_Entry HeaderSOD")
   begin
   end;
}
