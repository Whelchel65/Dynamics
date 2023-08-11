page 50730 "Project_TypesList"
{
    PageType = List;
    SourceTable = "Project_TypesSOD";
    Caption = 'Project Types for Sales';
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(no; Rec.no)
                {
                    ApplicationArea = All;
                }
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
