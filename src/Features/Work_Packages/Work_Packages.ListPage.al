page 50670 "Work_PackagesList"
{
    PageType = List;
    SourceTable = "Work_Packages HeaderSOD";
    Caption = 'Work Package List';
    CardPageId = "Work_PackagesCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(WP_No; Rec.WP_No)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                field(Drawing_No; Rec.Drawing_No)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(processing)
        {
        }
    }
}
