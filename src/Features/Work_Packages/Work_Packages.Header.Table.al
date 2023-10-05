table 50670 "Work_Packages HeaderSOD"
{
    TableType = Normal;
    Caption = 'Work Package Header';
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
            OptionMembers = "Work Queue"," Work Package Needed"," Package Complete"," Information Needed";
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
        field(9; Drawing_Attachment; Media)
        {
            Caption = 'Drawing Attachment';
            DataClassification = ToBeClassified;
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
        Lines: Record "Work_Packages LineSOD";
    begin
       Lines.SetRange("WP_No",Rec."WP_No");
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
        if Rec."WP_No" = '' then begin
            Setup.Get();
            Setup.TestField("Work_Packages_Number");
            NoSeriesMgt.InitSeries(Setup.Work_Packages_Number, '', 0D, WP_No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Work_Packages HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Work_Packages HeaderSOD")
    var
        DocLine : Record "Work_Packages LineSOD";
        PostedDoc : Record "Posted Work_Packages HeaderSOD";
        PostedLine: Record "Posted Work_Packages LineSOD";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(WP_No, Doc.WP_No);
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
   local procedure OnBeforePosting(var Doc: Record "Work_Packages HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted Work_Packages HeaderSOD")
   begin
   end;
}
