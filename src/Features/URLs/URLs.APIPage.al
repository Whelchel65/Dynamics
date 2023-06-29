page 50656 "API URLsSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'URLs to Flows';
    EntitySetCaption = 'URLs to Flowss';
    EntityName = 'urls';
    EntitySetName = 'urlss';

    ODataKeyFields = SystemId;
    SourceTable = "URLsSOD";

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
                field(number; Rec."Number")
                {
                    Caption = 'Number';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(url; Rec."URL")
                {
                    Caption = 'URL';
                }
            }
        }
    }
}
