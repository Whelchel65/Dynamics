page 50862 "Eng_PackageListPart"
{
    PageType = ListPart;
    SourceTable = "Eng_Package LineSOD";
    Caption = 'Lines';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Drawing_No; Rec.Drawing_No)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Rev; Rec.Rev)
                {
                    ApplicationArea = All;
                }
                field(Rev_Released; Rec.Rev_Released)
                {
                    ApplicationArea = All;
                ToolTip = 'Is this rev on the floor or is there a new rev that has replaced the physical print on the floor';                }
                field(Ops_Package; Rec.Ops_Package)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
