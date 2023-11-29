pageextension 50510 "SODJob_Ledger_Entries50510" extends "Job Ledger Entries"
{
    layout
    {
        AddAfter("No.")
        {
            field("Vendor_No_SOD"; Rec."Vendor_No")
            {
                ApplicationArea = all;
            }
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
            }
            field("Cost_Code_SOD"; Rec."Cost_Code")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
