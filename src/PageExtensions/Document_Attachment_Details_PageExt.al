pageextension 50524 "SODDocument_Attachment_Details" extends "Document Attachment Details"
{
    layout
    {
        AddAfter("File Type")
        {
            field("FileType_SOD"; Rec."FileType")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
