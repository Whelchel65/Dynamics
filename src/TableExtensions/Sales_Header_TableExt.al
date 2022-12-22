tableextension 50501 "SODSales_Header" extends "Sales Header"
{

    fields
    {
        field(50500;"Quote_Expiration"; Date)
        {
            Caption = 'Quote Valid Through';
            DataClassification = ToBeClassified;
        }

    }
}
