page 50760 "API P50760 SOD"
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
                field(assemblybom; Rec."Assembly BOM")
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
                field(blockreason; Rec."Block Reason")
                {
                }
                field(datefilter; Rec."Date Filter")
                {
                }
                field(inventory; Rec."Inventory")
                {
                }
                field(purchases_qty__; Rec."Purchases (Qty.)")
                {
                }
                field(sales_qty__; Rec."Sales (Qty.)")
                {
                }
                field(positiveadjmt__qty__; Rec."Positive Adjmt. (Qty.)")
                {
                }
                field(negativeadjmt__qty__; Rec."Negative Adjmt. (Qty.)")
                {
                }
                field(purchases_lcy_; Rec."Purchases (LCY)")
                {
                }
                field(sales_lcy_; Rec."Sales (LCY)")
                {
                }
                field(positiveadjmt__lcy_; Rec."Positive Adjmt. (LCY)")
                {
                }
                field(negativeadjmt__lcy_; Rec."Negative Adjmt. (LCY)")
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
                field(picture; Rec."Picture")
                {
                }
                field(no_series; Rec."No. Series")
                {
                }
                field(taxgroupcode; Rec."Tax Group Code")
                {
                }
                field(qty_onjoborder; Rec."Qty. on Job Order")
                {
                }
                field(serialnos_; Rec."Serial Nos.")
                {
                }
                field(taxgroupid; Rec."Tax Group Id")
                {
                }
                field(salesblocked; Rec."Sales Blocked")
                {
                }
                field(itemcategoryid; Rec."Item Category Id")
                {
                }
                field(inventorypostinggroupid; Rec."Inventory Posting Group Id")
                {
                }
                field(gen_prod_postinggroupid; Rec."Gen. Prod. Posting Group Id")
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
                field(routingno_; Rec."Routing No.")
                {
                }
                field(productionbomno_; Rec."Production BOM No.")
                {
                }
                field(critical; Rec."Critical")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
                field(systemcreatedby; Rec."SystemCreatedBy")
                {
                }
            }
        }
    }
}
