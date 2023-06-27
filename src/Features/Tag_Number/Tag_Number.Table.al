table 50590 "Tag_NumberSOD"
{
    TableType = Normal;
    Caption = 'Tag Number';
    LookupPageId = 50590;
    fields
    {

        field(505100; Tag_Number; Text[10])
        {
            Caption = 'Tag Number';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(505101; Job_Number; Code[20])
        {
            Caption = 'Job Number';
            DataClassification = ToBeClassified;
            TableRelation = Job."No." where("No." = field(Job_Number));
        }
        field(505102; Decription; Text[50])
        {
            Caption = 'Decription';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;Tag_Number)
        {
            Clustered = true;
        }

    }

}
