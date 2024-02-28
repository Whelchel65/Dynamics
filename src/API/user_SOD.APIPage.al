page 50880 "API P50880 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'User';
    EntitySetCaption = 'Users';
    EntityName = 'user';
    EntitySetName = 'users';

    ODataKeyFields = SystemId;
    SourceTable = "User";

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
                field(usersecurityid; Rec."User Security ID")
                {
                }
                field(username; Rec."User Name")
                {
                }
                field(fullname; Rec."Full Name")
                {
                }
                field(state; Rec."State")
                {
                }
                field(expirydate; Rec."Expiry Date")
                {
                }
                field(windowssecurityid; Rec."Windows Security ID")
                {
                }
                field(changepassword; Rec."Change Password")
                {
                }
                field(licensetype; Rec."License Type")
                {
                }
                field(authenticationemail; Rec."Authentication Email")
                {
                }
                field(contactemail; Rec."Contact Email")
                {
                }
                field(exchangeidentifier; Rec."Exchange Identifier")
                {
                }
                field(applicationid; Rec."Application ID")
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
