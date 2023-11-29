page 50851 "API P50851 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Item';
    EntitySetCaption = 'Items';
    EntityName = 'item';
    EntitySetName = 'items';

    ODataKeyFields = SystemId;
    SourceTable = "Item";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(APIRepeaterSOD)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(no_; Rec."No.")
                {
                }
                field(no_2; Rec."No. 2")
                {
                }
                field(description; Rec."Description")
                {
                }
                field(searchdescription; Rec."Search Description")
                {
                }
                field(description2; Rec."Description 2")
                {
                }
                field(baseunitofmeasure; Rec."Base Unit of Measure")
                {
                }
                field(type; Rec."Type")
                {
                }
                field(inventorypostinggroup; Rec."Inventory Posting Group")
                {
                }
                field(shelfno_; Rec."Shelf No.")
                {
                }
                field(unitprice; Rec."Unit Price")
                {
                }
                field(priceprofitcalculation; Rec."Price/Profit Calculation")
                {
                }
                field(profit_; Rec."Profit %")
                {
                }
                field(costingmethod; Rec."Costing Method")
                {
                }
                field(unitcost; Rec."Unit Cost")
                {
                }
                field(standardcost; Rec."Standard Cost")
                {
                }
                field(lastdirectcost; Rec."Last Direct Cost")
                {
                }
                field(indirectcost_; Rec."Indirect Cost %")
                {
                }
                field(vendorno_; Rec."Vendor No.")
                {
                }
                field(vendoritemno_; Rec."Vendor Item No.")
                {
                }
                field(comment; Rec."Comment")
                {
                }
                field(blocked; Rec."Blocked")
                {
                }
                field(inventory; Rec."Inventory")
                {
                }
                field(qty_onpurch_order; Rec."Qty. on Purch. Order")
                {
                }
                field(qty_onsalesorder; Rec."Qty. on Sales Order")
                {
                }
                field(gen_prod_postinggroup; Rec."Gen. Prod. Posting Group")
                {
                }
                field(no_series; Rec."No. Series")
                {
                }
                field(taxgroupcode; Rec."Tax Group Code")
                {
                }
                field(reserve; Rec."Reserve")
                {
                }
                field(reservedqty_oninventory; Rec."Reserved Qty. on Inventory")
                {
                }
                field(reservedqty_onpurch_orders; Rec."Reserved Qty. on Purch. Orders")
                {
                }
                field(reservedqty_onsalesorders; Rec."Reserved Qty. on Sales Orders")
                {
                }
                field(qty_onjoborder; Rec."Qty. on Job Order")
                {
                }
                field(unitofmeasurefilter; Rec."Unit of Measure Filter")
                {
                }
                field(vendor_name; Rec."Vendor_Name")
                {
                }
                field(manfname; Rec."ManfName")
                {
                }
                field(manfpartnum; Rec."ManfPartNum")
                {
                }
                field(packqty; Rec."PackQTY")
                {
                }
                field(size; Rec."Size")
                {
                }
                field(material; Rec."Material")
                {
                }
                field(connection; Rec."Connection")
                {
                }
                field(normal_position; Rec."Normal_Position")
                {
                }
                field(voltage; Rec."Voltage")
                {
                }
                field(phase; Rec."Phase")
                {
                }
                field(poles; Rec."Poles")
                {
                }
                field(piping_type; Rec."Piping_Type")
                {
                }
                field(application; Rec."Application")
                {
                }
                field(horse_power; Rec."Horse_Power")
                {
                }
                field(standard_item; Rec."Standard_Item")
                {
                }
                field(cost_code; Rec."Cost_Code")
                {
                }
                field(routingno_; Rec."Routing No.")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
                field(systemcreatedat; Rec."SystemCreatedAt")
                {
                }
                field(systemcreatedby; Rec."SystemCreatedBy")
                {
                }
                field(systemmodifiedat; Rec."SystemModifiedAt")
                {
                }
                field(systemmodifiedby; Rec."SystemModifiedBy")
                {
                }
            }
        }
    }
}
