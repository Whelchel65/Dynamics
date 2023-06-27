page 50631 "Service_TicketsCard"
{
    PageType = Document;
    SourceTable = "Service_Tickets HeaderSOD";
    Caption = 'Service Tickets Card';

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
                field(Sharepoint_URL; Rec.Sharepoint_URL)
                {
                    ApplicationArea = All;
                    Style = StrongAccent;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                    MultiLine = true;
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

            part(LinesPart; "Service_TicketsListPart")
            {
                ApplicationArea = all;
                SubPageLink = "Ticket_No" = FIELD("Ticket_No");
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
