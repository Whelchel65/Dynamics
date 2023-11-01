page 50835 "Posted Ops_PackageListPart"
{
    PageType = ListPart;
    SourceTable = "Posted Ops_Package LineSOD";
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
                field(LDescription; Rec.LDescription)
                {
                    ApplicationArea = All;
                }
                field(Date_Created; Rec.Date_Created)
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
