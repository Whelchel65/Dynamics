pageextension 50501 "SODItem_List" extends "Item List"
{
    layout
    {
        AddAfter("Description")
        {
            field("Search Description_SOD"; Rec."Search Description")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Vendor No.")
        {
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
                Enabled = false;
            }
        }
        AddAfter("Vendor Item No.")
        {
            field("ManfName_SOD"; Rec."ManfName")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
