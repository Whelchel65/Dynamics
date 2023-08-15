table 50690 "Quality HeaderSOD"
{
    TableType = Normal;
    Caption = 'Quality Header';
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
        Lines: Record "Quality LineSOD";
    begin
       Lines.SetRange("Quality_No",Rec."Quality_No");
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
        if Rec."Quality_No" = '' then begin
            Setup.Get();
            Setup.TestField("Quality_Number");
            NoSeriesMgt.InitSeries(Setup.Quality_Number, '', 0D, Quality_No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Quality HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Quality HeaderSOD")
    var
        DocLine : Record "Quality LineSOD";
        PostedDoc : Record "Posted Quality HeaderSOD";
        PostedLine: Record "Posted Quality LineSOD";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(Quality_No, Doc.Quality_No);
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
   local procedure OnBeforePosting(var Doc: Record "Quality HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted Quality HeaderSOD")
   begin
   end;
}
