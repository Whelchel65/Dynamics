page 50546 "API Cost_CodeSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Cost Code Table';
    EntitySetCaption = 'Cost Code Tables';
    EntityName = 'cost_code';
    EntitySetName = 'cost_codes';

    ODataKeyFields = SystemId;
    SourceTable = "Cost_CodeSOD";

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
                field(costcode; Rec."CostCode")
                {
                    Caption = 'Cost Code';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
