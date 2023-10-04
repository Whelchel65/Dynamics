Reportextension 50503 "SODJob___Planning_Lines" extends "Job - Planning Lines"
{

    dataset
    {
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
        add("Job Planning Line")
        {
            column("PkgLbl_Job_Planning_Line_SOD"; "Job Planning Line"."PkgLbl")
            {
            }
        }
        add("Job Planning Line")
        {
            column("PkgLbl_Job_Planning_Line_Lbl_SOD"; "Job Planning Line".FieldCaption("PkgLbl"))
            {
            }
        }

    }

}
