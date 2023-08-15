page 50766 "API Quality_StatusSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Quality_Status';
    EntitySetCaption = 'Quality_Statuss';
    EntityName = 'quality_status';
    EntitySetName = 'quality_statuss';

    ODataKeyFields = SystemId;
    SourceTable = "Quality_StatusSOD";

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
                field(status; Rec."Status")
                {
                    Caption = 'Status';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
