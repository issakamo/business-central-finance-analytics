namespace FinanceAnalytics.Reporting;

using Microsoft.Purchases.Payables;

query 53109 "FNX AP Detail API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'apDetailEntry';
    EntitySetName = 'apDetailEntries';
    DataAccessIntent = ReadOnly;
    Caption = 'AP Detailed Ledger Entries API';

    elements
    {
        dataitem(DetailedEntry; "Detailed Vendor Ledg. Entry")
        {
            // Same rule as the Remaining Amt. (LCY) FlowField on Vendor Ledger Entry
            DataItemTableFilter = "Excluded from calculation" = const(false);

            column(entryNo; "Entry No.") { }
            column(vendorLedgerEntryNo; "Vendor Ledger Entry No.") { }
            column(entryType; "Entry Type") { }
            column(postingDate; "Posting Date") { }
            column(vendorNo; "Vendor No.") { }
            column(amountLCY; "Amount (LCY)") { }

            dataitem(LedgerEntry; "Vendor Ledger Entry")
            {
                DataItemLink = "Entry No." = DetailedEntry."Vendor Ledger Entry No.";
                SqlJoinType = InnerJoin;

                column(documentType; "Document Type") { }
                column(documentNo; "Document No.") { }
                column(documentPostingDate; "Posting Date") { }
                column(dueDate; "Due Date") { }
                column(purchaserCode; "Purchaser Code") { }
            }
        }
    }
}