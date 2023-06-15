pageextension 50508 "SODPurchase_List" extends "Purchase List"
{
    layout
    {
        AddAfter("No.")
        {
            field("JOBNO_SOD"; Rec."JOBNO")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
