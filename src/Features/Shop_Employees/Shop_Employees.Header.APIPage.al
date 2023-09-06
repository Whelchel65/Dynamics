page 50796 "API Shop_Employees HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Shop Employees Header';
    EntitySetCaption = 'Shop Employees Headers';
    EntityName = 'shop_employeesheader';
    EntitySetName = 'shop_employeesheaders';

    ODataKeyFields = SystemId;
    SourceTable = "Shop_Employees HeaderSOD";

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
                field(last_name; Rec."Last_Name")
                {
                    Caption = 'Last Name';
                }
                field(first_name; Rec."First_Name")
                {
                    Caption = 'First Name';
                }
                field(position; Rec."Position")
                {
                    Caption = 'Position';
                }
                field(date_of_hire; Rec."Date_of_Hire")
                {
                    Caption = 'Date of Hire';
                }
                field(full_name; Rec."Full_Name")
                {
                    Caption = 'Full Name';
                }
            }
        }
    }
}
