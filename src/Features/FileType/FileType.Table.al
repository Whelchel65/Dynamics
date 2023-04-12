table 50560 "FileTypeSOD"
{
    TableType = Normal;
    Caption = 'File Type';
    LookupPageId = 50560;
    fields
    {

        field(50560; FileType; Text[50])
        {
            Caption = 'Document Type';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }


    }
    keys
    {
        key(PK;FileType)
        {
            Clustered = true;
        }

    }

}
