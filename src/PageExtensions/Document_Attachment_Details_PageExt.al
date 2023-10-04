pageextension 50523 "SODDocument_Attachment_De50523" extends "Document Attachment Details"
{
    layout
    {
        AddAfter("File Type")
        {
            field("FileType_SOD"; Rec."FileType")
            {
                ApplicationArea = all;
            }
            field("Notes_SOD"; Rec."Notes")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
