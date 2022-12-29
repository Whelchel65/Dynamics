tableextension 50500 "SODItem" extends "Item"
{

    fields
    {
        field(50505;"ManfPartNum"; Text[50])
        {
            Caption = 'Manf. Part Number';
            DataClassification = ToBeClassified;
        }
        field(50506;"PackQTY"; Text[50])
        {
            Caption = 'Pack Quantity';
            DataClassification = ToBeClassified;
        }

    }
}
