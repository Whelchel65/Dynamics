table 50720 "Quality_StatusSOD"
{
    TableType = Normal;
    Caption = 'Quality Status';
    LookupPageId = 50720;
    fields
    {

        field(2; Item; Code[20])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[200])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Item)
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
        if Rec."Item" = '' then begin
            Setup.Get();
            Setup.TestField("Quality_Status_Number");
            NoSeriesMgt.InitSeries(Setup.Quality_Status_Number, '', 0D, Item, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Quality_StatusSOD"; var IsHandled: Boolean)
   begin
   end;

}
