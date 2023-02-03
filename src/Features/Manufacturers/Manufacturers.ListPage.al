page 50550 "ManufacturersList"
{
    PageType = List;
    SourceTable = "ManufacturersSOD";
    Caption = 'Manufacturers List';
    CardPageId = "ManufacturersCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Search; Rec.Search)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(processing)
        {
        }
    }
}
