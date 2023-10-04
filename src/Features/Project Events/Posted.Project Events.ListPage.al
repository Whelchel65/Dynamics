page 50813 "Posted Project EventsList"
{
    PageType = List;
    SourceTable = "Posted Project Events HeaderSOD";
    Caption = 'Posted Project Events List';
    CardPageId = "Posted Project EventsCard";
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(no; Rec.no)
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
                field(Project_Manager; Rec.Project_Manager)
                {
                    ApplicationArea = All;
                }
                field(Project_Status; Rec.Project_Status)
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
                SubPageLink = "Table ID" = CONST(50810),"No." = FIELD(no);
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
