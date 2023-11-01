page 50811 "Project_EventsCard"
{
    PageType = Document;
    SourceTable = "Project_Events HeaderSOD";
    Caption = 'Project Events Card';

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
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(Project_Description; Rec.Project_Description)
                {
                    ApplicationArea = All;
                }
                field(Project_Status; Rec.Project_Status)
                {
                    ApplicationArea = All;
                }
                field(Project_Manager; Rec.Project_Manager)
                {
                    ApplicationArea = All;
                }
            }

            part(LinesPart; "Project_EventsListPart")
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
                SubPageLink = "Table ID" = CONST(50810),"No." = FIELD(No);
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
