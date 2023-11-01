page 50832 "Ops_PackageListPart"
{
    PageType = ListPart;
    SourceTable = "Ops_Package LineSOD";
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
