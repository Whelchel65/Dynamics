Reportextension 50504 "SODJob_Quote" extends "Job Quote"
{

    dataset
    {
        add("Job Planning Line")
        {
            column("Line_No__Job_Planning_Line_SOD"; "Job Planning Line"."Line No.")
            {
            }
        }
        add("Job Planning Line")
        {
            column("Line_No__Job_Planning_Line_Lbl_SOD"; "Job Planning Line".FieldCaption("Line No."))
            {
            }
        }
        add("Job")
        {
            column("Job_Notes_Job_SOD"; "Job"."Job_Notes")
            {
            }
        }
        add("Job")
        {
            column("Job_Notes_Job_Lbl_SOD"; "Job".FieldCaption("Job_Notes"))
            {
            }
        }
        add("Job Planning Line")
        {
            column("Tag_Number_Job_Planning_Line_SOD"; "Job Planning Line"."Tag_Number")
            {
            }
        }
        add("Job Planning Line")
        {
            column("Tag_Number_Job_Planning_Line_Lbl_SOD"; "Job Planning Line".FieldCaption("Tag_Number"))
            {
            }
        }

    }
}
