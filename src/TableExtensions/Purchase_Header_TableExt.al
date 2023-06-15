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

    }
}
