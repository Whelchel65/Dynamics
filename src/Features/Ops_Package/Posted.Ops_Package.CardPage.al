page 50834 "Posted Ops_PackageCard"
{
    PageType = Document;
    SourceTable = "Posted Ops_Package HeaderSOD";
    Caption = 'Posted Operations Package Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(no; Rec.no)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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
                field(Scope; Rec.Scope)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                field(Sum_of_Hours; Rec.Sum_of_Hours)
                {
                    ApplicationArea = All;
                }
            }

            part(LinesPart; "Posted Ops_PackageListPart")
            {
                ApplicationArea = all;
                SubPageLink = "no" = FIELD("no");
            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50830),"No." = FIELD(no);
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
