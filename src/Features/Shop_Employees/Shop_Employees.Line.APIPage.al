page 50797 "API Shop_Employees LineSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Shop Employees Line';
    EntitySetCaption = 'Shop Employees Lines';
    EntityName = 'shop_employeesline';
    EntitySetName = 'shop_employeeslines';

    ODataKeyFields = SystemId;
    SourceTable = "Shop_Employees LineSOD";

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
