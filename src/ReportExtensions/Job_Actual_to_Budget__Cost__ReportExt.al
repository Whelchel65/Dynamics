Reportextension 50513 "SODJob_Actual_to_Budget__Cost_" extends "Job Actual to Budget (Cost)"
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
