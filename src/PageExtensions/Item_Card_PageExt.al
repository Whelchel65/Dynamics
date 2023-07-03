pageextension 50500 "SODItem_Card" extends "Item Card"
{
    layout
    {
        AddAfter("Description")
        {
            field("Search Description_SOD"; Rec."Search Description")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Vendor No.")
        {
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
                Enabled = false;
            }
        }
        AddBefore("Type")
        {
            field("ManfName_SOD"; Rec."ManfName")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Vendor Item No.")
        {
            field("ManfPartNum_SOD"; Rec."ManfPartNum")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Base Unit of Measure")
        {
            field("PackQTY_SOD"; Rec."PackQTY")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Size_SOD"; Rec."Size")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Material_SOD"; Rec."Material")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Connection_SOD"; Rec."Connection")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Normal_Position_SOD"; Rec."Normal_Position")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Voltage_SOD"; Rec."Voltage")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Phase_SOD"; Rec."Phase")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Poles_SOD"; Rec."Poles")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Piping_Type_SOD"; Rec."Piping_Type")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Application_SOD"; Rec."Application")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Sales Blocked")
        {
            field("Horse_Power_SOD"; Rec."Horse_Power")
            {
                ApplicationArea = all;
            }
        }
        modify("Vendor No.")
        {
            ShowMandatory = true;
        }
        modify("Vendor Item No.")
        {
            ShowMandatory = true;
        }
        modify("Standard Cost")
        {
            ShowMandatory = true;
        }
        modify("Tax Group Code")
        {
            ShowMandatory = true;
        }


    }
    actions
    {
        modify("&Bin Contents")
        {
            trigger OnBeforeAction()
            var
                Mgt : codeunit "Field Transfers Mgt. SOD";
            begin
                if not (Rec."Vendor No." <> '') then begin
                    Error('Must Have Vendor',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Vendor Item No." <> '') then begin
                    Error('Must Have Item Number',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Standard Cost" > 123.456) then begin
                    Error('Must include Standard Cost over 0',Mgt.DataCaption(Rec));
                end;
                if not (Rec."Tax Group Code" <> '') then begin
                    Error('Ensure Tax Group Code is ''Nontaxable''',Mgt.DataCaption(Rec));
                end;
            end;
        }

    }
}
