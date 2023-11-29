pageextension 50524 "SODDocument_Attachment_De50524" extends "Document Attachment Details"
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
            field("Quote_Expire_SOD"; Rec."Quote_Expire")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
