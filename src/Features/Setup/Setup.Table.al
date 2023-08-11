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
        field(4; Work_Packages_Number; Code[20])
        {
            Caption = 'Work_Packages Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(5; Material_Request_Number; Code[20])
        {
            Caption = 'Material_Request Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(6; MTL_Request_Number; Code[20])
        {
            Caption = 'MTL_Request Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(7; Quality_Number; Code[20])
        {
            Caption = 'Quality Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(8; Project_Time_Number; Code[20])
        {
            Caption = 'Project_Time Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(9; Sales_Prospects_Number; Code[20])
        {
            Caption = 'Sales_Prospects Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(10; Sales_Leads_Number; Code[20])
        {
            Caption = 'Sales_Leads Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(11; Quality_Status_Number; Code[20])
        {
            Caption = 'Quality_Status Number series';
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
