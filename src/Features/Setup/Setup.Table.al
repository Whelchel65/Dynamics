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
            NotBlank = true;
        }
        field(2; Service_Tickets_Number; Code[20])
        {
            Caption = 'Service_Tickets Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(3; Project_Time_Number; Code[20])
        {
            Caption = 'Project_Time Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(4; Work_Packages_Number; Code[20])
        {
            Caption = 'Work_Packages Number series';
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

}
