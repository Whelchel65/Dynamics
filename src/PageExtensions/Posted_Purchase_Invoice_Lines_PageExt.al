pageextension 50521 "SODPosted_Purchase_Invoice_Lin" extends "Posted Purchase Invoice Lines"
{
    layout
    {
        AddAfter("Description")
        {
            field("CostCode_SOD"; Rec."CostCode")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
