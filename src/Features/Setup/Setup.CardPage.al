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
                field(Project_Time_Number; Rec.Project_Time_Number)
                {
                    ApplicationArea = All;
                }
                field(Work_Packages_Number; Rec.Work_Packages_Number)
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
