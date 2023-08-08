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
                field(Work_Packages_Number; Rec.Work_Packages_Number)
                {
                    ApplicationArea = All;
                }
                field(Material_Request_Number; Rec.Material_Request_Number)
                {
                    ApplicationArea = All;
                }
                field(MTL_Request_Number; Rec.MTL_Request_Number)
                {
                    ApplicationArea = All;
                }
                field(Quality_Number; Rec.Quality_Number)
                {
                    ApplicationArea = All;
                }
                field(Project_Time_Number; Rec.Project_Time_Number)
                {
                    ApplicationArea = All;
                }
                field(Sales_Prospects_Number; Rec.Sales_Prospects_Number)
                {
                    ApplicationArea = All;
                }
                field(Sales_Leads_Number; Rec.Sales_Leads_Number)
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
    trigger OnInit()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;
}
