pageextension 50501 "SODItem_List" extends "Item List"
{
    layout
    {
        AddAfter("Description")
        {
            field("Search Description_SOD"; Rec."Search Description")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
