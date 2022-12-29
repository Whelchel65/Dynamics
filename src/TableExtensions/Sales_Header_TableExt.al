tableextension 50501 "SODSales_Header" extends "Sales Header"
{

    fields
    {
        field(50500;"Quote_Expiration"; Text[25])
        {
            Caption = 'Quote Valid Through';
            DataClassification = ToBeClassified;
        }
        field(50501;"QBREF"; Text[50])
        {
            Caption = 'QuickBooks Reference';
            DataClassification = ToBeClassified;
        }
        field(50503;"CustPO"; Text[50])
        {
            Caption = 'Customer PO';
            DataClassification = ToBeClassified;
        }

    }
}
