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
                field(Drawing_Number; Rec.Drawing_Number)
                {
                    ApplicationArea = All;
                }
                field(LDescription; Rec.LDescription)
                {
                    ApplicationArea = All;
                }
                field(Eng_Package; Rec.Eng_Package)
                {
                    ApplicationArea = All;
                }
                field(Drawing_Rev; Rec.Drawing_Rev)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
