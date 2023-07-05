page 50684 "Posted MTL_RequestCard"
{
    PageType = Document;
    SourceTable = "Posted MTL_Request HeaderSOD";
    Caption = 'Posted Material Request Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
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
                field(Notes; Rec.Notes)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
            }

            part(LinesPart; "Posted MTL_RequestListPart")
            {
                ApplicationArea = all;
                SubPageLink = "Request_No" = FIELD("Request_No");
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
