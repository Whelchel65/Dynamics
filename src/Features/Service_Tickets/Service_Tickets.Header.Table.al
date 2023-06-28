table 50630 "Service_Tickets HeaderSOD"
{
    TableType = Normal;
    Caption = 'Service Tickets';
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
        field(505113; Sharepoint_URL; Text[100])
        {
            Caption = 'Sharepoint URL';
            DataClassification = ToBeClassified;
            ExtendedDataType = URL;
        }
        field(505114; Notes; Text[1500])
        {
            Caption = 'Notes';
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
        Lines: Record "Service_Tickets LineSOD";
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
            Setup.TestField("Service_Tickets_Number");
            NoSeriesMgt.InitSeries(Setup.Service_Tickets_Number, '', 0D, Ticket_No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Service_Tickets HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

}
