page 50790 "Shop_EmployeesList"
{
    PageType = List;
    SourceTable = "Shop_Employees HeaderSOD";
    Caption = 'Shop Employees List';
    CardPageId = "Shop_EmployeesCard";
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
