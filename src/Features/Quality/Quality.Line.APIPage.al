page 50697 "API Quality LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Quality Line';
    EntitySetCaption = 'Quality Lines';
    EntityName = 'qualityline';
    EntitySetName = 'qualitylines';

    ODataKeyFields = SystemId;
    SourceTable = "Quality LineSOD";

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
                field(item; Rec."Item")
                {
                    Caption = 'Item';
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
                    Caption = 'Date Fault Fixed';
                }
                field(corrected_by; Rec."Corrected_By")
                {
                    Caption = 'Corrected By';
                }
                field(solution; Rec."Solution")
                {
                    Caption = 'Solution/Notes';
                }
                field(checked_by; Rec."Checked_By")
                {
                    Caption = 'Checked By';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
