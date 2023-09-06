tableextension 50500 "SODItem" extends "Item"
{

    fields
    {
        field(50500;"Vendor_Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
        }
        field(50501;"ManfName"; Text[50])
        {
            Caption = 'Manufacturer';
            DataClassification = ToBeClassified;
            TableRelation = ManufacturersSOD.Name;
        }
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
        field(50507;"Size"; Text[50])
        {
            Caption = 'Size';
            DataClassification = ToBeClassified;
        }
        field(50508;"Material"; Text[50])
        {
            Caption = 'Material';
            DataClassification = ToBeClassified;
        }
        field(50509;"Connection"; Option)
        {
            Caption = 'Connection';
            DataClassification = ToBeClassified;
            OptionMembers = "","Female Threaded","Male Threaded","Lug","Female Electrical","Male Electrical";
        }
        field(50510;"Normal_Position"; Option)
        {
            Caption = 'Normal_Position';
            DataClassification = ToBeClassified;
            OptionMembers = "","Normally Closed","Normally Open";
        }
        field(50511;"Voltage"; Option)
        {
            Caption = 'Voltage';
            DataClassification = ToBeClassified;
            OptionMembers = "","120v","208v","220v","480v","240v","24vDC";
        }
        field(50512;"Phase"; Option)
        {
            Caption = 'Phase';
            DataClassification = ToBeClassified;
            OptionMembers = "","1","3";
        }
        field(50513;"Poles"; Option)
        {
            Caption = 'Poles';
            DataClassification = ToBeClassified;
            OptionMembers = "","1","2","3","4";
        }
        field(50514;"Piping_Type"; Text[50])
        {
            Caption = 'Piping_Type';
            DataClassification = ToBeClassified;
        }
        field(50515;"Application"; Option)
        {
            Caption = 'Application';
            DataClassification = ToBeClassified;
            OptionMembers = "","Pneumatic","Hydraulic","DAF Only","Rollers";
        }
        field(50516;"Horse_Power"; Decimal)
        {
            Caption = 'Horse_Power';
            DataClassification = ToBeClassified;
        }
        field(50517;"Standard_Item"; Option)
        {
            Caption = 'Standard_Item';
            DataClassification = ToBeClassified;
            OptionMembers = "","Standard";
        }
        field(50518;"Cost_Code"; Text[6])
        {
            Caption = 'Cost_Code';
            DataClassification = ToBeClassified;
            TableRelation = Cost_CodeSOD.CostCode;
        }

    }
}
