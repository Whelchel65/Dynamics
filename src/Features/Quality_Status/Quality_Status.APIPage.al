page 50726 "API Quality_StatusSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Quality Status';
    EntitySetCaption = 'Quality Statuss';
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
                field(no; Rec."No")
                {
                    Caption = 'No';
                }
                field(item; Rec."Item")
                {
                    Caption = 'Description';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
