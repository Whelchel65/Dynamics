page 50867 "API Eng_Package LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Engineering Package Line';
    EntitySetCaption = 'Engineering Package Lines';
    EntityName = 'eng_packageline';
    EntitySetName = 'eng_packagelines';

    ODataKeyFields = SystemId;
    SourceTable = "Eng_Package LineSOD";

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
                field(drawing_no; Rec."Drawing_No")
                {
                    Caption = 'Drawing No';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(ops_package; Rec."Ops_Package")
                {
                    Caption = 'Ops Package';
                }
                field(rev; Rec."Rev")
                {
                    Caption = 'Rev';
                }
                field(rev_released; Rec."Rev_Released")
                {
                    Caption = 'Rev Released';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
