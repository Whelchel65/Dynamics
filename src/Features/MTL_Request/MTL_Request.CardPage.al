page 50681 "MTL_RequestCard"
{
    PageType = Document;
    SourceTable = "MTL_Request HeaderSOD";
    Caption = 'Material Request Card';

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
                field(PO_Number; Rec.PO_Number)
                {
                    ApplicationArea = All;
                }
            }

            part(LinesPart; "MTL_RequestListPart")
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
            action(Post)
            {
                Caption = 'Post';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = PostDocument;
                trigger OnAction()
                begin
                    if confirm('Post Material Request') then
                        Rec.Post(Rec);                end;
            }
        }
    }
}
