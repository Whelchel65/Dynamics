page 50695 "Posted QualityListPart"
{
    PageType = ListPart;
    SourceTable = "Posted Quality LineSOD";
    Caption = 'Non Conformance Lines';
    AutoSplitKey = true;
    Editable = false;

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
