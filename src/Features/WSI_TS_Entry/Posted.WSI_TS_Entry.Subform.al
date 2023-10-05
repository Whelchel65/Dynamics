page 50805 "Posted WSI_TS_EntryListPart"
{
    PageType = ListPart;
    SourceTable = "Posted WSI_TS_Entry LineSOD";
    Caption = 'Entries';
    AutoSplitKey = true;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Employee_Name; Rec.Employee_Name)
                {
                    ApplicationArea = All;
                }
                field(Full_Name; Rec.Full_Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Overtime; Rec.Overtime)
                {
                    ApplicationArea = All;
                }
                field(Actual_Hours_Worked; Rec.Actual_Hours_Worked)
                {
                    ApplicationArea = All;
                }
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                }
                field(Percent_Complete; Rec.Percent_Complete)
                {
                    ApplicationArea = All;
                }
                field(Date_Complete; Rec.Date_Complete)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
