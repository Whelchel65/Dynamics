page 50692 "QualityListPart"
{
    PageType = ListPart;
    SourceTable = "Quality LineSOD";
    Caption = 'Line Items';
    AutoSplitKey = true;

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
                field(Line_Description; Rec.Line_Description)
                {
                    ApplicationArea = All;
                }
                field(Checked_By; Rec.Checked_By)
                {
                    ApplicationArea = All;
                ToolTip = 'Only to be checked by user who did it';                }
                field(Line_Status; Rec.Line_Status)
                {
                    ApplicationArea = All;
                }
                field(Date_Found; Rec.Date_Found)
                {
                    ApplicationArea = All;
                }
                field(Date_Fixed; Rec.Date_Fixed)
                {
                    ApplicationArea = All;
                }
                field(Corrected_By; Rec.Corrected_By)
                {
                    ApplicationArea = All;
                }
                field(Solution; Rec.Solution)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
