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
        }


    }
    actions
    {

    }
}
