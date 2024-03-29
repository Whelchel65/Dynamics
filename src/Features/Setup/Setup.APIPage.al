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
                field(quality_lines_number; Rec."Quality_Lines_Number")
                {
                    Caption = 'Quality Lines Number';
                }
                field(jobsite_address_number; Rec."Jobsite_Address_Number")
                {
                    Caption = 'Jobsite_Address Number series';
                }
                field(shop_employees_number; Rec."Shop_Employees_Number")
                {
                    Caption = 'Shop_Employees Number series';
                }
                field(wsi_time_entries_number; Rec."WSI_Time_Entries_Number")
                {
                    Caption = 'WSI_Time_Entries Number series';
                }
                field(wsi_ts_entry_number; Rec."WSI_TS_Entry_Number")
                {
                    Caption = 'WSI_TS_Entry Number series';
                }
                field(project_events_number; Rec."Project_Events_Number")
                {
                    Caption = 'Project_Events Number series';
                }
                field(ops_package_number; Rec."Ops_Package_Number")
                {
                    Caption = 'Ops_Package Number series';
                }
                field(serv_ticks_number; Rec."Serv_Ticks_Number")
                {
                    Caption = 'Serv_Ticks Number series';
                }
                field(done_project_time_number; Rec."Done_Project_Time_Number")
                {
                    Caption = 'Done_Project_Time Number series';
                }
                field(eng_package_number; Rec."Eng_Package_Number")
                {
                    Caption = 'Eng_Package Number series';
                }
            }
        }
    }
}
