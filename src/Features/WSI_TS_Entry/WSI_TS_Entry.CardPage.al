page 50801 "WSI_TS_EntryCard"
{
    PageType = Document;
    SourceTable = "WSI_TS_Entry HeaderSOD";
    Caption = 'WSI Time Entries Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(no; Rec.no)
                {
                    ApplicationArea = All;
                }
                field(Date_Assigned; Rec.Date_Assigned)
                {
                    ApplicationArea = All;
                }
                field(Hours_Allocated; Rec.Hours_Allocated)
                {
                    ApplicationArea = All;
                }
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(Parent_Task; Rec.Parent_Task)
                {
                    ApplicationArea = All;
                }
                field(Task_Name; Rec.Task_Name)
                {
                    ApplicationArea = All;
                }
                field(Priority; Rec.Priority)
                {
                    ApplicationArea = All;
                }
                field(Operation; Rec.Operation)
                {
                    ApplicationArea = All;
                }
                field(Drawing_Number; Rec.Drawing_Number)
                {
                    ApplicationArea = All;
                }
                field(Complete; Rec.Complete)
                {
                    ApplicationArea = All;
                }
            }

            part(LinesPart; "WSI_TS_EntryListPart")
            {
                ApplicationArea = all;
                SubPageLink = "no" = FIELD("no");
            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50800),"No." = FIELD(no);
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
                    if confirm('Post WSI Time Entries') then
                        Rec.Post(Rec);                end;
            }
        }
    }
}
