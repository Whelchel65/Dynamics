page 50632 "Serv_TicksListPart"
{
    PageType = ListPart;
    SourceTable = "Serv_Ticks LineSOD";
    Caption = 'Tasks, Notes, Communications';
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
                field(Line_Status; Rec.Line_Status)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
