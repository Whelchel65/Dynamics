page 50839 "API Posted Ops_Package LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Operations Package Line';
    EntitySetCaption = 'Posted Operations Package Lines';
    EntityName = 'postedops_packageline';
    EntitySetName = 'postedops_packagelines';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Ops_Package LineSOD";

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
                field(line_type; Rec."Line_Type")
                {
                    Caption = 'Line Type';
                }
                field(ldescription; Rec."LDescription")
                {
                    Caption = 'Description';
                }
                field(date_created; Rec."Date_Created")
                {
                    Caption = 'Date Created';
                }
                field(line_notes; Rec."Line_Notes")
                {
                    Caption = 'Line Notes';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
