tableextension 50502 "SODSales_Line" extends "Sales Line"
{

    fields
    {
        field(50500;"LineNumber"; Integer)
        {
            Caption = 'LineNumber';
            DataClassification = ToBeClassified;
        }
        field(50501;"PkgLbl"; Text[50])
        {
            Caption = 'Package Label';
            DataClassification = ToBeClassified;
        }
        field(50502;"LDTIME"; Text[50])
        {
            Caption = 'Lead Time';
            DataClassification = ToBeClassified;
        }

    }
}
