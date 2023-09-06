pageextension 50509 "SODJob_Card" extends "Job Card"
{
    layout
    {
        AddAfter("External Document No.")
        {
            field("Job_Notes_SOD"; Rec."Job_Notes")
            {
                Multiline = true;
                ApplicationArea = all;
            }
            field("Bill_Total_SOD"; Rec."Bill_Total")
            {
                ApplicationArea = all;
            }
            field("Actual_Cost_Total_SOD"; Rec."Actual_Cost_Total")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
