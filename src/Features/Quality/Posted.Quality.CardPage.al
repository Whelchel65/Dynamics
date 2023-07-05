page 50694 "Posted QualityCard"
{
    PageType = Document;
    SourceTable = "Posted Quality HeaderSOD";
    Caption = 'Posted Quality Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(Quality_No; Rec.Quality_No)
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
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(SharePoint_Link; Rec.SharePoint_Link)
                {
                    ApplicationArea = All;
                }
                field(Drawing_Number; Rec.Drawing_Number)
                {
                    ApplicationArea = All;
                }
                field(Employee; Rec.Employee)
                {
                    ApplicationArea = All;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
            }

            part(LinesPart; "Posted QualityListPart")
            {
                ApplicationArea = all;
                SubPageLink = "Quality_No" = FIELD("Quality_No");
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
