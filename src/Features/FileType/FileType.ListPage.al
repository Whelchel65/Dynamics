page 50560 "FileTypeList"
{
    PageType = List;
    SourceTable = "FileTypeSOD";
    Caption = 'File Type List';
    CardPageId = "FileTypeCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
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
