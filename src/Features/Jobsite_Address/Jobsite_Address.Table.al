table 50750 "Jobsite_AddressSOD"
{
    TableType = Normal;
    Caption = 'Jobsite Address';
    LookupPageId = 50750;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(2; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }
        field(3; Address_Line_1; Text[100])
        {
            Caption = 'Address Line 1';
            DataClassification = ToBeClassified;
        }
        field(4; Address_Line_2; Text[100])
        {
            Caption = 'Address_Line_2';
            DataClassification = ToBeClassified;
        }
        field(5; City; Text[100])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(6; State; Code[20])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
            TableRelation = StatesSOD.Abbr;
        }
        field(7;"Country"; Text[50])
        {
            Caption = 'Country';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(StatesSOD.Country where(Abbr = field(State)));
        }
        field(8; Site_Contact; Code[20])
        {
            Caption = 'Site Contact';
            DataClassification = ToBeClassified;
            TableRelation = Contact."No.";
        }
        field(9; ZIp; Text[50])
        {
            Caption = 'ZIp';
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
            Setup.TestField("Jobsite_Address_Number");
            NoSeriesMgt.InitSeries(Setup.Jobsite_Address_Number, '', 0D, No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Jobsite_AddressSOD"; var IsHandled: Boolean)
   begin
   end;

}
