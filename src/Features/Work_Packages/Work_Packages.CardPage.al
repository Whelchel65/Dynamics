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
                field(Ops_Package; Rec.Ops_Package)
                {
                    ApplicationArea = All;
                }
                field(Need_By; Rec.Need_By)
                {
                    ApplicationArea = All;
                }
                field(Job_No; Rec.Job_No)
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
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50670),"No." = FIELD(WP_No);
            }
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
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
