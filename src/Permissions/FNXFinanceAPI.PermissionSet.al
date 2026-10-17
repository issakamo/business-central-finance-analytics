namespace FinanceAnalytics.Reporting;

using Microsoft.CRM.Team;
using Microsoft.Inventory.Item;
using Microsoft.Inventory.Ledger;
using Microsoft.Sales.Customer;

permissionset 53100 "FNX FINANCE API"
{
    Assignable = true;
    Caption = 'Finance Analytics API (read)';

    Permissions =
        query "FNX Sales Value Entries API" = X,
        query "FNX Customers API" = X,
        query "FNX Items API" = X,
        query "FNX Salespeople API" = X,
        tabledata "Value Entry" = R,
        tabledata Customer = R,
        tabledata Item = R,
        tabledata "Salesperson/Purchaser" = R;
}