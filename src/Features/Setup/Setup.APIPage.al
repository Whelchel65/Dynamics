page 50646 "API SetupSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'My Customizations Setup';
    EntitySetCaption = 'My Customizations Setups';
    EntityName = 'setup';
    EntitySetName = 'setups';

    ODataKeyFields = SystemId;
    SourceTable = "SetupSOD";

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
                field(pk; Rec."PK")
                {
                    Caption = 'Primary Key';
                }
                field(service_tickets_number; Rec."Service_Tickets_Number")
                {
                    Caption = 'Service_Tickets Number series';
                }
                field(work_packages_number; Rec."Work_Packages_Number")
                {
                    Caption = 'Work_Packages Number series';
                }
                field(material_request_number; Rec."Material_Request_Number")
                {
                    Caption = 'Material_Request Number series';
                }
                field(mtl_request_number; Rec."MTL_Request_Number")
                {
                    Caption = 'MTL_Request Number series';
                }
                field(quality_number; Rec."Quality_Number")
                {
                    Caption = 'Quality Number series';
                }
                field(project_time_number; Rec."Project_Time_Number")
                {
                    Caption = 'Project_Time Number series';
                }
                field(sales_prospects_number; Rec."Sales_Prospects_Number")
                {
                    Caption = 'Sales_Prospects Number series';
                }
                field(sales_leads_number; Rec."Sales_Leads_Number")
                {
                    Caption = 'Sales_Leads Number series';
                }
                field(quality_status_number; Rec."Quality_Status_Number")
                {
                    Caption = 'Quality_Status Number series';
                }
                field(project_types_number; Rec."Project_Types_Number")
                {
                    Caption = 'Project_Types Number series';
                }
            }
        }
    }
}
