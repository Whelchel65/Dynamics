page 50540 "Cost_CodeList"
{
    PageType = List;
    SourceTable = "Cost_CodeSOD";
    Caption = 'Cost Code Table List';
    CardPageId = "Cost_CodeCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(CostCode; Rec.CostCode)
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
