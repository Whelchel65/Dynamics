tableextension 50509 "SODDocument_Attachment" extends "Document Attachment"
{

    fields
    {
        field(50500;"FileType"; Text[50])
        {
            Caption = 'FileType';
            DataClassification = ToBeClassified;
            TableRelation = FileTypeSOD.FileType;
        }

    }
}
