table 50710 "Sales_Leads HeaderSOD"
{
    TableType = Normal;
    Caption = 'Sales Propects Header';
    LookupPageId = 50710;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Project_Number; Integer)
        {
            Caption = 'Project Number';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(6; Contact; Code[20])
        {
            Caption = 'Contact';
            DataClassification = ToBeClassified;
            TableRelation = Contact."No.";
        }
        field(7;"Contact_Name"; Text[100])
        {
            Caption = 'Contact Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact.Name where("No." = field(Contact)));
        }
        field(8;"Phone"; Text[30])
        {
            Caption = 'Phone';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Phone No." where("No." = field(Contact)));
        }
        field(9;"Mobile"; Text[30])
        {
            Caption = 'Mobile';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Mobile Phone No." where("No." = field(Contact)));
        }
        field(10;"Email"; Text[80])
        {
            Caption = 'Email';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."E-Mail" where("No." = field(Contact)));
        }
        field(11;"Contact_Company"; Text[100])
        {
            Caption = 'Contact Company';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Company Name" where("No." = field(Contact)));
        }
        field(12;Stage; Option)
        {
            Caption = 'Stage';
            DataClassification = ToBeClassified;
            OptionMembers = "New Lead","Budgetary","Proposal","Dead";
        }
        field(14; Success_Probability; Integer)
        {
            Caption = 'Success Probability';
            DataClassification = ToBeClassified;
        }
        field(15; Creation_Date; Date)
        {
            Caption = 'Creation Date';
            DataClassification = ToBeClassified;
        }
        field(16; Next_Follow_Up; Date)
        {
            Caption = 'Next Follow Up';
            DataClassification = ToBeClassified;
        }
        field(17; Last_Interaction; Date)
        {
            Caption = 'Last Interaction';
            DataClassification = ToBeClassified;
        }
        field(18; Date_Closed; Date)
        {
            Caption = 'Date Closed';
            DataClassification = ToBeClassified;
        }
        field(22; Estimated_Value; Decimal)
        {
            Caption = 'Estimated Value';
            DataClassification = ToBeClassified;
        }
        field(23; Estimated_Complete_Date; Date)
        {
            Caption = 'Estimated Complete Date';
            DataClassification = ToBeClassified;
        }
        field(25; Projected_Revenue; Decimal)
        {
            Caption = 'Projected Revenue';
            DataClassification = ToBeClassified;
        }
        field(26; Project_Duration; Decimal)
        {
            Caption = 'Project Duration (weeks)';
            DataClassification = ToBeClassified;
        }
        field(28;"Project_Type"; Text[50])
        {
            Caption = 'Project Type';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Project_TypesSOD.Item);
        }
        field(29; Design_Flow; Integer)
        {
            Caption = 'Design Flow (GPD)';
            DataClassification = ToBeClassified;
        }
        field(30; Effluent_Target; Text[100])
        {
            Caption = 'Effluent Target';
            DataClassification = ToBeClassified;
        }
        field(31;"State"; Text[50])
        {
            Caption = 'State';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(StatesSOD.State_Name);
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
        Lines: Record "Sales_Leads LineSOD";
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
            Setup.TestField("Sales_Leads_Number");
            NoSeriesMgt.InitSeries(Setup.Sales_Leads_Number, '', 0D, No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Sales_Leads HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Sales_Leads HeaderSOD")
    var
        DocLine : Record "Sales_Leads LineSOD";
        PostedDoc : Record "Closed Sales_Leads HeaderSOD";
        PostedLine: Record "Closed Sales_Leads LineSOD";
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
        Doc.Delete(true);
        DocLine.DeleteAll(true);
        OnAfterPosting(PostedDoc);
    end;
    [IntegrationEvent(false, false)]
   local procedure OnBeforePosting(var Doc: Record "Sales_Leads HeaderSOD";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Closed Sales_Leads HeaderSOD")
   begin
   end;
}
