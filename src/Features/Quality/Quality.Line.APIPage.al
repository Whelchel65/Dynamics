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
                field(ncr_item; Rec."NCR_Item")
                {
                    Caption = 'NCR Item';
                }
                field(fault_description; Rec."Fault_Description")
                {
                    Caption = 'Fault Description';
                }
                field(ncr_status; Rec."NCR_Status")
                {
                    Caption = 'NCR Status';
                }
                field(date_found; Rec."Date_Found")
                {
                    Caption = 'Date Found';
                }
                field(date_fixed; Rec."Date_Fixed")
                {
                    Caption = 'Date Fixed';
                }
                field(corrected_by; Rec."Corrected_By")
                {
                    Caption = 'Corrected By';
                }
            }
        }
    }
}
