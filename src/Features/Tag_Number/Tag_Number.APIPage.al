page 50596 "API Tag_NumberSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Tag Number';
    EntitySetCaption = 'Tag Numbers';
    EntityName = 'tag_number';
    EntitySetName = 'tag_numbers';

    ODataKeyFields = SystemId;
    SourceTable = "Tag_NumberSOD";

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
                field(tag_number; Rec."Tag_Number")
                {
                    Caption = 'Tag Number';
                }
                field(job_number; Rec."Job_Number")
                {
                    Caption = 'Job Number';
                }
                field(decription; Rec."Decription")
                {
                    Caption = 'Decription';
                }
            }
        }
    }
}
