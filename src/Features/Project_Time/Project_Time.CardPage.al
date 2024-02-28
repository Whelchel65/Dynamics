page 50661 "Project_TimeCard"
{
    PageType = Card;
    SourceTable = "Project_TimeSOD";
    Caption = 'Active Project Time Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(Entry_Number; Rec.Entry_Number)
                {
                    ApplicationArea = All;
                }
                field(TimeSheet_Reference; Rec.TimeSheet_Reference)
                {
                    ApplicationArea = All;
                }
                field(Employee; Rec.Employee)
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
                field(Operation; Rec.Operation)
                {
                    ApplicationArea = All;
                }
                field(Planned; Rec.Planned)
                {
                    ApplicationArea = All;
                }
                field(Drawing; Rec.Drawing)
                {
                    ApplicationArea = All;
                }
                field(Hours_Worked; Rec.Hours_Worked)
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
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
                SubPageLink = "Table ID" = CONST(50660),"No." = FIELD(Entry_Number);
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
