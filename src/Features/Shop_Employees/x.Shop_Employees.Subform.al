page 50795 "x Shop_EmployeesListPart"
{
    PageType = ListPart;
    SourceTable = "x Shop_Employees LineSOD";
    Caption = 'Incidents/Issues';
    AutoSplitKey = true;
    Editable = false;

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
