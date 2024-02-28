page 50868 "API Posted Eng_Package HeaderS"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Posted Engineering Package Header';
    EntitySetCaption = 'Posted Engineering Package Headers';
    EntityName = 'postedeng_packageheader';
    EntitySetName = 'postedeng_packageheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Posted Eng_Package HeaderSOD";

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
                field(package_name; Rec."Package_Name")
                {
                    Caption = 'Package Name';
                }
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(release_status; Rec."Release_Status")
                {
                    Caption = 'Release Status';
                }
                field(release_to_floor; Rec."Release_to_Floor")
                {
                    Caption = 'Release to Floor';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Notes';
                }
            }
        }
    }
}
