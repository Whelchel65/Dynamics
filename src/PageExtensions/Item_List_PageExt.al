pageextension 50501 "SODItem_List50501" extends "Item List"
{
    layout
    {
        AddBefore("Type")
        {
            field("ManfName_SOD"; Rec."ManfName")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Description")
        {
            field("Search Description_SOD"; Rec."Search Description")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Standard Cost")
        {
            field("Duplicate_SOD"; Rec."Duplicate")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Vendor No.")
        {
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }


    }
    actions
    {

    }
}
