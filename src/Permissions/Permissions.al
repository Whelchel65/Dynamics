permissionset 50500 "My Customizations"
{
    Caption = 'My Customizations';
    Access = Public;
    Assignable = true;
    Permissions =                   tabledata "Cost_CodeSOD" = RIMD,
                  table "Cost_CodeSOD" = X,
                  tabledata "FileTypeSOD" = RIMD,
                  table "FileTypeSOD" = X,
                  tabledata "ManufacturersSOD" = RIMD,
                  table "ManufacturersSOD" = X;
}