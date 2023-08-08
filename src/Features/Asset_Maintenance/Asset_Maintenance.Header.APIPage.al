page 50706 "API Asset_Maintenance HeaderSO"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Asset Maintenance Header';
    EntitySetCaption = 'Asset Maintenance Headers';
    EntityName = 'asset_maintenanceheader';
    EntitySetName = 'asset_maintenanceheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Asset_Maintenance HeaderSOD";

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
                field(equipment_name; Rec."Equipment_Name")
                {
                    Caption = 'Equipment Name';
                }
                field(equipment_type; Rec."Equipment_Type")
                {
                    Caption = 'Equipment Type';
                }
                field(manufacturer; Rec."Manufacturer")
                {
                    Caption = 'Manufacturer';
                }
                field(model; Rec."Model")
                {
                    Caption = 'Model';
                }
                field(serial; Rec."Serial")
                {
                    Caption = 'Serial';
                }
                field(purchase_date; Rec."Purchase_Date")
                {
                    Caption = 'Purchase Date';
                }
                field(warranty_expire_date; Rec."Warranty_Expire_Date")
                {
                    Caption = 'Warranty Expire Date';
                }
                field(storage_location; Rec."Storage_Location")
                {
                    Caption = 'Location';
                }
                field(equipment_notes; Rec."Equipment_Notes")
                {
                    Caption = 'Equipment Notes';
                }
                field(operating_status; Rec."Operating_Status")
                {
                    Caption = 'Operating Status';
                }
            }
        }
    }
}
