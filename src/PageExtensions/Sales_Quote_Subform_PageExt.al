pageextension 50509 "SODSales_Quote_Subform" extends "Sales Quote Subform"
{
    layout
    {
        AddBefore("Quantity")
        {
            field("Line No._SOD"; Rec."Line No.")
            {
                ApplicationArea = all;
            }
        }
        AddBefore("No.")
        {
            field("LineNumber_SOD"; Rec."LineNumber")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
