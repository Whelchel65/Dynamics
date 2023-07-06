page 50682 "MTL_RequestListPart"
{
    PageType = ListPart;
    SourceTable = "MTL_Request LineSOD";
    Caption = 'Lines';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Item_Number; Rec.Item_Number)
                {
                    ApplicationArea = All;
                }
                field(QTY_Needed; Rec.QTY_Needed)
                {
                    ApplicationArea = All;
                }
                field(UOM; Rec.UOM)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Vendor_Item_No; Rec.Vendor_Item_No)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Manufacturer_Part_No; Rec.Manufacturer_Part_No)
                {
                    ApplicationArea = All;
                }
                field(Line_Status; Rec.Line_Status)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
