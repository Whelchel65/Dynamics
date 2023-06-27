table 50640 "SetupSOD"
{
    TableType = Normal;
    Caption = 'My Customizations Setup';
    fields
    {

        field(1; PK; Code[20])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; Service_Tickets_Number; Code[20])
        {
            Caption = 'Service_Tickets Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(3; Setup_Number; Code[20])
        {
            Caption = 'Setup Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }


    }
    keys
    {
        key(PK;PK)
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
        if Rec."PK" = '' then begin
            Setup.Get();
            Setup.TestField("Setup_Number");
            NoSeriesMgt.InitSeries(Setup.Setup_Number, '', 0D, PK, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "SetupSOD"; var IsHandled: Boolean)
   begin
   end;

}
