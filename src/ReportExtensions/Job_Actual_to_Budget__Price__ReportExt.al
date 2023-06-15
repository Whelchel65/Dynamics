Reportextension 50514 "SODJob_Actual_to_Budget__Price" extends "Job Actual to Budget (Price)"
{

    dataset
    {
        add("Job Planning Line")
        {
            column("Description_Job_Planning_Line_SOD"; "Job Planning Line"."Description")
            {
            }
        }
        add("Job Planning Line")
        {
            column("Description_Job_Planning_Line_Lbl_SOD"; "Job Planning Line".FieldCaption("Description"))
            {
            }
        }

    }
}
