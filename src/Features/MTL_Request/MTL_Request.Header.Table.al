table 50680 "MTL_Request HeaderSOD"
{
    TableType = Normal;
    Caption = 'Material Request';
    LookupPageId = 50680;
    fields
    {

        field(1; Request_No; Code[20])
        {
            Caption = 'Request No';
            DataClassification = ToBeClassified;
        }
        field(2; Vendor; Code[20])
        {
            Caption = 'Vendor';
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
        }
        field(3;"Vendor_Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Vendor.Name where("No." = field(Vendor)));
        }
        field(4;Importance; Option)
        {
            Caption = 'Importance';
            DataClassification = ToBeClassified;
            OptionMembers = "","-","Low","High","Urgent";
        }
        field(5; User; Code[20])
        {
            Caption = 'User';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(6; Date_Needed; Date)
        {
            Caption = 'Date Needed';
            DataClassification = ToBeClassified;
        }
        field(7; Notes; Text[1000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(14;Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Requested","Review","Approved";
        }


    }
    keys
    {
        key(PK;Request_No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "MTL_Request LineSOD";
    begin
       Lines.SetRange("Request_No",Rec."Request_No");
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
        if Rec."Request_No" = '' then begin
            Setup.Get();
            Setup.TestField("MTL_Request_Number");
            NoSeriesMgt.InitSeries(Setup.MTL_Request_Number, '', 0D, Request_No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "MTL_Request HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "MTL_Request HeaderSOD")
    var
        DocLine : Record "MTL_Request LineSOD";
        PostedDoc : Record "Posted MTL_Request HeaderSOD";
        PostedLine: Record "Posted MTL_Request LineSOD";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(Request_No, Doc.Request_No);
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
   local procedure OnBeforePosting(var Doc: Record "MTL_Request HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted MTL_Request HeaderSOD")
   begin
   end;
}