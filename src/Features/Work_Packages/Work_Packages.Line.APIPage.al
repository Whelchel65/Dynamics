page 50677 "API Work_Packages LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Work Package Line';
    EntitySetCaption = 'Work Package Lines';
    EntityName = 'work_packagesline';
    EntitySetName = 'work_packageslines';

    ODataKeyFields = SystemId;
    SourceTable = "Work_Packages LineSOD";

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
                field(wp_no; Rec."WP_No")
                {
                    Caption = 'WP No';
                }
                field(checklist; Rec."Checklist")
                {
                    Caption = 'Checklist';
                }
                field(line_status; Rec."Line_Status")
                {
                    Caption = 'Line Status';
                }
                field(date_complete; Rec."Date_Complete")
                {
                    Caption = 'Date Complete';
                }
                field(tag_no; Rec."Tag_No")
                {
                    Caption = 'Tag No';
                }
                field(qty; Rec."QTY")
                {
                    Caption = 'QTY';
                }
                field(supplier; Rec."Supplier")
                {
                    Caption = 'Supplier';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
