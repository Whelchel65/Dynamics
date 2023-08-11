table 50730 "Project_TypesSOD"
{
    TableType = Normal;
    Caption = 'Project Types for Sales';
    LookupPageId = 50730;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(2; Item; Text[50])
        {
            Caption = 'Item';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
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
            Setup.TestField("Project_Types_Number");
            NoSeriesMgt.InitSeries(Setup.Project_Types_Number, '', 0D, no, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Project_TypesSOD"; var IsHandled: Boolean)
   begin
   end;

}
