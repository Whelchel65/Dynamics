page 50687 "API MTL_Request LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Material Request Line';
    EntitySetCaption = 'Material Request Lines';
    EntityName = 'mtl_requestline';
    EntitySetName = 'mtl_requestlines';

    ODataKeyFields = SystemId;
    SourceTable = "MTL_Request LineSOD";

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
                field(request_no; Rec."Request_No")
                {
                    Caption = 'Request No';
                }
                field(item_number; Rec."Item_Number")
                {
                    Caption = 'Item Number';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(vendor_item_no; Rec."Vendor_Item_No")
                {
                    Caption = 'Vendor Item No';
                }
                field(manufacturer_part_no; Rec."Manufacturer_Part_No")
                {
                    Caption = 'Manufacturer Part No';
                }
                field(qty_needed; Rec."QTY_Needed")
                {
                    Caption = 'QTY Needed';
                }
                field(line_status; Rec."Line_Status")
                {
                    Caption = 'Status';
                }
                field(uom; Rec."UOM")
                {
                    Caption = 'UOM';
                }
                field(desc; Rec."Desc")
                {
                    Caption = 'Notes/Description';
                }
            }
        }
    }
}
