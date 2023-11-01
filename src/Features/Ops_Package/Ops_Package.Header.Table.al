table 50830 "Ops_Package HeaderSOD"
{
    TableType = Normal;
    Caption = 'Operations Package Header';
    LookupPageId = 50830;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3;OStatus; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Planning","Procurement","Production","Quality","Complete";
        }
        field(4; WBS; Text[50])
        {
            Caption = 'WBS';
            DataClassification = ToBeClassified;
        }
        field(5; Work_Package; Code[20])
        {
            Caption = 'Work Package';
            DataClassification = ToBeClassified;
            TableRelation = "Work_Packages HeaderSOD".WP_No;
        }
        field(6; WP_Status; Text[50])
        {
            Caption = 'WP Status';
            DataClassification = ToBeClassified;
        }
        field(7; WSI_Time_Entry; Code[20])
        {
            Caption = 'WSI Time Entry';
            DataClassification = ToBeClassified;
            TableRelation = "WSI_TS_Entry HeaderSOD".no;
        }
        field(8; TE_Status; Text[50])
        {
            Caption = 'TE Status';
            DataClassification = ToBeClassified;
        }
        field(9; WSI_Quality; Code[20])
        {
            Caption = 'WSI Quality';
            DataClassification = ToBeClassified;
            TableRelation = "Quality HeaderSOD".Quality_No;
        }
        field(10; Quality_Status; Text[50])
        {
            Caption = 'Quality Status';
            DataClassification = ToBeClassified;
        }
        field(11; Scope; Text[2000])
        {
            Caption = 'Scope';
            DataClassification = ToBeClassified;
        }
        field(12; Sum_of_Hours; Decimal)
        {
            Caption = 'Sum of Hours';
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
        Lines: Record "Ops_Package LineSOD";
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
            Setup.TestField("Ops_Package_Number");
            NoSeriesMgt.InitSeries(Setup.Ops_Package_Number, '', 0D, no, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Ops_Package HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Ops_Package HeaderSOD")
    var
        DocLine : Record "Ops_Package LineSOD";
        PostedDoc : Record "Posted Ops_Package HeaderSOD";
        PostedLine: Record "Posted Ops_Package LineSOD";
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
   local procedure OnBeforePosting(var Doc: Record "Ops_Package HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted Ops_Package HeaderSOD")
   begin
   end;
}
