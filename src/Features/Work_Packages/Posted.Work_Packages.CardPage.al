page 50674 "Posted Work_PackagesCard"
{
    PageType = Document;
    SourceTable = "Posted Work_Packages HeaderSOD";
    Caption = 'Posted Work Package Card';
    Editable = false;

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

            part(LinesPart; "Posted Work_PackagesListPart")
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
                SubPageLink = "Table ID" = CONST(50672),"No." = FIELD(WP_No);
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
        }
    }
}
