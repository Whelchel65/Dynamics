page 50782 "API P50782 SOD"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'SOD';

    EntityCaption = 'Purchase_Header';
    EntitySetCaption = 'Purchase_Headers';
    EntityName = 'purchase_Header';
    EntitySetName = 'purchase_Headers';

    ODataKeyFields = SystemId;
    SourceTable = "Purchase Header";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(APIRepeaterSOD)
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
                field(no_; Rec."No.")
                {
                }
                field(paytovendorno_; Rec."Pay-to Vendor No.")
                {
                }
                field(paytoname; Rec."Pay-to Name")
                {
                }
                field(paytoname2; Rec."Pay-to Name 2")
                {
                }
                field(paytoaddress; Rec."Pay-to Address")
                {
                }
                field(paytoaddress2; Rec."Pay-to Address 2")
                {
                }
                field(paytocity; Rec."Pay-to City")
                {
                }
                field(paytocontact; Rec."Pay-to Contact")
                {
                }
                field(yourreference; Rec."Your Reference")
                {
                }
                field(shiptocode; Rec."Ship-to Code")
                {
                }
                field(shiptoname; Rec."Ship-to Name")
                {
                }
                field(shiptoname2; Rec."Ship-to Name 2")
                {
                }
                field(shiptoaddress; Rec."Ship-to Address")
                {
                }
                field(shiptoaddress2; Rec."Ship-to Address 2")
                {
                }
                field(shiptocity; Rec."Ship-to City")
                {
                }
                field(shiptocontact; Rec."Ship-to Contact")
                {
                }
                field(orderdate; Rec."Order Date")
                {
                }
                field(postingdate; Rec."Posting Date")
                {
                }
                field(expectedreceiptdate; Rec."Expected Receipt Date")
                {
                }
                field(postingdescription; Rec."Posting Description")
                {
                }
                field(paymenttermscode; Rec."Payment Terms Code")
                {
                }
                field(duedate; Rec."Due Date")
                {
                }
                field(paymentdiscount_; Rec."Payment Discount %")
                {
                }
                field(pmt_discountdate; Rec."Pmt. Discount Date")
                {
                }
                field(shipmentmethodcode; Rec."Shipment Method Code")
                {
                }
                field(locationcode; Rec."Location Code")
                {
                }
                field(shortcutdimension1code; Rec."Shortcut Dimension 1 Code")
                {
                }
                field(shortcutdimension2code; Rec."Shortcut Dimension 2 Code")
                {
                }
                field(vendorpostinggroup; Rec."Vendor Posting Group")
                {
                }
                field(currencycode; Rec."Currency Code")
                {
                }
                field(currencyfactor; Rec."Currency Factor")
                {
                }
                field(pricesincludingvat; Rec."Prices Including VAT")
                {
                }
                field(invoicedisc_code; Rec."Invoice Disc. Code")
                {
                }
                field(languagecode; Rec."Language Code")
                {
                }
                field(purchasercode; Rec."Purchaser Code")
                {
                }
                field(orderclass; Rec."Order Class")
                {
                }
                field(comment; Rec."Comment")
                {
                }
                field(no_printed; Rec."No. Printed")
                {
                }
                field(onhold; Rec."On Hold")
                {
                }
                field(appliestodoc_type; Rec."Applies-to Doc. Type")
                {
                }
                field(appliestodoc_no_; Rec."Applies-to Doc. No.")
                {
                }
                field(bal_accountno_; Rec."Bal. Account No.")
                {
                }
                field(recalculateinvoicedisc_; Rec."Recalculate Invoice Disc.")
                {
                }
                field(receive; Rec."Receive")
                {
                }
                field(invoice; Rec."Invoice")
                {
                }
                field(printposteddocuments; Rec."Print Posted Documents")
                {
                }
                field(amount; Rec."Amount")
                {
                }
                field(amountincludingvat; Rec."Amount Including VAT")
                {
                }
                field(receivingno_; Rec."Receiving No.")
                {
                }
                field(postingno_; Rec."Posting No.")
                {
                }
                field(lastreceivingno_; Rec."Last Receiving No.")
                {
                }
                field(lastpostingno_; Rec."Last Posting No.")
                {
                }
                field(vendororderno_; Rec."Vendor Order No.")
                {
                }
                field(vendorshipmentno_; Rec."Vendor Shipment No.")
                {
                }
                field(vendorinvoiceno_; Rec."Vendor Invoice No.")
                {
                }
                field(vendorcr_memono_; Rec."Vendor Cr. Memo No.")
                {
                }
                field(vatregistrationno_; Rec."VAT Registration No.")
                {
                }
                field(selltocustomerno_; Rec."Sell-to Customer No.")
                {
                }
                field(reasoncode; Rec."Reason Code")
                {
                }
                field(gen_bus_postinggroup; Rec."Gen. Bus. Posting Group")
                {
                }
                field(transactiontype; Rec."Transaction Type")
                {
                }
                field(transportmethod; Rec."Transport Method")
                {
                }
                field(vatcountryregioncode; Rec."VAT Country/Region Code")
                {
                }
                field(buyfromvendorname; Rec."Buy-from Vendor Name")
                {
                }
                field(buyfromvendorname2; Rec."Buy-from Vendor Name 2")
                {
                }
                field(buyfromaddress; Rec."Buy-from Address")
                {
                }
                field(buyfromaddress2; Rec."Buy-from Address 2")
                {
                }
                field(buyfromcity; Rec."Buy-from City")
                {
                }
                field(buyfromcontact; Rec."Buy-from Contact")
                {
                }
                field(paytopostcode; Rec."Pay-to Post Code")
                {
                }
                field(paytocounty; Rec."Pay-to County")
                {
                }
                field(paytocountryregioncode; Rec."Pay-to Country/Region Code")
                {
                }
                field(buyfrompostcode; Rec."Buy-from Post Code")
                {
                }
                field(buyfromcounty; Rec."Buy-from County")
                {
                }
                field(buyfromcountryregioncode; Rec."Buy-from Country/Region Code")
                {
                }
                field(shiptopostcode; Rec."Ship-to Post Code")
                {
                }
                field(shiptocounty; Rec."Ship-to County")
                {
                }
                field(shiptocountryregioncode; Rec."Ship-to Country/Region Code")
                {
                }
                field(bal_accounttype; Rec."Bal. Account Type")
                {
                }
                field(orderaddresscode; Rec."Order Address Code")
                {
                }
                field(entrypoint; Rec."Entry Point")
                {
                }
                field(correction; Rec."Correction")
                {
                }
                field(documentdate; Rec."Document Date")
                {
                }
                field("area"; Rec."Area")
                {
                }
                field(transactionspecification; Rec."Transaction Specification")
                {
                }
                field(paymentmethodcode; Rec."Payment Method Code")
                {
                }
                field(no_series; Rec."No. Series")
                {
                }
                field(postingno_series; Rec."Posting No. Series")
                {
                }
                field(receivingno_series; Rec."Receiving No. Series")
                {
                }
                field(taxareacode; Rec."Tax Area Code")
                {
                }
                field(taxliable; Rec."Tax Liable")
                {
                }
                field(vatbus_postinggroup; Rec."VAT Bus. Posting Group")
                {
                }
                field(appliestoid; Rec."Applies-to ID")
                {
                }
                field(vatbasediscount_; Rec."VAT Base Discount %")
                {
                }
                field(status; Rec."Status")
                {
                }
                field(invoicediscountcalculation; Rec."Invoice Discount Calculation")
                {
                }
                field(invoicediscountvalue; Rec."Invoice Discount Value")
                {
                }
                field(sendicdocument; Rec."Send IC Document")
                {
                }
                field(icstatus; Rec."IC Status")
                {
                }
                field(buyfromicpartnercode; Rec."Buy-from IC Partner Code")
                {
                }
                field(paytoicpartnercode; Rec."Pay-to IC Partner Code")
                {
                }
                field(icreferencedocumentno_; Rec."IC Reference Document No.")
                {
                }
                field(icdirection; Rec."IC Direction")
                {
                }
                field(prepaymentno_; Rec."Prepayment No.")
                {
                }
                field(lastprepaymentno_; Rec."Last Prepayment No.")
                {
                }
                field(prepmt_cr_memono_; Rec."Prepmt. Cr. Memo No.")
                {
                }
                field(lastprepmt_cr_memono_; Rec."Last Prepmt. Cr. Memo No.")
                {
                }
                field(prepayment_; Rec."Prepayment %")
                {
                }
                field(prepaymentno_series; Rec."Prepayment No. Series")
                {
                }
                field(compressprepayment; Rec."Compress Prepayment")
                {
                }
                field(prepaymentduedate; Rec."Prepayment Due Date")
                {
                }
                field(prepmt_cr_memono_series; Rec."Prepmt. Cr. Memo No. Series")
                {
                }
                field(prepmt_postingdescription; Rec."Prepmt. Posting Description")
                {
                }
                field(prepmt_pmt_discountdate; Rec."Prepmt. Pmt. Discount Date")
                {
                }
                field(prepmt_paymenttermscode; Rec."Prepmt. Payment Terms Code")
                {
                }
                field(prepmt_paymentdiscount_; Rec."Prepmt. Payment Discount %")
                {
                }
                field(quoteno_; Rec."Quote No.")
                {
                }
                field(jobqueuestatus; Rec."Job Queue Status")
                {
                }
                field(jobqueueentryid; Rec."Job Queue Entry ID")
                {
                }
                field(incomingdocumententryno_; Rec."Incoming Document Entry No.")
                {
                }
                field(creditorno_; Rec."Creditor No.")
                {
                }
                field(paymentreference; Rec."Payment Reference")
                {
                }
                field(journaltempl_name; Rec."Journal Templ. Name")
                {
                }
                field(vatreportingdate; Rec."VAT Reporting Date")
                {
                }
                field(a_rcd_notinv_ex_vat_lcy_; Rec."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                }
                field(amt_rcd_notinvoiced_lcy_; Rec."Amt. Rcd. Not Invoiced (LCY)")
                {
                }
                field(dimensionsetid; Rec."Dimension Set ID")
                {
                }
                field(remittocode; Rec."Remit-to Code")
                {
                }
                field(invoicediscountamount; Rec."Invoice Discount Amount")
                {
                }
                field(no_ofarchivedversions; Rec."No. of Archived Versions")
                {
                }
                field(doc_no_occurrence; Rec."Doc. No. Occurrence")
                {
                }
                field(campaignno_; Rec."Campaign No.")
                {
                }
                field(buyfromcontactno_; Rec."Buy-from Contact No.")
                {
                }
                field(paytocontactno_; Rec."Pay-to Contact No.")
                {
                }
                field(responsibilitycenter; Rec."Responsibility Center")
                {
                }
                field(partiallyinvoiced; Rec."Partially Invoiced")
                {
                }
                field(completelyreceived; Rec."Completely Received")
                {
                }
                field(postingfromwhse_ref_; Rec."Posting from Whse. Ref.")
                {
                }
                field(locationfilter; Rec."Location Filter")
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
                field(datefilter; Rec."Date Filter")
                {
                }
                field(vendorauthorizationno_; Rec."Vendor Authorization No.")
                {
                }
                field(returnshipmentno_; Rec."Return Shipment No.")
                {
                }
                field(returnshipmentno_series; Rec."Return Shipment No. Series")
                {
                }
                field(ship; Rec."Ship")
                {
                }
                field(lastreturnshipmentno_; Rec."Last Return Shipment No.")
                {
                }
                field(pricecalculationmethod; Rec."Price Calculation Method")
                {
                }
                field(assigneduserid; Rec."Assigned User ID")
                {
                }
                field(pendingapprovals; Rec."Pending Approvals")
                {
                }
                field(shiptoupszone; Rec."Ship-to UPS Zone")
                {
                }
                field(taxexemptionno_; Rec."Tax Exemption No.")
                {
                }
                field(provincialtaxareacode; Rec."Provincial Tax Area Code")
                {
                }
                field(stetransactionid; Rec."STE Transaction ID")
                {
                }
                field(gsthsttaxtype; Rec."GST/HST Tax Type")
                {
                }
                field(irs1099code; Rec."IRS 1099 Code")
                {
                }
                field(irs1099amount; Rec."IRS 1099 Amount")
                {
                }
                field(fiscalinvoicenumberpac; Rec."Fiscal Invoice Number PAC")
                {
                }
                field(prepmt_includetax; Rec."Prepmt. Include Tax")
                {
                }
                field(diottypeofoperation; Rec."DIOT Type of Operation")
                {
                }
                field(vendorquote; Rec."VendorQuote")
                {
                }
                field(senttovendor; Rec."SentToVendor")
                {
                }
                field(jobno; Rec."JOBNO")
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
