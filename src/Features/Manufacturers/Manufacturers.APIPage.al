page 50556 "API ManufacturersSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Manufacturers';
    EntitySetCaption = 'Manufacturerss';
    EntityName = 'manufacturers';
    EntitySetName = 'manufacturerss';

    ODataKeyFields = SystemId;
    SourceTable = "ManufacturersSOD";

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
                field(name; Rec."Name")
                {
                    Caption = 'Name';
                }
                field(search; Rec."Search")
                {
                    Caption = 'Search Description';
                }
            }
        }
    }
}
