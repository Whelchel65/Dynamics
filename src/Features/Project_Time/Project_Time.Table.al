table 50660 "Project_TimeSOD"
{
    TableType = Normal;
    Caption = 'Project Time';
    LookupPageId = 50660;
    fields
    {

        field(1; Entry_Number; Code[20])
        {
            Caption = 'Entry Number';
            DataClassification = ToBeClassified;
        }
        field(2; Employee; Text[50])
        {
            Caption = 'Employee';
            DataClassification = ToBeClassified;
        }
        field(3; Job_No; Text[50])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
        }
        field(4; Parent_Task; Text[100])
        {
            Caption = 'Parent Task';
            DataClassification = ToBeClassified;
        }
        field(5; Task_Name; Text[100])
        {
            Caption = 'Task Name';
            DataClassification = ToBeClassified;
        }
        field(6; Operation; Text[50])
        {
            Caption = 'Operation';
            DataClassification = ToBeClassified;
        }
        field(7; Planned; Text[50])
        {
            Caption = 'Planned';
            DataClassification = ToBeClassified;
        }
        field(8; Drawing; Text[50])
        {
            Caption = 'Drawing';
            DataClassification = ToBeClassified;
        }
        field(9; Hours_Worked; Decimal)
        {
            Caption = 'Hours Worked';
            DataClassification = ToBeClassified;
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Entry_Number)
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
        if Rec."Entry_Number" = '' then begin
            Setup.Get();
            Setup.TestField("Project_Time_Number");
            NoSeriesMgt.InitSeries(Setup.Project_Time_Number, '', 0D, Entry_Number, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Project_TimeSOD"; var IsHandled: Boolean)
   begin
   end;

}
