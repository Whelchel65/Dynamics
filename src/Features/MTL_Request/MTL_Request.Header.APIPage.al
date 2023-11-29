page 50686 "API MTL_Request HeaderSOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Material Request Header';
    EntitySetCaption = 'Material Request Headers';
    EntityName = 'mtl_requestheader';
    EntitySetName = 'mtl_requestheaders';

    ODataKeyFields = SystemId;
    SourceTable = "MTL_Request HeaderSOD";

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
                field(request_no; Rec."Request_No")
                {
                    Caption = 'Request No';
                }
                field(vendor; Rec."Vendor")
                {
                    Caption = 'Vendor';
                }
                field(vendor_name; Rec."Vendor_Name")
                {
                    Caption = 'Vendor Name';
                }
                field(importance; Rec."Importance")
                {
                    Caption = 'Importance';
                }
                field(user; Rec."User")
                {
                    Caption = 'User';
                }
                field(date_needed; Rec."Date_Needed")
                {
                    Caption = 'Date Needed';
                }
                field(notes; Rec."Notes")
                {
                    Caption = 'Notes';
                }
                field(status; Rec."Status")
                {
                    Caption = 'Status';
                }
                field(po_number; Rec."PO_Number")
                {
                    Caption = 'PO Number';
                }
                field(user_email; Rec."User_Email")
                {
                    Caption = 'User Email';
                }
            }
        }
    }
}
