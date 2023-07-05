page 50701 "API P50701 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Purchase_Line';
    EntitySetCaption = 'Purchase_Lines';
    EntityName = 'purchase_Line';
    EntitySetName = 'purchase_Lines';

    ODataKeyFields = SystemId;
    SourceTable = "Purchase Line";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(documenttype; Rec."Document Type")
                {
                }
                field(buyfromvendorno_; Rec."Buy-from Vendor No.")
                {
                }
                field(documentno_; Rec."Document No.")
                {
                }
                field(lineno_; Rec."Line No.")
                {
                }
                field(type; Rec."Type")
                {
                }
                field(no_; Rec."No.")
                {
                }
                field(locationcode; Rec."Location Code")
                {
                }
                field(postinggroup; Rec."Posting Group")
                {
                }
                field(expectedreceiptdate; Rec."Expected Receipt Date")
                {
                }
                field(description; Rec."Description")
                {
                }
                field(description2; Rec."Description 2")
                {
                }
                field(unitofmeasure; Rec."Unit of Measure")
                {
                }
                field(quantity; Rec."Quantity")
                {
                }
                field(outstandingquantity; Rec."Outstanding Quantity")
                {
                }
                field(qty_toinvoice; Rec."Qty. to Invoice")
                {
                }
                field(qty_toreceive; Rec."Qty. to Receive")
                {
                }
                field(directunitcost; Rec."Direct Unit Cost")
                {
                }
                field(unitcost_lcy_; Rec."Unit Cost (LCY)")
                {
                }
                field(vat_; Rec."VAT %")
                {
                }
                field(linediscount_; Rec."Line Discount %")
                {
                }
                field(linediscountamount; Rec."Line Discount Amount")
                {
                }
                field(amount; Rec."Amount")
                {
                }
                field(amountincludingvat; Rec."Amount Including VAT")
                {
                }
                field(unitprice_lcy_; Rec."Unit Price (LCY)")
                {
                }
                field(allowinvoicedisc_; Rec."Allow Invoice Disc.")
                {
                }
                field(grossweight; Rec."Gross Weight")
                {
                }
                field(netweight; Rec."Net Weight")
                {
                }
                field(unitsperparcel; Rec."Units per Parcel")
                {
                }
                field(unitvolume; Rec."Unit Volume")
                {
                }
                field(appl_toitementry; Rec."Appl.-to Item Entry")
                {
                }
                field(shortcutdimension1code; Rec."Shortcut Dimension 1 Code")
                {
                }
                field(shortcutdimension2code; Rec."Shortcut Dimension 2 Code")
                {
                }
                field(jobno_; Rec."Job No.")
                {
                }
                field(indirectcost_; Rec."Indirect Cost %")
                {
                }
                field(recalculateinvoicedisc_; Rec."Recalculate Invoice Disc.")
                {
                }
                field(outstandingamount; Rec."Outstanding Amount")
                {
                }
                field(qty_rcd_notinvoiced; Rec."Qty. Rcd. Not Invoiced")
                {
                }
                field(amt_rcd_notinvoiced; Rec."Amt. Rcd. Not Invoiced")
                {
                }
                field(quantityreceived; Rec."Quantity Received")
                {
                }
                field(quantityinvoiced; Rec."Quantity Invoiced")
                {
                }
                field(receiptno_; Rec."Receipt No.")
                {
                }
                field(receiptlineno_; Rec."Receipt Line No.")
                {
                }
                field(orderno_; Rec."Order No.")
                {
                }
                field(orderlineno_; Rec."Order Line No.")
                {
                }
                field(profit_; Rec."Profit %")
                {
                }
                field(paytovendorno_; Rec."Pay-to Vendor No.")
                {
                }
                field(inv_discountamount; Rec."Inv. Discount Amount")
                {
                }
                field(vendoritemno_; Rec."Vendor Item No.")
                {
                }
                field(salesorderno_; Rec."Sales Order No.")
                {
                }
                field(salesorderlineno_; Rec."Sales Order Line No.")
                {
                }
                field(dropshipment; Rec."Drop Shipment")
                {
                }
                field(gen_bus_postinggroup; Rec."Gen. Bus. Posting Group")
                {
                }
                field(gen_prod_postinggroup; Rec."Gen. Prod. Posting Group")
                {
                }
                field(vatcalculationtype; Rec."VAT Calculation Type")
                {
                }
                field(transactiontype; Rec."Transaction Type")
                {
                }
                field(transportmethod; Rec."Transport Method")
                {
                }
                field(attachedtolineno_; Rec."Attached to Line No.")
                {
                }
                field(entrypoint; Rec."Entry Point")
                {
                }
                field("area"; Rec."Area")
                {
                }
                field(transactionspecification; Rec."Transaction Specification")
                {
                }
                field(taxareacode; Rec."Tax Area Code")
                {
                }
                field(taxliable; Rec."Tax Liable")
                {
                }
                field(taxgroupcode; Rec."Tax Group Code")
                {
                }
                field(usetax; Rec."Use Tax")
                {
                }
                field(vatbus_postinggroup; Rec."VAT Bus. Posting Group")
                {
                }
                field(vatprod_postinggroup; Rec."VAT Prod. Posting Group")
                {
                }
                field(currencycode; Rec."Currency Code")
                {
                }
                field(outstandingamount_lcy_; Rec."Outstanding Amount (LCY)")
                {
                }
                field(amt_rcd_notinvoiced_lcy_; Rec."Amt. Rcd. Not Invoiced (LCY)")
                {
                }
                field(reservedquantity; Rec."Reserved Quantity")
                {
                }
                field(blanketorderno_; Rec."Blanket Order No.")
                {
                }
                field(blanketorderlineno_; Rec."Blanket Order Line No.")
                {
                }
                field(vatbaseamount; Rec."VAT Base Amount")
                {
                }
                field(unitcost; Rec."Unit Cost")
                {
                }
                field(systemcreatedentry; Rec."System-Created Entry")
                {
                }
                field(lineamount; Rec."Line Amount")
                {
                }
                field(vatdifference; Rec."VAT Difference")
                {
                }
                field(inv_disc_amounttoinvoice; Rec."Inv. Disc. Amount to Invoice")
                {
                }
                field(vatidentifier; Rec."VAT Identifier")
                {
                }
                field(icpartnerref_type; Rec."IC Partner Ref. Type")
                {
                }
                field(icpartnerreference; Rec."IC Partner Reference")
                {
                }
                field(prepayment_; Rec."Prepayment %")
                {
                }
                field(prepmt_lineamount; Rec."Prepmt. Line Amount")
                {
                }
                field(prepmt_amt_inv_; Rec."Prepmt. Amt. Inv.")
                {
                }
                field(prepmt_amt_incl_vat; Rec."Prepmt. Amt. Incl. VAT")
                {
                }
                field(prepaymentamount; Rec."Prepayment Amount")
                {
                }
                field(prepmt_vatbaseamt_; Rec."Prepmt. VAT Base Amt.")
                {
                }
                field(prepaymentvat_; Rec."Prepayment VAT %")
                {
                }
                field(prepmt_vatcalc_type; Rec."Prepmt. VAT Calc. Type")
                {
                }
                field(prepaymentvatidentifier; Rec."Prepayment VAT Identifier")
                {
                }
                field(prepaymenttaxareacode; Rec."Prepayment Tax Area Code")
                {
                }
                field(prepaymenttaxliable; Rec."Prepayment Tax Liable")
                {
                }
                field(prepaymenttaxgroupcode; Rec."Prepayment Tax Group Code")
                {
                }
                field(prepmtamttodeduct; Rec."Prepmt Amt to Deduct")
                {
                }
                field(prepmtamtdeducted; Rec."Prepmt Amt Deducted")
                {
                }
                field(prepaymentline; Rec."Prepayment Line")
                {
                }
                field(prepmt_amountinv_incl_vat; Rec."Prepmt. Amount Inv. Incl. VAT")
                {
                }
                field(prepmt_amountinv__lcy_; Rec."Prepmt. Amount Inv. (LCY)")
                {
                }
                field(icpartnercode; Rec."IC Partner Code")
                {
                }
                field(prepmt_vatamountinv__lcy_; Rec."Prepmt. VAT Amount Inv. (LCY)")
                {
                }
                field(prepaymentvatdifference; Rec."Prepayment VAT Difference")
                {
                }
                field(prepmtvatdiff_todeduct; Rec."Prepmt VAT Diff. to Deduct")
                {
                }
                field(prepmtvatdiff_deducted; Rec."Prepmt VAT Diff. Deducted")
                {
                }
                field(icitemreferenceno_; Rec."IC Item Reference No.")
                {
                }
                field(outstandingamt_ex_vat_lcy_; Rec."Outstanding Amt. Ex. VAT (LCY)")
                {
                }
                field(a_rcd_notinv_ex_vat_lcy_; Rec."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                }
                field(pmt_discountamount; Rec."Pmt. Discount Amount")
                {
                }
                field(prepmt_pmt_discountamount; Rec."Prepmt. Pmt. Discount Amount")
                {
                }
                field(dimensionsetid; Rec."Dimension Set ID")
                {
                }
                field(jobtaskno_; Rec."Job Task No.")
                {
                }
                field(joblinetype; Rec."Job Line Type")
                {
                }
                field(jobunitprice; Rec."Job Unit Price")
                {
                }
                field(jobtotalprice; Rec."Job Total Price")
                {
                }
                field(joblineamount; Rec."Job Line Amount")
                {
                }
                field(joblinediscountamount; Rec."Job Line Discount Amount")
                {
                }
                field(joblinediscount_; Rec."Job Line Discount %")
                {
                }
                field(jobunitprice_lcy_; Rec."Job Unit Price (LCY)")
                {
                }
                field(jobtotalprice_lcy_; Rec."Job Total Price (LCY)")
                {
                }
                field(joblineamount_lcy_; Rec."Job Line Amount (LCY)")
                {
                }
                field(joblinedisc_amount_lcy_; Rec."Job Line Disc. Amount (LCY)")
                {
                }
                field(jobcurrencyfactor; Rec."Job Currency Factor")
                {
                }
                field(jobcurrencycode; Rec."Job Currency Code")
                {
                }
                field(jobplanninglineno_; Rec."Job Planning Line No.")
                {
                }
                field(jobremainingqty_; Rec."Job Remaining Qty.")
                {
                }
                field(jobremainingqty__base_; Rec."Job Remaining Qty. (Base)")
                {
                }
                field(deferralcode; Rec."Deferral Code")
                {
                }
                field(returnsdeferralstartdate; Rec."Returns Deferral Start Date")
                {
                }
                field(prod_orderno_; Rec."Prod. Order No.")
                {
                }
                field(variantcode; Rec."Variant Code")
                {
                }
                field(bincode; Rec."Bin Code")
                {
                }
                field(qty_perunitofmeasure; Rec."Qty. per Unit of Measure")
                {
                }
                field(qty_roundingprecision; Rec."Qty. Rounding Precision")
                {
                }
                field(qty_roundingprecision_base_; Rec."Qty. Rounding Precision (Base)")
                {
                }
                field(unitofmeasurecode; Rec."Unit of Measure Code")
                {
                }
                field(quantity_base_; Rec."Quantity (Base)")
                {
                }
                field(outstandingqty__base_; Rec."Outstanding Qty. (Base)")
                {
                }
                field(qty_toinvoice_base_; Rec."Qty. to Invoice (Base)")
                {
                }
                field(qty_toreceive_base_; Rec."Qty. to Receive (Base)")
                {
                }
                field(qty_rcd_notinvoiced_base_; Rec."Qty. Rcd. Not Invoiced (Base)")
                {
                }
                field(qty_received_base_; Rec."Qty. Received (Base)")
                {
                }
                field(qty_invoiced_base_; Rec."Qty. Invoiced (Base)")
                {
                }
                field(reservedqty__base_; Rec."Reserved Qty. (Base)")
                {
                }
                field(fapostingdate; Rec."FA Posting Date")
                {
                }
                field(fapostingtype; Rec."FA Posting Type")
                {
                }
                field(depreciationbookcode; Rec."Depreciation Book Code")
                {
                }
                field(salvagevalue; Rec."Salvage Value")
                {
                }
                field(depr_untilfapostingdate; Rec."Depr. until FA Posting Date")
                {
                }
                field(depr_acquisitioncost; Rec."Depr. Acquisition Cost")
                {
                }
                field(maintenancecode; Rec."Maintenance Code")
                {
                }
                field(insuranceno_; Rec."Insurance No.")
                {
                }
                field(budgetedfano_; Rec."Budgeted FA No.")
                {
                }
                field(duplicateindepreciationbook; Rec."Duplicate in Depreciation Book")
                {
                }
                field(useduplicationlist; Rec."Use Duplication List")
                {
                }
                field(responsibilitycenter; Rec."Responsibility Center")
                {
                }
                field(itemcategorycode; Rec."Item Category Code")
                {
                }
                field(nonstock; Rec."Nonstock")
                {
                }
                field(purchasingcode; Rec."Purchasing Code")
                {
                }
                field(specialorder; Rec."Special Order")
                {
                }
                field(specialordersalesno_; Rec."Special Order Sales No.")
                {
                }
                field(specialordersaleslineno_; Rec."Special Order Sales Line No.")
                {
                }
                field(itemreferenceno_; Rec."Item Reference No.")
                {
                }
                field(itemreferenceunitofmeasure; Rec."Item Reference Unit of Measure")
                {
                }
                field(itemreferencetype; Rec."Item Reference Type")
                {
                }
                field(itemreferencetypeno_; Rec."Item Reference Type No.")
                {
                }
                field(whse_outstandingqty__base_; Rec."Whse. Outstanding Qty. (Base)")
                {
                }
                field(completelyreceived; Rec."Completely Received")
                {
                }
                field(requestedreceiptdate; Rec."Requested Receipt Date")
                {
                }
                field(promisedreceiptdate; Rec."Promised Receipt Date")
                {
                }
                field(leadtimecalculation; Rec."Lead Time Calculation")
                {
                }
                field(inboundwhse_handlingtime; Rec."Inbound Whse. Handling Time")
                {
                }
                field(plannedreceiptdate; Rec."Planned Receipt Date")
                {
                }
                field(orderdate; Rec."Order Date")
                {
                }
                field(allowitemchargeassignment; Rec."Allow Item Charge Assignment")
                {
                }
                field(qty_toassign; Rec."Qty. to Assign")
                {
                }
                field(qty_assigned; Rec."Qty. Assigned")
                {
                }
                field(returnqty_toship; Rec."Return Qty. to Ship")
                {
                }
                field(returnqty_toship_base_; Rec."Return Qty. to Ship (Base)")
                {
                }
                field(returnqty_shippednotinvd_; Rec."Return Qty. Shipped Not Invd.")
                {
                }
                field(ret_qty_shpdnotinvd__base_; Rec."Ret. Qty. Shpd Not Invd.(Base)")
                {
                }
                field(returnshpd_notinvd_; Rec."Return Shpd. Not Invd.")
                {
                }
                field(returnshpd_notinvd__lcy_; Rec."Return Shpd. Not Invd. (LCY)")
                {
                }
                field(returnqty_shipped; Rec."Return Qty. Shipped")
                {
                }
                field(returnqty_shipped_base_; Rec."Return Qty. Shipped (Base)")
                {
                }
                field(itemchargeqty_tohandle; Rec."Item Charge Qty. to Handle")
                {
                }
                field(returnshipmentno_; Rec."Return Shipment No.")
                {
                }
                field(returnshipmentlineno_; Rec."Return Shipment Line No.")
                {
                }
                field(returnreasoncode; Rec."Return Reason Code")
                {
                }
                field(subtype; Rec."Subtype")
                {
                }
                field(copiedfromposteddoc_; Rec."Copied From Posted Doc.")
                {
                }
                field(pricecalculationmethod; Rec."Price Calculation Method")
                {
                }
                field(attacheddoccount; Rec."Attached Doc Count")
                {
                }
                field(attachedlinescount; Rec."Attached Lines Count")
                {
                }
                field(overreceiptquantity; Rec."Over-Receipt Quantity")
                {
                }
                field(overreceiptcode; Rec."Over-Receipt Code")
                {
                }
                field(overreceiptapprovalstatus; Rec."Over-Receipt Approval Status")
                {
                }
                field(taxtobeexpensed; Rec."Tax To Be Expensed")
                {
                }
                field(provincialtaxareacode; Rec."Provincial Tax Area Code")
                {
                }
                field(irs1099liable; Rec."IRS 1099 Liable")
                {
                }
                field(gsthst; Rec."GST/HST")
                {
                }
                field(vendor_name; Rec."Vendor_Name")
                {
                }
                field(costcode; Rec."CostCode")
                {
                }
                field(routingno_; Rec."Routing No.")
                {
                }
                field(operationno_; Rec."Operation No.")
                {
                }
                field(workcenterno_; Rec."Work Center No.")
                {
                }
                field(finished; Rec."Finished")
                {
                }
                field(prod_orderlineno_; Rec."Prod. Order Line No.")
                {
                }
                field(overheadrate; Rec."Overhead Rate")
                {
                }
                field(mpsorder; Rec."MPS Order")
                {
                }
                field(planningflexibility; Rec."Planning Flexibility")
                {
                }
                field(safetyleadtime; Rec."Safety Lead Time")
                {
                }
                field(routingreferenceno_; Rec."Routing Reference No.")
                {
                }
                field(systemid; Rec."SystemId")
                {
                }
                field(systemcreatedat; Rec."SystemCreatedAt")
                {
                }
                field(systemcreatedby; Rec."SystemCreatedBy")
                {
                }
                field(systemmodifiedat; Rec."SystemModifiedAt")
                {
                }
                field(systemmodifiedby; Rec."SystemModifiedBy")
                {
                }
            }
        }
    }
}
