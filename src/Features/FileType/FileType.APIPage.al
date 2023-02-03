page 50566 "API FileTypeSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'File Type';
    EntitySetCaption = 'File Types';
    EntityName = 'filetype';
    EntitySetName = 'filetypes';

    ODataKeyFields = SystemId;
    SourceTable = "FileTypeSOD";

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
                field(filetype; Rec."FileType")
                {
                    Caption = 'Document Type';
                }
            }
        }
    }
}
