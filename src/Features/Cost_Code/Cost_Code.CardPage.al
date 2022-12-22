page 50541 "Cost_CodeCard"
{
    PageType = Card;
    SourceTable = "Cost_CodeSOD";
    Caption = 'Cost Code Table Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
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
