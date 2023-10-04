tableextension 50503 "SODPurchase_Header" extends "Purchase Header"
{

    fields
    {
        field(50500;"VendorQuote"; Text[50])
        {
            Caption = 'Vendor Quote';
            DataClassification = ToBeClassified;
        }
        field(50501;"SentToVendor"; Date)
        {
            Caption = 'Date Sent to Vendor';
            DataClassification = ToBeClassified;
        }
        field(50502;"JOBNO"; Text[50])
        {
            Caption = 'Job No';
            DataClassification = ToBeClassified;
        }
        field(50503;"Lead_Time"; Integer)
        {
            Caption = 'Lead Time (weeks)';
            DataClassification = ToBeClassified;
        }
        field(50504;"Planned_Order_Date"; Date)
        {
            Caption = 'Planned Order Date';
            DataClassification = ToBeClassified;
        }
        field(50505;"TaxExempt"; Option)
        {
            Caption = 'For Resale (Tax Exempt)';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }
        field(50506;"Ready_To_Post"; Option)
        {
            Caption = 'Ready_To_Post';
            DataClassification = ToBeClassified;
            OptionMembers = "No","Yes";
        }

    }
}
