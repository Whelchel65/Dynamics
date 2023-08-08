table 50701 "Asset_Maintenance LineSOD"
{
    TableType = Normal;
    Caption = 'Asset Maintenance Line';
    LookupPageId = 50700;
    fields
    {

        field(1; Equip_No; Code[20])
        {
            Caption = 'Equipment No';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(11;Log_Type; Option)
        {
            Caption = 'Log Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Service","Repair","Inspection","Comments";
        }
        field(12; Date; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(13; Milage_Hours; Decimal)
        {
            Caption = 'Milage/Hours';
            DataClassification = ToBeClassified;
        }
        field(14; Service_Issue; Text[500])
        {
            Caption = 'Service/Issue';
            DataClassification = ToBeClassified;
        }
        field(15;Log_Status; Option)
        {
            Caption = 'Log Status';
            DataClassification = ToBeClassified;
            OptionMembers = "","Complete","Need Follow Up","In Progress";
        }
        field(16; Completed_by; Text[20])
        {
            Caption = 'Completed by';
            DataClassification = ToBeClassified;
        }

        field(99999; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK;Equip_No,"Line No.")
        {
            Clustered = true;
        }

    }

}
