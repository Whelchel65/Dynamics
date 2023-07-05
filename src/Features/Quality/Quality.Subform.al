page 50692 "QualityListPart"
{
    PageType = ListPart;
    SourceTable = "Quality LineSOD";
    Caption = 'Non Conformance Lines';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(NCR_Item; Rec.NCR_Item)
                {
                    ApplicationArea = All;
                }
                field(Fault_Description; Rec.Fault_Description)
                {
                    ApplicationArea = All;
                }
                field(NCR_Status; Rec.NCR_Status)
                {
                    ApplicationArea = All;
                }
                field(Date_Found; Rec.Date_Found)
                {
                    ApplicationArea = All;
                }
                field(Date_Fixed; Rec.Date_Fixed)
                {
                    ApplicationArea = All;
                }
                field(Corrected_By; Rec.Corrected_By)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
