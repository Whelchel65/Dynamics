page 50712 "Sales_LeadsListPart"
{
    PageType = ListPart;
    SourceTable = "Sales_Leads LineSOD";
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
