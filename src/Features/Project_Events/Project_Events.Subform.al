page 50812 "Project_EventsListPart"
{
    PageType = ListPart;
    SourceTable = "Project_Events LineSOD";
    Caption = 'Lines';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Line_Type; Rec.Line_Type)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Line_Status; Rec.Line_Status)
                {
                    ApplicationArea = All;
                }
                field(Date_Created; Rec.Date_Created)
                {
                    ApplicationArea = All;
                }
                field(Line_Action; Rec.Line_Action)
                {
                    ApplicationArea = All;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
