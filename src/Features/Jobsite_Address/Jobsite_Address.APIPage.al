page 50756 "API Jobsite_AddressSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Jobsite Address';
    EntitySetCaption = 'Jobsite Addresss';
    EntityName = 'jobsite_address';
    EntitySetName = 'jobsite_addresss';

    ODataKeyFields = SystemId;
    SourceTable = "Jobsite_AddressSOD";

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
                field(job_no; Rec."Job_No")
                {
                    Caption = 'Job No';
                }
                field(address_line_1; Rec."Address_Line_1")
                {
                    Caption = 'Address Line 1';
                }
                field(address_line_2; Rec."Address_Line_2")
                {
                    Caption = 'Address_Line_2';
                }
                field(city; Rec."City")
                {
                    Caption = 'City';
                }
                field(state; Rec."State")
                {
                    Caption = 'State';
                }
                field(country; Rec."Country")
                {
                    Caption = 'Country';
                }
                field(site_contact; Rec."Site_Contact")
                {
                    Caption = 'Site Contact';
                }
                field(zip; Rec."ZIp")
                {
                    Caption = 'ZIp';
                }
            }
        }
    }
}
