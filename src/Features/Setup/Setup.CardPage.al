page 50641 "SetupCard"
{
    PageType = Card;
    SourceTable = "SetupSOD";
    Caption = 'My Customizations Setup';
    UsageCategory = Administration;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            group("Number seriesGrp")
            {
                Caption = 'Number series';
                field(Service_Tickets_Number; Rec.Service_Tickets_Number)
                {
                    ApplicationArea = All;
                }
                field(Setup_Number; Rec.Setup_Number)
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
