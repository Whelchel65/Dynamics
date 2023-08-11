page 50740 "StatesList"
{
    PageType = List;
    SourceTable = "StatesSOD";
    Caption = 'State/Region';
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                }
                field(State_Name; Rec.State_Name)
                {
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
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
