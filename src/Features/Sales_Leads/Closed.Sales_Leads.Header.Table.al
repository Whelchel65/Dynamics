table 50712 "Closed Sales_Leads HeaderSOD"
{
    TableType = Normal;
    Caption = 'Closed Sales Propects Header';
    LookupPageId = 50710;
    fields
    {

        field(1; No; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Project_Number; Integer)
        {
            Caption = 'Project Number';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(6; Contact; Code[20])
        {
            Caption = 'Contact';
            DataClassification = ToBeClassified;
            TableRelation = Contact."No.";
        }
        field(7;"Contact_Name"; Text[100])
        {
            Caption = 'Contact Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact.Name where("No." = field(Contact)));
        }
        field(8;"Phone"; Text[30])
        {
            Caption = 'Phone';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Phone No." where("No." = field(Contact)));
        }
        field(9;"Mobile"; Text[30])
        {
            Caption = 'Mobile';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Mobile Phone No." where("No." = field(Contact)));
        }
        field(10;"Email"; Text[80])
        {
            Caption = 'Email';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."E-Mail" where("No." = field(Contact)));
        }
        field(11;"Contact_Company"; Text[100])
        {
            Caption = 'Contact Company';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Contact."Company Name" where("No." = field(Contact)));
        }
        field(12;Stage; Option)
        {
            Caption = 'Stage';
            DataClassification = ToBeClassified;
            OptionMembers = "New Lead","Budgetary","Proposal","Dead","Won","Lost";
        }
        field(14; Success_Probability; Integer)
        {
            Caption = 'Success Probability';
            DataClassification = ToBeClassified;
        }
        field(15; Creation_Date; Date)
        {
            Caption = 'Creation Date';
            DataClassification = ToBeClassified;
        }
        field(16; Next_Follow_Up; Date)
        {
            Caption = 'Next Follow Up';
            DataClassification = ToBeClassified;
        }
        field(17; Last_Interaction; Date)
        {
            Caption = 'Last Interaction';
            DataClassification = ToBeClassified;
        }
        field(18; Date_Closed; Date)
        {
            Caption = 'Date Closed';
            DataClassification = ToBeClassified;
        }
        field(22; Estimated_Value; Decimal)
        {
            Caption = 'Estimated Value';
            DataClassification = ToBeClassified;
        }
        field(23; Estimated_Complete_Date; Date)
        {
            Caption = 'Estimated Complete Date';
            DataClassification = ToBeClassified;
        }
        field(25; Projected_Revenue; Decimal)
        {
            Caption = 'Projected Revenue';
            DataClassification = ToBeClassified;
        }
        field(26; Project_Duration; Decimal)
        {
            Caption = 'Project Duration (weeks)';
            DataClassification = ToBeClassified;
        }
        field(28; Project_Type; Code[20])
        {
            Caption = 'Project Type';
            DataClassification = ToBeClassified;
            TableRelation = Project_TypesSOD.Item;
        }
        field(29; Design_Flow; Integer)
        {
            Caption = 'Design Flow (GPD)';
            DataClassification = ToBeClassified;
        }
        field(30; Effluent_Target; Text[100])
        {
            Caption = 'Effluent Target';
            DataClassification = ToBeClassified;
        }
        field(31; State; Code[20])
        {
            Caption = 'State Abbr.';
            DataClassification = ToBeClassified;
            TableRelation = StatesSOD.Abbr;
        }
        field(32;"State_Name"; Text[50])
        {
            Caption = 'State Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(StatesSOD.State where(Abbr = field(State)));
        }
        field(33; Unit_Cost; Decimal)
        {
            Caption = 'Unit Cost';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;No)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Closed Sales_Leads LineSOD";
    begin
       Lines.SetRange("No",Rec."No");
       Lines.DeleteAll();
    end;

}
