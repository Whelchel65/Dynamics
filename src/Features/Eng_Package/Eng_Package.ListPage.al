page 50860 "Eng_PackageList"
{
    PageType = List;
    SourceTable = "Eng_Package HeaderSOD";
    Caption = 'Engineering Package List';
    CardPageId = "Eng_PackageCard";
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
                field(Package_Name; Rec.Package_Name)
                {
                    ApplicationArea = All;
                ToolTip = 'Name of PDF Drawing Package';                }
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(Release_Status; Rec.Release_Status)
                {
                    ApplicationArea = All;
                ToolTip = 'Engineering release to Production';                }
                field(Release_to_Floor; Rec.Release_to_Floor)
                {
                    ApplicationArea = All;
                ToolTip = 'Any part of drawing on shop floor';                }

            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50860),"No." = FIELD(No);
            }
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
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
