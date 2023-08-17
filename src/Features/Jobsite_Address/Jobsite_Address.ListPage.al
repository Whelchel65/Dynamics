page 50750 "Jobsite_AddressList"
{
    PageType = List;
    SourceTable = "Jobsite_AddressSOD";
    Caption = 'Jobsite Address List';
    CardPageId = "Jobsite_AddressCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(Address_Line_1; Rec.Address_Line_1)
                {
                    ApplicationArea = All;
                }
                field(Address_Line_2; Rec.Address_Line_2)
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                }
                field(ZIp; Rec.ZIp)
                {
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                }
                field(Site_Contact; Rec.Site_Contact)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(processing)
        {
        }
    }
}
