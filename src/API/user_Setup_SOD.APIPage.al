page 50824 "API P50824 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'User_Setup';
    EntitySetCaption = 'User_Setups';
    EntityName = 'user_Setup';
    EntitySetName = 'user_Setups';

    ODataKeyFields = SystemId;
    SourceTable = "User Setup";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(APIRepeaterSOD)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(userid; Rec."User ID")
                {
                }
                field(allowpostingfrom; Rec."Allow Posting From")
                {
                }
                field(allowpostingto; Rec."Allow Posting To")
                {
                }
                field(registertime; Rec."Register Time")
                {
                }
                field(allowdeferralpostingfrom; Rec."Allow Deferral Posting From")
                {
                }
                field(allowdeferralpostingto; Rec."Allow Deferral Posting To")
                {
                }
                field(salespers_purch_code; Rec."Salespers./Purch. Code")
                {
                }
                field(approverid; Rec."Approver ID")
                {
                }
                field(salesamountapprovallimit; Rec."Sales Amount Approval Limit")
                {
                }
                field(purchaseamountapprovallimit; Rec."Purchase Amount Approval Limit")
                {
                }
                field(unlimitedsalesapproval; Rec."Unlimited Sales Approval")
                {
                }
                field(unlimitedpurchaseapproval; Rec."Unlimited Purchase Approval")
                {
                }
                field(substitute; Rec."Substitute")
                {
                }
                field(email; Rec."E-Mail")
                {
                }
                field(phoneno_; Rec."Phone No.")
                {
                }
                field(requestamountapprovallimit; Rec."Request Amount Approval Limit")
                {
                }
                field(unlimitedrequestapproval; Rec."Unlimited Request Approval")
                {
                }
                field(approvaladministrator; Rec."Approval Administrator")
                {
                }
                field(licensetype; Rec."License Type")
                {
                }
                field(salesinvoicepostingpolicy; Rec."Sales Invoice Posting Policy")
                {
                }
                field(purch_invoicepostingpolicy; Rec."Purch. Invoice Posting Policy")
                {
                }
                field(timesheetadmin_; Rec."Time Sheet Admin.")
                {
                }
                field(allowfapostingfrom; Rec."Allow FA Posting From")
                {
                }
                field(allowfapostingto; Rec."Allow FA Posting To")
                {
                }
                field(salesresp_ctr_filter; Rec."Sales Resp. Ctr. Filter")
                {
                }
                field(purchaseresp_ctr_filter; Rec."Purchase Resp. Ctr. Filter")
                {
                }
                field(serviceresp_ctr_filter; Rec."Service Resp. Ctr. Filter")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
                field(systemcreatedat; Rec."SystemCreatedAt")
                {
                }
                field(systemcreatedby; Rec."SystemCreatedBy")
                {
                }
                field(systemmodifiedat; Rec."SystemModifiedAt")
                {
                }
                field(systemmodifiedby; Rec."SystemModifiedBy")
                {
                }
            }
        }
    }
}
