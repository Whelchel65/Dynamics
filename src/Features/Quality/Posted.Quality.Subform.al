page 50695 "Posted QualityListPart"
{
    PageType = ListPart;
    SourceTable = "Posted Quality LineSOD";
    Caption = 'Line Items';
    AutoSplitKey = true;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Line_Description; Rec.Line_Description)
                {
                    ApplicationArea = All;
                }
                field(Line_Status; Rec.Line_Status)
                {
                    ApplicationArea = All;
                }
                field(Date_Checked; Rec.Date_Checked)
                {
                    ApplicationArea = All;
                ToolTip = 'Only to be checked by user who did it';                }
                field(Date_Found; Rec.Date_Found)
                {
                    ApplicationArea = All;
                }
                field(Date_Fixed; Rec.Date_Fixed)
                {
                    ApplicationArea = All;
                }
                field(Inspected_By; Rec.Inspected_By)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
