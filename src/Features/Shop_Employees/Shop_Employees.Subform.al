page 50792 "Shop_EmployeesListPart"
{
    PageType = ListPart;
    SourceTable = "Shop_Employees LineSOD";
    Caption = 'Incidents/Issues';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
