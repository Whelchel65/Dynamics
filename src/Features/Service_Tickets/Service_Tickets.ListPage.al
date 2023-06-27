page 50630 "Service_TicketsList"
{
    PageType = List;
    SourceTable = "Service_Tickets HeaderSOD";
    Caption = 'Service Tickets List';
    CardPageId = "Service_TicketsCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
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
                    Editable = false;
                }
                field(Date_Initial_Responded; Rec.Date_Initial_Responded)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Date_Service_Completed; Rec.Date_Service_Completed)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Line_No; Rec.Line_No)
                {
                    ApplicationArea = All;
                }

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
