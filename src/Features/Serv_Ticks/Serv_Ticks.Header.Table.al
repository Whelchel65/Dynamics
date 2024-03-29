table 50630 "Serv_Ticks HeaderSOD"
{
    TableType = Normal;
    Caption = 'Service Tickets Header';
    LookupPageId = 50630;
    fields
    {

        field(505100; Ticket_No; Code[20])
        {
            Caption = 'Ticket No';
            DataClassification = ToBeClassified;
        }
        field(505101; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(505102;Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = "New","Open","Closed";
        }
        field(505103;Ticket_Stage; Option)
        {
            Caption = 'Ticket Stage';
            DataClassification = ToBeClassified;
            OptionMembers = "Customer Request"," Request Intake"," Troubleshoot"," Sales Quote"," Procurement"," In House Production"," Onsite Service"," Shipping"," Invoice";
        }
        field(505104; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }
        field(505106; Contact; Code[20])
        {
            Caption = 'Contact';
            DataClassification = ToBeClassified;
            TableRelation = Contact."No.";
        }
        field(505107; Date_Originated; Date)
        {
            Caption = 'Date_Originated';
            DataClassification = ToBeClassified;
        }
        field(505108; Date_Initial_Responded; Date)
        {
            Caption = 'Date_Initial_Responded';
            DataClassification = ToBeClassified;
        }
        field(505109; Date_Service_Completed; Date)
        {
            Caption = 'Date_Service_Completed';
            DataClassification = ToBeClassified;
        }
        field(505113; Sharepoint_URL; Text[1000])
        {
            Caption = 'Sharepoint URL';
            DataClassification = ToBeClassified;
            ExtendedDataType = URL;
        }
        field(505114; Notes; Text[1500])
        {
            Caption = 'Initial Notes';
            DataClassification = ToBeClassified;
        }
        field(505115;"Contact_Name"; Text[100])
        {
            Caption = 'Contact Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact.Name where("No." = field(Contact)));
        }
        field(505116;"Contact_Company"; Text[100])
        {
            Caption = 'Company';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Company Name" where("No." = field(Contact)));
        }
        field(505117;"Contact_Phone_No"; Text[30])
        {
            Caption = 'Contact Phone No';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Phone No." where("No." = field(Contact)));
        }
        field(505118;"Contact_Email"; Text[80])
        {
            Caption = 'Contact Email';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."E-Mail" where("No." = field(Contact)));
        }
        field(505119;"Contact_City"; Text[30])
        {
            Caption = 'Contact City';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact.City where("No." = field(Contact)));
        }
        field(505120;"Contact_State"; Code[10])
        {
            Caption = 'Contact State';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Country/Region Code" where("No." = field(Contact)));
        }
        field(505122; User_Responsible; Code[20])
        {
            Caption = 'User Responsible';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(505123;Escalation; Option)
        {
            Caption = 'Escalation';
            DataClassification = ToBeClassified;
            OptionMembers = "","Andrew","Randy","Sean","John","Ben","Poe","-";
        }
        field(505124;Urgency; Option)
        {
            Caption = 'Urgency';
            DataClassification = ToBeClassified;
            OptionMembers = "","Low","High","Urgent";
        }
        field(505125;"Send_Escalation"; Text[1000])
        {
            Caption = 'Send Escalation';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(URLsSOD.URL where(Description = filter('Escalation Flow')));
        }
        field(505126; Sales_Quote; Code[20])
        {
            Caption = 'Sales Quote';
            DataClassification = ToBeClassified;
            TableRelation = "Sales Header"."No.";
        }
        field(505127; Sales_Order; Code[20])
        {
            Caption = 'Sales Order';
            DataClassification = ToBeClassified;
            TableRelation = "Sales Header"."No.";
        }


    }
    keys
    {
        key(PK;Ticket_No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Serv_Ticks LineSOD";
    begin
       Lines.SetRange("Ticket_No",Rec."Ticket_No");
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
        if Rec."Ticket_No" = '' then begin
            Setup.Get();
            Setup.TestField("Serv_Ticks_Number");
            NoSeriesMgt.InitSeries(Setup.Serv_Ticks_Number, '', 0D, Ticket_No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Serv_Ticks HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Serv_Ticks HeaderSOD")
    var
        FromDocumentAttachment: Record "Document Attachment";
        ToDocumentAttachment: Record "Document Attachment";
        DocLine : Record "Serv_Ticks LineSOD";
        PostedDoc : Record "Posted Serv_Ticks HeaderSOD";
        PostedLine: Record "Posted Serv_Ticks LineSOD";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;
        Rec.TestField(Description);
        Rec.TestField(Job_No);
        Rec.TestField(Date_Initial_Responded);
        Rec.TestField(Date_Service_Completed);

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(Ticket_No, Doc.Ticket_No);
        if DocLine.FindSet() then
            repeat

                PostedLine.Init();
                PostedLine.TransferFields(DocLine);
                PostedLine.Insert(true);
            until DocLine.Next() = 0;
        FromDocumentAttachment.Setrange("Table ID", 50630);
        FromDocumentAttachment.Setrange("No.", Doc.Ticket_No);
       if FromDocumentAttachment.FindSet() then begin
            repeat
                Clear(ToDocumentAttachment);
                ToDocumentAttachment.Init();
                ToDocumentAttachment.TransferFields(FromDocumentAttachment);
                ToDocumentAttachment.Validate("Table ID", 50632);
                ToDocumentAttachment.Validate("No.", PostedDoc.Ticket_No);
                if not ToDocumentAttachment.Insert(true) then;
            until FromDocumentAttachment.Next() = 0;
            FromDocumentAttachment.DeleteAll();
        end;
        Doc.Delete(true);
        DocLine.DeleteAll(true);
        OnAfterPosting(PostedDoc);
    end;
    [IntegrationEvent(false, false)]
   local procedure OnBeforePosting(var Doc: Record "Serv_Ticks HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Posted Serv_Ticks HeaderSOD")
   begin
   end;
}
