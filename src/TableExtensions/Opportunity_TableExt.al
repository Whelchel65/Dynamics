tableextension 50512 "SODOpportunity" extends "Opportunity"
{

    fields
    {
        field(50501;"NextFllwUp"; Date)
        {
            Caption = 'Next Follow-Up Date';
            DataClassification = ToBeClassified;
        }
        field(50502;"LastInteraction"; Date)
        {
            Caption = 'Last Interaction';
            DataClassification = ToBeClassified;
        }

    }
}
