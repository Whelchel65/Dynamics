page 50800 "WSI_TS_EntryList"
{
    PageType = List;
    SourceTable = "WSI_TS_Entry HeaderSOD";
    Caption = 'WSI Time Entries List';
    CardPageId = "WSI_TS_EntryCard";
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
        }
    }
}
