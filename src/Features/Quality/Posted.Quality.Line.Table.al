table 50693 "Posted Quality LineSOD"
{
    TableType = Normal;
    Caption = 'Posted Quality Line';
    LookupPageId = 50690;
    fields
    {

        field(1; Quality_No; Code[20])
        {
            Caption = 'Quality No';
            DataClassification = ToBeClassified;
        }
        field(7; Item; Text[300])
        {
            Caption = 'Item';
            DataClassification = ToBeClassified;
        }
        field(8; Line_Description; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(9;Line_Status; Option)
        {
            Caption = 'Item Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Production","Fualt Identified","Rework Scheduled","Ready for Re-Inspection","Approved";
        }
        field(10; Date_Found; Date)
        {
            Caption = 'Date Completed';
            DataClassification = ToBeClassified;
        }
        field(11; Date_Fixed; Date)
        {
            Caption = 'Date Fault Fixed';
            DataClassification = ToBeClassified;
        }
        field(13; Corrected_By; Text[50])
        {
            Caption = 'Corrected By';
            DataClassification = ToBeClassified;
        }
        field(15; Solution; Text[1000])
        {
            Caption = 'Solution/Notes';
            DataClassification = ToBeClassified;
        }
        field(16;Checked_By; Option)
        {
            Caption = 'Checked By';
            DataClassification = ToBeClassified;
            OptionMembers = "-","Andrew","Ben","John","Poe","Randy";
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
