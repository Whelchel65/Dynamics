page 50746 "API StatesSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'State/Region';
    EntitySetCaption = 'State/Regions';
    EntityName = 'states';
    EntitySetName = 'statess';

    ODataKeyFields = SystemId;
    SourceTable = "StatesSOD";

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
                field(state; Rec."State")
                {
                    Caption = 'State';
                }
                field(state_name; Rec."State_Name")
                {
                    Caption = 'State Name';
                }
                field(country; Rec."Country")
                {
                    Caption = 'Country';
                }
            }
        }
    }
}
