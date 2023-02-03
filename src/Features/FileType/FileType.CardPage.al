page 50561 "FileTypeCard"
{
    PageType = Card;
    SourceTable = "FileTypeSOD";
    Caption = 'File Type Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(FileType; Rec.FileType)
                {
                    ApplicationArea = All;
                }
            }


        }
    }
    actions
    {
        area(processing)
        {
        }
    }
}
