Reportextension 50512 "SODVendor_Purchases_by_Item" extends "Vendor Purchases by Item"
{

    dataset
    {
        add("Item")
        {
            column("Purchasing_Code_Item_SOD"; "Item"."Purchasing Code")
            {
            }
        }
        add("Item")
        {
            column("Purchasing_Code_Item_Lbl_SOD"; "Item".FieldCaption("Purchasing Code"))
            {
            }
        }

    }

}
