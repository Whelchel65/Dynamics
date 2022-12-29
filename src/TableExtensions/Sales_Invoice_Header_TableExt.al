tableextension 50505 "SODSales_Invoice_Header" extends "Sales Invoice Header"
{

    fields
    {
        field(50500;"QBREF"; Text[50])
        {
            Caption = 'QuickBooks Reference';
            DataClassification = ToBeClassified;
        }

    }
}
