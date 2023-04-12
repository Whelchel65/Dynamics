tableextension 50508 "SODJob_Planning_Line" extends "Job Planning Line"
{

    fields
    {
        field(50500;"Tag_Number"; Text[15])
        {
            Caption = 'Tag Number';
            DataClassification = ToBeClassified;
        }
        field(50501;"PkgLbl"; Text[50])
        {
            Caption = 'Package Label';
            DataClassification = ToBeClassified;
        }

    }
}
