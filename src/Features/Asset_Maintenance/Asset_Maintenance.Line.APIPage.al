page 50707 "API Asset_Maintenance LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Asset Maintenance Line';
    EntitySetCaption = 'Asset Maintenance Lines';
    EntityName = 'asset_maintenanceline';
    EntitySetName = 'asset_maintenancelines';

    ODataKeyFields = SystemId;
    SourceTable = "Asset_Maintenance LineSOD";

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
                field(equip_no; Rec."Equip_No")
                {
                    Caption = 'Equipment No';
                }
                field(log_type; Rec."Log_Type")
                {
                    Caption = 'Log Type';
                }
                field(date; Rec."Date")
                {
                    Caption = 'Date';
                }
                field(milage_hours; Rec."Milage_Hours")
                {
                    Caption = 'Milage/Hours';
                }
                field(service_issue; Rec."Service_Issue")
                {
                    Caption = 'Service/Issue';
                }
                field(log_status; Rec."Log_Status")
                {
                    Caption = 'Log Status';
                }
                field(completed_by; Rec."Completed_by")
                {
                    Caption = 'Completed by';
                }
            }
        }
    }
}
