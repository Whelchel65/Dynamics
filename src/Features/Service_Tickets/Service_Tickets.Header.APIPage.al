page 50636 "API Service_Tickets HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Service Tickets Header';
    EntitySetCaption = 'Service Tickets Headers';
    EntityName = 'service_ticketsheader';
    EntitySetName = 'service_ticketsheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Service_Tickets HeaderSOD";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(RepeaterGroup)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(ticket_no; Rec."Ticket_No")
                {
                    Caption = 'Ticket No';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(status; Rec."Status")
                {
                    Caption = 'Status';
                }
                field(ticket_stage; Rec."Ticket_Stage")
                {
                    Caption = 'Ticket Stage';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(contact; Rec."Contact")
                {
                    Caption = 'Contact';
                }
                field(date_originated; Rec."Date_Originated")
                {
                    Caption = 'Date_Originated';
                }
                field(date_initial_responded; Rec."Date_Initial_Responded")
                {
                    Caption = 'Date_Initial_Responded';
                }
                field(date_service_completed; Rec."Date_Service_Completed")
                {
                    Caption = 'Date_Service_Completed';
                }
                field(sharepoint_url; Rec."Sharepoint_URL")
                {
                    Caption = 'Sharepoint URL';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Initial Notes';
                }
                field(contact_name; Rec."Contact_Name")
                {
                    Caption = 'Contact Name';
                }
                field(contact_company; Rec."Contact_Company")
                {
                    Caption = 'Company';
                }
                field(contact_phone_no; Rec."Contact_Phone_No")
                {
                    Caption = 'Contact Phone No';
                }
                field(contact_email; Rec."Contact_Email")
                {
                    Caption = 'Contact Email';
                }
                field(contact_city; Rec."Contact_City")
                {
                    Caption = 'Contact City';
                }
                field(contact_state; Rec."Contact_State")
                {
                    Caption = 'Contact State';
                }
                field(user_responsible; Rec."User_Responsible")
                {
                    Caption = 'User Responsible';
                }
                field(escalation; Rec."Escalation")
                {
                    Caption = 'Escalation';
                }
                field(urgency; Rec."Urgency")
                {
                    Caption = 'Urgency';
                }
                field(send_escalation; Rec."Send_Escalation")
                {
                    Caption = 'Send Escalation';
                }
                field(sales_quote; Rec."Sales_Quote")
                {
                    Caption = 'Sales Quote';
                }
                field(sales_order; Rec."Sales_Order")
                {
                    Caption = 'Sales Order';
                }
            }
        }
    }
}
