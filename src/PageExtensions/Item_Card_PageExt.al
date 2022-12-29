pageextension 50500 "SODItem_Card" extends "Item Card"
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
        AddAfter("Vendor Item No.")
        {
            field("ManfPartNum_SOD"; Rec."ManfPartNum")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Base Unit of Measure")
        {
            field("PackQTY_SOD"; Rec."PackQTY")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
