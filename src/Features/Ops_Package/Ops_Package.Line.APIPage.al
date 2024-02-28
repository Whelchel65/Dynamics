page 50837 "API Ops_Package LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Operations Package Line';
    EntitySetCaption = 'Operations Package Lines';
    EntityName = 'ops_packageline';
    EntitySetName = 'ops_packagelines';

    ODataKeyFields = SystemId;
    SourceTable = "Ops_Package LineSOD";

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
                field(drawing_number; Rec."Drawing_Number")
                {
                    Caption = 'Drawing_Number';
                }
                field(ldescription; Rec."LDescription")
                {
                    Caption = 'Description';
                }
                field(eng_package; Rec."Eng_Package")
                {
                    Caption = 'Package_Name';
                }
                field(drawing_rev; Rec."Drawing_Rev")
                {
                    Caption = 'Drawing_Rev';
                }
                field(drawing_complete_; Rec."Drawing_COmplete_")
                {
                    Caption = 'Drawing Complete?';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
