tableextension 50509 "SODJob_Planning_Line" extends "Job Planning Line"
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
        field(50502;"Vendor_No_"; Code[20])
        {
            Caption = 'Vendor_No_';
            DataClassification = ToBeClassified;
        }
        field(50503;"Vendor_Item_No_"; Text[50])
        {
            Caption = 'Vendor_Item_No_';
            DataClassification = ToBeClassified;
        }
        field(50504;"ManfName"; Text[50])
        {
            Caption = 'Manufacturer';
            DataClassification = ToBeClassified;
            TableRelation = ManufacturersSOD.Name;
        }

    }
}
