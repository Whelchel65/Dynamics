page 50776 "API StatesSOD"
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
                field(abbr; Rec."Abbr")
                {
                    Caption = 'Abbr';
                }
                field(state; Rec."State")
                {
                    Caption = 'State';
                }
                field(country; Rec."Country")
                {
                    Caption = 'Country';
                }
            }
        }
    }
}
