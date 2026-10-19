namespace FinanceAnalytics.Reporting;

using Microsoft.Inventory.Ledger;

query 53110 "FNX Inventory Value API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'inventoryValueEntry';
    EntitySetName = 'inventoryValueEntries';
    DataAccessIntent = ReadOnly;
    Caption = 'Inventory Value Entries API';

    elements
    {
        dataitem(ValueEntry; "Value Entry")
        {
            column(entryNo; "Entry No.") { }
            column(postingDate; "Posting Date") { }
            column(itemNo; "Item No.") { }
            column(locationCode; "Location Code") { }
            column(itemLedgerEntryType; "Item Ledger Entry Type") { }
            column(entryType; "Entry Type") { }
            column(itemLedgerEntryQuantity; "Item Ledger Entry Quantity") { }
            column(costAmountActual; "Cost Amount (Actual)") { }
            column(costAmountExpected; "Cost Amount (Expected)") { }
        }
    }
}