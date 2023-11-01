table 50810 "Project_Events HeaderSOD"
{
    TableType = Normal;
    Caption = 'Project Events Header';
    LookupPageId = 50810;
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
        field(3;"Project_Description"; Text[100])
        {
            Caption = 'Project Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Job.Description where("No." = field(Job_No)));
        }
        field(4;Project_Status; Option)
        {
            Caption = 'Project Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Engineering","Production","Installation","Complete";
        }
        field(5; Project_Manager; Code[20])
        {
            Caption = 'Project Manager';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser".Code;
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
        Lines: Record "Project_Events LineSOD";
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
            Setup.TestField("Project_Events_Number");
            NoSeriesMgt.InitSeries(Setup.Project_Events_Number, '', 0D, No, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Project_Events HeaderSOD"; var IsHandled: Boolean)
   begin
   end;

}
