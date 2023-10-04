Reportextension 50515 "SODJob_Cost_Budget" extends "Job Cost Budget"
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
