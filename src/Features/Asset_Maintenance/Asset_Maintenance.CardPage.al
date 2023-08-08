page 50701 "Asset_MaintenanceCard"
{
    PageType = Document;
    SourceTable = "Asset_Maintenance HeaderSOD";
    Caption = 'Asset Maintenance Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(Equip_No; Rec.Equip_No)
                {
                    ApplicationArea = All;
                }
                field(Equipment_Name; Rec.Equipment_Name)
                {
                    ApplicationArea = All;
                }
                field(Equipment_Type; Rec.Equipment_Type)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Manufacturer; Rec.Manufacturer)
                {
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field(Serial; Rec.Serial)
                {
                    ApplicationArea = All;
                }
                field(Purchase_Date; Rec.Purchase_Date)
                {
                    ApplicationArea = All;
                }
                field(Warranty_Expire_Date; Rec.Warranty_Expire_Date)
                {
                    ApplicationArea = All;
                }
                field(Storage_Location; Rec.Storage_Location)
                {
                    ApplicationArea = All;
                }
                field(Equipment_Notes; Rec.Equipment_Notes)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                field(Operating_Status; Rec.Operating_Status)
                {
                    ApplicationArea = All;
                    Style = StrongAccent;
                    ShowMandatory = true;
                }
            }

            part(LinesPart; "Asset_MaintenanceListPart")
            {
                ApplicationArea = all;
                SubPageLink = "Equip_No" = FIELD("Equip_No");
            }
        }
        area(factboxes)
        {
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(50700),"No." = FIELD(Equip_No);
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
