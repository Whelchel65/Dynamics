page 50634 "Posted Serv_TicksCard"
{
    PageType = Document;
    SourceTable = "Posted Serv_Ticks HeaderSOD";
    Caption = 'Posted Service Tickets Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
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
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                field(Urgency; Rec.Urgency)
                {
                    ApplicationArea = All;
                }
                field(Ticket_Stage; Rec.Ticket_Stage)
                {
                    ApplicationArea = All;
                }
                field(User_Responsible; Rec.User_Responsible)
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
                field(Sharepoint_URL; Rec.Sharepoint_URL)
                {
                    ApplicationArea = All;
                    Style = StrongAccent;
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
                field(Sales_Quote; Rec.Sales_Quote)
                {
                    ApplicationArea = All;
                }
                field(Sales_Order; Rec.Sales_Order)
                {
                    ApplicationArea = All;
                }
            }
            group("Contact InformationGrp")
            {
                Caption = 'Contact Information';
                field(Contact_Name; Rec.Contact_Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Contact_Company; Rec.Contact_Company)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Contact_Phone_No; Rec.Contact_Phone_No)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Contact_Email; Rec.Contact_Email)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Contact_City; Rec.Contact_City)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Contact_State; Rec.Contact_State)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }

            part(LinesPart; "Posted Serv_TicksListPart")
            {
                ApplicationArea = all;
                SubPageLink = "Ticket_No" = FIELD("Ticket_No");
            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50630),"No." = FIELD(Ticket_No);
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
