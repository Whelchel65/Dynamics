page 50833 "Posted Ops_PackageList"
{
    PageType = List;
    SourceTable = "Posted Ops_Package HeaderSOD";
    Caption = 'Posted Operations Package List';
    CardPageId = "Posted Ops_PackageCard";
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(no; Rec.no)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Job_No; Rec.Job_No)
                {
                    ApplicationArea = All;
                }
                field(OStatus; Rec.OStatus)
                {
                    ApplicationArea = All;
                }
                field(WBS; Rec.WBS)
                {
                    ApplicationArea = All;
                }
                field(Work_Package; Rec.Work_Package)
                {
                    ApplicationArea = All;
                }
                field(WP_Status; Rec.WP_Status)
                {
                    ApplicationArea = All;
                }
                field(WSI_Time_Entry; Rec.WSI_Time_Entry)
                {
                    ApplicationArea = All;
                }
                field(TE_Status; Rec.TE_Status)
                {
                    ApplicationArea = All;
                }
                field(WSI_Quality; Rec.WSI_Quality)
                {
                    ApplicationArea = All;
                }
                field(Quality_Status; Rec.Quality_Status)
                {
                    ApplicationArea = All;
                }
                field(Sum_of_Hours; Rec.Sum_of_Hours)
                {
                    ApplicationArea = All;
                }
                field(Drawing_No; Rec.Drawing_No)
                {
                    ApplicationArea = All;
                }
                field(Quality_Complete; Rec.Quality_Complete)
                {
                    ApplicationArea = All;
                }
                field(Complete; Rec.Complete)
                {
                    ApplicationArea = All;
                }

            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50832),"No." = FIELD(no);
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
