page 50799 "API x Shop_Employees LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'x Shop Employees Line';
    EntitySetCaption = 'x Shop Employees Lines';
    EntityName = 'xshop_employeesline';
    EntitySetName = 'xshop_employeeslines';

    ODataKeyFields = SystemId;
    SourceTable = "x Shop_Employees LineSOD";

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
                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(date; Rec."Date")
                {
                    Caption = 'Date';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field(lineno; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
            }
        }
    }
}
