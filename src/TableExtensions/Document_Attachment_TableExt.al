tableextension 50511 "SODDocument_Attachment" extends "Document Attachment"
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
        field(50502;"Quote_Expire"; Date)
        {
            Caption = 'Quote_Expire';
            DataClassification = ToBeClassified;
        }

    }
}
