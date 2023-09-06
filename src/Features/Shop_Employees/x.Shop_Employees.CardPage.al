page 50794 "x Shop_EmployeesCard"
{
    PageType = Document;
    SourceTable = "x Shop_Employees HeaderSOD";
    Caption = 'x Shop Employees Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field(Last_Name; Rec.Last_Name)
                {
                    ApplicationArea = All;
                }
                field(First_Name; Rec.First_Name)
                {
                    ApplicationArea = All;
                }
                field(Position; Rec.Position)
                {
                    ApplicationArea = All;
                }
                field(Date_of_Hire; Rec.Date_of_Hire)
                {
                    ApplicationArea = All;
                }
                field(Full_Name; Rec.Full_Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }

            part(LinesPart; "x Shop_EmployeesListPart")
            {
                ApplicationArea = all;
                SubPageLink = "No" = FIELD("No");
            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50790),"No." = FIELD(No);
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
