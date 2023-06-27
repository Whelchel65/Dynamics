page 50646 "API SetupSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'My Customizations Setup';
    EntitySetCaption = 'My Customizations Setups';
    EntityName = 'setup';
    EntitySetName = 'setups';

    ODataKeyFields = SystemId;
    SourceTable = "SetupSOD";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(RepeaterGroup)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(pk; Rec."PK")
                {
                    Caption = 'Primary Key';
                }
                field(service_tickets_number; Rec."Service_Tickets_Number")
                {
                    Caption = 'Service_Tickets Number series';
                }
                field(setup_number; Rec."Setup_Number")
                {
                    Caption = 'Setup Number series';
                }
            }
        }
    }
}
