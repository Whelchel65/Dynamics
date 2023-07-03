page 50671 "Work_PackagesCard"
{
    PageType = Document;
    SourceTable = "Work_Packages HeaderSOD";
    Caption = 'Work Package Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
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

            part(LinesPart; "Work_PackagesListPart")
            {
                ApplicationArea = all;
                SubPageLink = "WP_No" = FIELD("WP_No");
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(Post)
            {
                Caption = 'Post';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = PostDocument;
                trigger OnAction()
                begin
                    if confirm('Post Work Package') then
                        Rec.Post(Rec);                end;
            }
        }
    }
}
