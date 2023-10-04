page 50719 "API Closed Sales_Leads LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Closed Sales Propects Line';
    EntitySetCaption = 'Closed Sales Propects Lines';
    EntityName = 'closedsales_leadsline';
    EntitySetName = 'closedsales_leadslines';

    ODataKeyFields = SystemId;
    SourceTable = "Closed Sales_Leads LineSOD";

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
                    Caption = 'No.';
                }
                field(line_type; Rec."Line_Type")
                {
                    Caption = 'Line Type';
                }
                field(linedate; Rec."LineDate")
                {
                    Caption = 'Date';
                }
                field(linenotes; Rec."LineNotes")
                {
                    Caption = 'Notes';
                }
                field(sp_code; Rec."SP_Code")
                {
                    Caption = 'Salesperson Code';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
