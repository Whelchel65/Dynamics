table 50790 "Shop_Employees HeaderSOD"
{
    TableType = Normal;
    Caption = 'Shop Employees Header';
    LookupPageId = 50790;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(2; Last_Name; Text[50])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }
        field(3; First_Name; Text[50])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(4; Position; Text[50])
        {
            Caption = 'Position';
            DataClassification = ToBeClassified;
        }
        field(5; Date_of_Hire; Date)
        {
            Caption = 'Date of Hire';
            DataClassification = ToBeClassified;
        }
        field(6; Full_Name; Text[50])
        {
            Caption = 'Full Name';
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
        Lines: Record "Shop_Employees LineSOD";
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
            Setup.TestField("Shop_Employees_Number");
            NoSeriesMgt.InitSeries(Setup.Shop_Employees_Number, '', 0D, No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Shop_Employees HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Shop_Employees HeaderSOD")
    var
        FromDocumentAttachment: Record "Document Attachment";
        ToDocumentAttachment: Record "Document Attachment";
        DocLine : Record "Shop_Employees LineSOD";
        PostedDoc : Record "x Shop_Employees HeaderSOD";
        PostedLine: Record "x Shop_Employees LineSOD";
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
        FromDocumentAttachment.Setrange("Table ID", 50790);
        FromDocumentAttachment.Setrange("No.", Doc.No);
       if FromDocumentAttachment.FindSet() then begin
            repeat
                Clear(ToDocumentAttachment);
                ToDocumentAttachment.Init();
                ToDocumentAttachment.TransferFields(FromDocumentAttachment);
                ToDocumentAttachment.Validate("Table ID", 50792);
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
   local procedure OnBeforePosting(var Doc: Record "Shop_Employees HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "x Shop_Employees HeaderSOD")
   begin
   end;
}
