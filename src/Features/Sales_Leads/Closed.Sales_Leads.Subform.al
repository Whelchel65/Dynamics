page 50715 "Closed Sales_LeadsListPart"
{
    PageType = ListPart;
    SourceTable = "Closed Sales_Leads LineSOD";
    Caption = 'Lines';
    AutoSplitKey = true;
    Editable = false;

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
                field(LineDate; Rec.LineDate)
                {
                    ApplicationArea = All;
                }
                field(SP_Code; Rec.SP_Code)
                {
                    ApplicationArea = All;
                }
                field(LineNotes; Rec.LineNotes)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
