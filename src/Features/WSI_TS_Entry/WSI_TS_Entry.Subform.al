page 50802 "WSI_TS_EntryListPart"
{
    PageType = ListPart;
    SourceTable = "WSI_TS_Entry LineSOD";
    Caption = 'Entries';
    AutoSplitKey = true;

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
