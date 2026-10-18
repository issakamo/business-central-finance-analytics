namespace FinanceAnalytics.Reporting;

using Microsoft.Sales.Receivables;

query 53107 "FNX AR Detail API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'arDetailEntry';
    EntitySetName = 'arDetailEntries';
    DataAccessIntent = ReadOnly;
    Caption = 'AR Detailed Ledger Entries API';

    elements
    {
        dataitem(DetailedEntry; "Detailed Cust. Ledg. Entry")
        {
            // Same rule as the Remaining Amt. (LCY) FlowField on Cust. Ledger Entry
            DataItemTableFilter = "Excluded from calculation" = const(false);

            column(entryNo; "Entry No.") { }
            column(custLedgerEntryNo; "Cust. Ledger Entry No.") { }
            column(entryType; "Entry Type") { }
            column(postingDate; "Posting Date") { }
            column(customerNo; "Customer No.") { }
            column(amountLCY; "Amount (LCY)") { }

            dataitem(LedgerEntry; "Cust. Ledger Entry")
            {
                DataItemLink = "Entry No." = DetailedEntry."Cust. Ledger Entry No.";
                SqlJoinType = InnerJoin;

                column(documentType; "Document Type") { }
                column(documentNo; "Document No.") { }
                column(documentPostingDate; "Posting Date") { }
                column(dueDate; "Due Date") { }
                column(salespersonCode; "Salesperson Code") { }
            }
        }
    }
}