page 50876 "API Equipment_TypeSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Equipment Type';
    EntitySetCaption = 'Equipment Types';
    EntityName = 'equipment_type';
    EntitySetName = 'equipment_types';

    ODataKeyFields = SystemId;
    SourceTable = "Equipment_TypeSOD";

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
                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
