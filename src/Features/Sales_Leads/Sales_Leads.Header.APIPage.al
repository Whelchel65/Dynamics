page 50716 "API Sales_Leads HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Sales Propects Header';
    EntitySetCaption = 'Sales Propects Headers';
    EntityName = 'sales_leadsheader';
    EntitySetName = 'sales_leadsheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Sales_Leads HeaderSOD";

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
                field(no; Rec."No")
                {
                    Caption = 'No.';
                }
                field(project_number; Rec."Project_Number")
                {
                    Caption = 'Project Number';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(contact; Rec."Contact")
                {
                    Caption = 'Contact';
                }
                field(contact_name; Rec."Contact_Name")
                {
                    Caption = 'Contact Name';
                }
                field(phone; Rec."Phone")
                {
                    Caption = 'Phone';
                }
                field(mobile; Rec."Mobile")
                {
                    Caption = 'Mobile';
                }
                field(email; Rec."Email")
                {
                    Caption = 'Email';
                }
                field(contact_company; Rec."Contact_Company")
                {
                    Caption = 'Contact Company';
                }
                field(stage; Rec."Stage")
                {
                    Caption = 'Stage';
                }
                field(success_probability; Rec."Success_Probability")
                {
                    Caption = 'Success Probability';
                }
                field(creation_date; Rec."Creation_Date")
                {
                    Caption = 'Creation Date';
                }
                field(next_follow_up; Rec."Next_Follow_Up")
                {
                    Caption = 'Next Follow Up';
                }
                field(last_interaction; Rec."Last_Interaction")
                {
                    Caption = 'Last Interaction';
                }
                field(date_closed; Rec."Date_Closed")
                {
                    Caption = 'Date Closed';
                }
                field(estimated_value; Rec."Estimated_Value")
                {
                    Caption = 'Estimated Value';
                }
                field(estimated_complete_date; Rec."Estimated_Complete_Date")
                {
                    Caption = 'Estimated Complete Date';
                }
                field(projected_revenue; Rec."Projected_Revenue")
                {
                    Caption = 'Projected Revenue';
                }
                field(project_duration; Rec."Project_Duration")
                {
                    Caption = 'Project Duration (weeks)';
                }
                field(project_type; Rec."Project_Type")
                {
                    Caption = 'Project Type';
                }
                field(design_flow; Rec."Design_Flow")
                {
                    Caption = 'Design Flow (GPD)';
                }
                field(effluent_target; Rec."Effluent_Target")
                {
                    Caption = 'Effluent Target';
                }
                field(state; Rec."State")
                {
                    Caption = 'State';
                }
            }
        }
    }
}
