page 50714 "Closed Sales_LeadsCard"
{
    PageType = Document;
    SourceTable = "Closed Sales_Leads HeaderSOD";
    Caption = 'Closed Sales Propects Card';
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
                field(Project_Number; Rec.Project_Number)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Stage; Rec.Stage)
                {
                    ApplicationArea = All;
                }
                field(Success_Probability; Rec.Success_Probability)
                {
                    ApplicationArea = All;
                }
                field(Estimated_Value; Rec.Estimated_Value)
                {
                    ApplicationArea = All;
                }
                field(Estimated_Complete_Date; Rec.Estimated_Complete_Date)
                {
                    ApplicationArea = All;
                }
                field(Projected_Revenue; Rec.Projected_Revenue)
                {
                    ApplicationArea = All;
                    Style = StrongAccent;
                    Editable = false;
                }
                field(Project_Type; Rec.Project_Type)
                {
                    ApplicationArea = All;
                }
                field(Design_Flow; Rec.Design_Flow)
                {
                    ApplicationArea = All;
                }
                field(Effluent_Target; Rec.Effluent_Target)
                {
                    ApplicationArea = All;
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                }
                field(State_Name; Rec.State_Name)
                {
                    ApplicationArea = All;
                }
                field(Unit_Cost; Rec.Unit_Cost)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = All;
                }
                field(Contact_Name; Rec.Contact_Name)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field(Mobile; Rec.Mobile)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Contact_Company; Rec.Contact_Company)
                {
                    ApplicationArea = All;
                }
                field(Project_Duration; Rec.Project_Duration)
                {
                    ApplicationArea = All;
                }
                field(Creation_Date; Rec.Creation_Date)
                {
                    ApplicationArea = All;
                }
                field(Last_Interaction; Rec.Last_Interaction)
                {
                    ApplicationArea = All;
                }
                field(Next_Follow_Up; Rec.Next_Follow_Up)
                {
                    ApplicationArea = All;
                }
                field(Date_Closed; Rec.Date_Closed)
                {
                    ApplicationArea = All;
                }
            }

            part(LinesPart; "Closed Sales_LeadsListPart")
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
                SubPageLink = "Table ID" = CONST(50712),"No." = FIELD(No);
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
