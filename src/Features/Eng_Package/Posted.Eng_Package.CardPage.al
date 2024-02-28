page 50864 "Posted Eng_PackageCard"
{
    PageType = Document;
    SourceTable = "Posted Eng_Package HeaderSOD";
    Caption = 'Posted Engineering Package Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field(Package_Name; Rec.Package_Name)
                {
                    ApplicationArea = All;
                ToolTip = 'Name of PDF Drawing Package';                }
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(Release_Status; Rec.Release_Status)
                {
                    ApplicationArea = All;
                ToolTip = 'Engineering release to Production';                }
                field(Release_to_Floor; Rec.Release_to_Floor)
                {
                    ApplicationArea = All;
                ToolTip = 'Any part of drawing on shop floor';                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                }
            }

            part(LinesPart; "Posted Eng_PackageListPart")
            {
                ApplicationArea = all;
                SubPageLink = "No" = FIELD("No");
            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50862),"No." = FIELD(No);
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
