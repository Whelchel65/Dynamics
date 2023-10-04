page 50807 "API WSI_TS_Entry LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'WSI Time Entries Line';
    EntitySetCaption = 'WSI Time Entries Lines';
    EntityName = 'wsi_ts_entryline';
    EntitySetName = 'wsi_ts_entrylines';

    ODataKeyFields = SystemId;
    SourceTable = "WSI_TS_Entry LineSOD";

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
                field(employee_name; Rec."Employee_Name")
                {
                    Caption = 'Employee Name';
                }
                field(actual_hours_worked; Rec."Actual_Hours_Worked")
                {
                    Caption = 'Actual Hours Worked';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Notes';
                }
                field(percent_complete; Rec."Percent_Complete")
                {
                    Caption = 'Percent Complete';
                }
                field(date_complete; Rec."Date_Complete")
                {
                    Caption = 'Date Complete';
                }
                field(full_name; Rec."Full_Name")
                {
                    Caption = 'Full Name';
                }
                field(overtime; Rec."Overtime")
                {
                    Caption = 'Overtime';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
