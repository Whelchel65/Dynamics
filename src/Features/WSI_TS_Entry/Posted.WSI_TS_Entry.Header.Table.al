table 50802 "Posted WSI_TS_Entry HeaderSOD"
{
    TableType = Normal;
    Caption = 'Posted WSI Time Entries Header';
    LookupPageId = 50800;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(2; Date_Assigned; Date)
        {
            Caption = 'Date Assigned';
            DataClassification = ToBeClassified;
        }
        field(3; Hours_Allocated; Decimal)
        {
            Caption = 'Hours Allocated';
            DataClassification = ToBeClassified;
        }
        field(4; Job_No; Text[50])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
        }
        field(5; Parent_Task; Text[50])
        {
            Caption = 'Parent Task';
            DataClassification = ToBeClassified;
        }
        field(6; Operation; Text[50])
        {
            Caption = 'Operation';
            DataClassification = ToBeClassified;
        }
        field(7; Drawing_Number; Text[50])
        {
            Caption = 'Drawing Number';
            DataClassification = ToBeClassified;
        }
        field(10;Complete; Option)
        {
            Caption = 'Complete';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }
        field(12; Task_Name; Text[50])
        {
            Caption = 'Task Name';
            DataClassification = ToBeClassified;
        }
        field(15;Priority; Option)
        {
            Caption = 'Priority';
            DataClassification = ToBeClassified;
            OptionMembers = "Medium"," Low"," High"," Critical";
        }


    }
    keys
    {
        key(PK;no)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Posted WSI_TS_Entry LineSOD";
    begin
       Lines.SetRange("no",Rec."no");
       Lines.DeleteAll();
    end;

}
