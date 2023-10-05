tableextension 50510 "SODDocument_Attachment" extends "Document Attachment"
{

    fields
    {
        field(50500;"FileType"; Text[50])
        {
            Caption = 'FileType';
            DataClassification = ToBeClassified;
            TableRelation = FileTypeSOD.FileType;
        }
        field(50501;"Notes"; Text[2000])
        {
            Caption = 'Notes';
            DataClassification = ToBeClassified;
        }

    }
}
