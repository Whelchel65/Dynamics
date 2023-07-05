table 50691 "Quality LineSOD"
{
    TableType = Normal;
    Caption = 'Quality';
    LookupPageId = 50690;
    fields
    {

        field(1; Quality_No; Code[20])
        {
            Caption = 'Quality No';
            DataClassification = ToBeClassified;
        }
        field(7; NCR_Item; Text[300])
        {
            Caption = 'NCR Item';
            DataClassification = ToBeClassified;
        }
        field(8; Fault_Description; Text[500])
        {
            Caption = 'Fault Description';
            DataClassification = ToBeClassified;
        }
        field(9;NCR_Status; Option)
        {
            Caption = 'NCR Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Fualt Identified","Rework Scheduled","Ready for Re-Inspection","Approved";
        }
        field(10; Date_Found; Date)
        {
            Caption = 'Date Found';
            DataClassification = ToBeClassified;
        }
        field(11; Date_Fixed; Date)
        {
            Caption = 'Date Fixed';
            DataClassification = ToBeClassified;
        }
        field(13; Corrected_By; Text[50])
        {
            Caption = 'Corrected By';
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
        key(PK;Quality_No,"Line No.")
        {
            Clustered = true;
        }

    }

}
