page 50673 "Posted Work_PackagesList"
{
    PageType = List;
    SourceTable = "Posted Work_Packages HeaderSOD";
    Caption = 'Posted Work Package List';
    CardPageId = "Posted Work_PackagesCard";
    Editable = false;
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
