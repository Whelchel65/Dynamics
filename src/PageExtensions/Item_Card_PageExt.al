pageextension 50500 "SODItem_Card" extends "Item Card"
{
    layout
    {
        AddBefore("Type")
        {
            field("ManfName_SOD"; Rec."ManfName")
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
        AddAfter("Description")
        {
            field("Search Description_SOD"; Rec."Search Description")
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
            field("Material_SOD"; Rec."Material")
            {
                ApplicationArea = all;
            }
            field("Connection_SOD"; Rec."Connection")
            {
                ApplicationArea = all;
            }
            field("Normal_Position_SOD"; Rec."Normal_Position")
            {
                ApplicationArea = all;
            }
            field("Voltage_SOD"; Rec."Voltage")
            {
                ApplicationArea = all;
            }
            field("Phase_SOD"; Rec."Phase")
            {
                ApplicationArea = all;
            }
            field("Poles_SOD"; Rec."Poles")
            {
                ApplicationArea = all;
            }
            field("Piping_Type_SOD"; Rec."Piping_Type")
            {
                ApplicationArea = all;
            }
            field("Application_SOD"; Rec."Application")
            {
                ApplicationArea = all;
            }
            field("Horse_Power_SOD"; Rec."Horse_Power")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Search Description")
        {
            field("Standard_Item_SOD"; Rec."Standard_Item")
            {
                ApplicationArea = all;
            }
        }
        AddAfter("Type")
        {
            field("Cost_Code_SOD"; Rec."Cost_Code")
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
        AddAfter("Vendor No.")
        {
            field("Vendor_Name_SOD"; Rec."Vendor_Name")
            {
                ApplicationArea = all;
                Editable = false;
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
