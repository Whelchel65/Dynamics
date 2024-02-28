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
