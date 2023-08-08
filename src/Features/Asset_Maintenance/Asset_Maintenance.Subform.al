page 50702 "Asset_MaintenanceListPart"
{
    PageType = ListPart;
    SourceTable = "Asset_Maintenance LineSOD";
    Caption = 'Service/Issues Log';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Log_Type; Rec.Log_Type)
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Milage_Hours; Rec.Milage_Hours)
                {
                    ApplicationArea = All;
                }
                field(Service_Issue; Rec.Service_Issue)
                {
                    ApplicationArea = All;
                }
                field(Log_Status; Rec.Log_Status)
                {
                    ApplicationArea = All;
                }
                field(Completed_by; Rec.Completed_by)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
