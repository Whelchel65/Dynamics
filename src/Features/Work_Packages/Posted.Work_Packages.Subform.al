page 50675 "Posted Work_PackagesListPart"
{
    PageType = ListPart;
    SourceTable = "Posted Work_Packages LineSOD";
    Caption = 'Lines';
    AutoSplitKey = true;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Checklist; Rec.Checklist)
                {
                    ApplicationArea = All;
                }
                field(Line_Status; Rec.Line_Status)
                {
                    ApplicationArea = All;
                }
                field(Date_Complete; Rec.Date_Complete)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
