pageextension 50502 "SODSales_Quote" extends "Sales Quote"
{
    layout
    {
        AddBefore("WorkDescription")
        {
            field("Quote_Expiration_SOD"; Rec."Quote_Expiration")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
