page 50551 "ManufacturersCard"
{
    PageType = Card;
    SourceTable = "ManufacturersSOD";
    Caption = 'Manufacturers Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
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
