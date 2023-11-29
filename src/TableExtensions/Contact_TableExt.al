tableextension 50512 "SODContact" extends "Contact"
{

    fields
    {
        field(50500;"Cold_Call"; Option)
        {
            Caption = 'Cold_Call';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }

    }
}
