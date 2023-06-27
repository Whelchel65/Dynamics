page 50590 "Tag_NumberList"
{
    PageType = List;
    SourceTable = "Tag_NumberSOD";
    Caption = 'Tag Number';
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Tag_Number; Rec.Tag_Number)
                {
                    ApplicationArea = All;
                }
                field(Job_Number; Rec.Job_Number)
                {
                    ApplicationArea = All;
                }
                field(Decription; Rec.Decription)
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
