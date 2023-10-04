page 50717 "API Sales_Leads LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Sales Propects Line';
    EntitySetCaption = 'Sales Propects Lines';
    EntityName = 'sales_leadsline';
    EntitySetName = 'sales_leadslines';

    ODataKeyFields = SystemId;
    SourceTable = "Sales_Leads LineSOD";

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
