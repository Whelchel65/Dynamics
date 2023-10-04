table 50803 "Posted WSI_TS_Entry LineSOD"
{
    TableType = Normal;
    Caption = 'Posted WSI Time Entries Line';
    LookupPageId = 50800;
    fields
    {

        field(1; no; Code[20])
        {
            Caption = 'no';
            DataClassification = ToBeClassified;
        }
        field(8; Employee_Name; Code[20])
        {
            Caption = 'Employee Name';
            DataClassification = ToBeClassified;
            TableRelation = "Shop_Employees HeaderSOD".No;
        }
        field(9; Actual_Hours_Worked; Decimal)
        {
            Caption = 'Actual Hours Worked';
            DataClassification = ToBeClassified;
        }
        field(11; Notes; Text[2000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }
        field(13; Percent_Complete; Integer)
        {
            Caption = 'Percent Complete';
            DataClassification = ToBeClassified;
        }
        field(14; Date_Complete; Date)
        {
            Caption = 'Date Complete';
            DataClassification = ToBeClassified;
        }
        field(16;"Full_Name"; Text[50])
        {
            Caption = 'Full Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Shop_Employees HeaderSOD".Full_Name where(No = field(Employee_Name)));
        }
        field(17;Overtime; Option)
        {
            Caption = 'Overtime';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }

        field(99999; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK;no,"Line No.")
        {
            Clustered = true;
        }

    }

}
