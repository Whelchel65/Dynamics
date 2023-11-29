table 50691 "Quality LineSOD"
{
    TableType = Normal;
    Caption = 'Quality Line';
    LookupPageId = 50690;
    fields
    {

        field(1; Quality_No; Code[20])
        {
            Caption = 'Quality No';
            DataClassification = ToBeClassified;
        }
        field(8; Line_Description; Text[500])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(9; Line_Status; Code[20])
        {
            Caption = 'Item Status';
            DataClassification = ToBeClassified;
            TableRelation = Quality_StatusSOD.Status;
        }
        field(10; Date_Found; Date)
        {
            Caption = 'Date Completed';
            DataClassification = ToBeClassified;
        }
        field(11; Date_Fixed; Date)
        {
            Caption = 'Last Date Complete';
            DataClassification = ToBeClassified;
        }
        field(13; Inspected_By; Text[50])
        {
            Caption = 'Inspected by';
            DataClassification = ToBeClassified;
        }
        field(16; Date_Checked; Date)
        {
            Caption = 'Check Date';
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
