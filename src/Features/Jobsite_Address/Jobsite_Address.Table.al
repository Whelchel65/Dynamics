table 50750 "Jobsite_AddressSOD"
{
    TableType = Normal;
    Caption = 'Jobsite Address';
    LookupPageId = 50750;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Job_No; Code[20])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
            TableRelation = Job."No.";
        }
        field(3; Address_Line_1; Text[100])
        {
            Caption = 'Address Line 1';
            DataClassification = ToBeClassified;
        }
        field(4; Address_Line_2; Text[100])
        {
            Caption = 'Address_Line_2';
            DataClassification = ToBeClassified;
        }
        field(5; City; Text[100])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(6; State; Code[20])
        {
            Caption = 'State';
            DataClassification = ToBeClassified;
            TableRelation = StatesSOD.Abbr;
        }
        field(7;"Country"; Text[50])
        {
            Caption = 'Country';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(StatesSOD.Country where(Abbr = field(State)));
        }
        field(8; Site_Contact; Code[20])
        {
            Caption = 'Site Contact';
            DataClassification = ToBeClassified;
            TableRelation = Contact."No.";
        }


    }
    keys
    {
        key(PK;No)
        {
            Clustered = true;
        }

    }

}
