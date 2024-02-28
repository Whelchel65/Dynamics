page 50633 "Posted Serv_TicksList"
{
    PageType = List;
    SourceTable = "Posted Serv_Ticks HeaderSOD";
    Caption = 'Posted Service Tickets List';
    CardPageId = "Posted Serv_TicksCard";
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Contact_Name; Rec.Contact_Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Ticket_No; Rec.Ticket_No)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Urgency; Rec.Urgency)
                {
                    ApplicationArea = All;
                }
                field(Ticket_Stage; Rec.Ticket_Stage)
                {
                    ApplicationArea = All;
                }
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = All;
                }
                field(Date_Originated; Rec.Date_Originated)
                {
                    ApplicationArea = All;
                }
                field(Date_Service_Completed; Rec.Date_Service_Completed)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50632),"No." = FIELD(Ticket_No);
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
