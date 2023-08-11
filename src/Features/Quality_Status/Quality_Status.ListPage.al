page 50720 "Quality_StatusList"
{
    PageType = List;
    SourceTable = "Quality_StatusSOD";
    Caption = 'Quality Status';
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Item; Rec.Item)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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
