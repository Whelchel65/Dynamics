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


    }
    keys
    {
        key(PK;PK)
        {
            Clustered = true;
        }

    }

}
