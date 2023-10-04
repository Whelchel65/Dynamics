Reportextension 50505 "SODUpdate_Job_Item_Cost" extends "Update Job Item Cost"
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

    }

}
