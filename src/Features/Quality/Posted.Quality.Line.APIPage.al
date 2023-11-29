page 50699 "API Posted Quality LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Quality Line';
    EntitySetCaption = 'Posted Quality Lines';
    EntityName = 'postedqualityline';
    EntitySetName = 'postedqualitylines';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Quality LineSOD";

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
                field(quality_no; Rec."Quality_No")
                {
                    Caption = 'Quality No';
                }
                field(line_description; Rec."Line_Description")
                {
                    Caption = 'Description';
                }
                field(line_status; Rec."Line_Status")
                {
                    Caption = 'Item Status';
                }
                field(date_found; Rec."Date_Found")
                {
                    Caption = 'Date Completed';
                }
                field(date_fixed; Rec."Date_Fixed")
                {
                    Caption = 'Last Date Complete';
                }
                field(inspected_by; Rec."Inspected_By")
                {
                    Caption = 'Inspected by';
                }
                field(date_checked; Rec."Date_Checked")
                {
                    Caption = 'Check Date';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
