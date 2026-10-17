namespace FinanceAnalytics.Reporting;

using Microsoft.Inventory.Ledger;

permissionset 53100 "FNX FINANCE API"
{
    Assignable = true;
    Caption = 'Finance Analytics API (read)';

    Permissions =
        query "FNX Sales Value Entries API" = X,
        tabledata "Value Entry" = R;
}