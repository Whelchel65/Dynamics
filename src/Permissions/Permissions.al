permissionset 50500 "My Customizations"
{
    Caption = 'My Customizations';
    Access = Public;
    Assignable = true;
    Permissions =                   tabledata "Cost_CodeSOD" = RIMD,
                  table "Cost_CodeSOD" = X;
}