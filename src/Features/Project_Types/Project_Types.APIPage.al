page 50736 "API Project_TypesSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Project Types for Sales';
    EntitySetCaption = 'Project Types for Saless';
    EntityName = 'project_types';
    EntitySetName = 'project_typess';

    ODataKeyFields = SystemId;
    SourceTable = "Project_TypesSOD";

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
                field(no; Rec."no")
                {
                    Caption = 'no';
                }
                field(item; Rec."Item")
                {
                    Caption = 'Item';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
