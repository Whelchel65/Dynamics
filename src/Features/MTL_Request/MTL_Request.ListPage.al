page 50680 "MTL_RequestList"
{
    PageType = List;
    SourceTable = "MTL_Request HeaderSOD";
    Caption = 'Material Request List';
    CardPageId = "MTL_RequestCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Request_No; Rec.Request_No)
                {
                    ApplicationArea = All;
                }
                field(Vendor; Rec.Vendor)
                {
                    ApplicationArea = All;
                }
                field(Vendor_Name; Rec.Vendor_Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Importance; Rec.Importance)
                {
                    ApplicationArea = All;
                }
                field(User; Rec.User)
                {
                    ApplicationArea = All;
                }
                field(Date_Needed; Rec.Date_Needed)
                {
                    ApplicationArea = All;
                }
                field(PO_Number; Rec.PO_Number)
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
