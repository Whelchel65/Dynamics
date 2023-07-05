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
                  table "ManufacturersSOD" = X,
                  tabledata "MTL_Request HeaderSOD" = RIMD,
                  tabledata "MTL_Request LineSOD" = RIMD,
                  tabledata "Posted MTL_Request HeaderSOD" = RIMD,
                  tabledata "Posted MTL_Request LineSOD" = RIMD,
                  tabledata "Project_TimeSOD" = RIMD,
                  table "Project_TimeSOD" = X,
                  tabledata "Quality HeaderSOD" = RIMD,
                  tabledata "Quality LineSOD" = RIMD,
                  tabledata "Posted Quality HeaderSOD" = RIMD,
                  tabledata "Posted Quality LineSOD" = RIMD,
                  tabledata "Service_Tickets HeaderSOD" = RIMD,
                  tabledata "Service_Tickets LineSOD" = RIMD,
                  tabledata "SetupSOD" = RIMD,
                  table "SetupSOD" = X,
                  tabledata "Tag_NumberSOD" = RIMD,
                  table "Tag_NumberSOD" = X,
                  tabledata "URLsSOD" = RIMD,
                  table "URLsSOD" = X,
                  tabledata "Work_Packages HeaderSOD" = RIMD,
                  tabledata "Work_Packages LineSOD" = RIMD,
                  tabledata "Posted Work_Packages HeaderSOD" = RIMD,
                  tabledata "Posted Work_Packages LineSOD" = RIMD;
}