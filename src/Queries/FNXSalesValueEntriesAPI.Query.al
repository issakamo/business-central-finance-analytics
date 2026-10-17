namespace FinanceAnalytics.Reporting;

using Microsoft.Inventory.Ledger;

query 53100 "FNX Sales Value Entries API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'salesValueEntry';
    EntitySetName = 'salesValueEntries';
    DataAccessIntent = ReadOnly;
    Caption = 'Sales Value Entries API';

    elements
    {
        dataitem(ValueEntry; "Value Entry")
        {
            DataItemTableFilter = "Item Ledger Entry Type" = const(Sale);

            column(entryNo; "Entry No.") { }
            column(postingDate; "Posting Date") { }
            column(documentType; "Document Type") { }
            column(documentNo; "Document No.") { }
            column(itemNo; "Item No.") { }
            column(sourceType; "Source Type") { }
            column(customerNo; "Source No.") { }
            column(salespersonCode; "Salespers./Purch. Code") { }
            column(globalDimension1Code; "Global Dimension 1 Code") { }
            column(invoicedQuantity; "Invoiced Quantity") { }
            column(salesAmountActual; "Sales Amount (Actual)") { }
            column(costAmountActual; "Cost Amount (Actual)") { }
        }
    }
}