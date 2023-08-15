page 50780 "API P50780 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Salesperson_Purchaser';
    EntitySetCaption = 'Salesperson_Purchasers';
    EntityName = 'salesperson_Purchaser';
    EntitySetName = 'salesperson_Purchasers';

    ODataKeyFields = SystemId;
    SourceTable = "Salesperson/Purchaser";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(APIRepeaterSOD)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(code; Rec."Code")
                {
                }
                field(name; Rec."Name")
                {
                }
                field(email; Rec."E-Mail")
                {
                }
                field(phoneno_; Rec."Phone No.")
                {
                }
                field(jobtitle; Rec."Job Title")
                {
                }
            }
        }
    }
}
