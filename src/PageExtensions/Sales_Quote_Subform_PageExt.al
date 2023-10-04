pageextension 50510 "SODSales_Quote_Subform50510" extends "Sales Quote Subform"
{
    layout
    {
        AddBefore("No.")
        {
            field("LineNumber_SOD"; Rec."LineNumber")
            {
                ApplicationArea = all;
            }
        }
        AddBefore("Quantity")
        {
            field("Line No._SOD"; Rec."Line No.")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Description")
        {
            field("LDTIME_SOD"; Rec."LDTIME")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
