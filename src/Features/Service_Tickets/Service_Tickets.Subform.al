page 50632 "Service_TicketsListPart"
{
    PageType = ListPart;
    SourceTable = "Service_Tickets LineSOD";
    Caption = 'Lines';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Line_Date; Rec.Line_Date)
                {
                    ApplicationArea = All;
                }
                field(Line_Notes; Rec.Line_Notes)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
