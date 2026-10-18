namespace FinanceAnalytics.Reporting;

using Microsoft.CRM.Team;
using Microsoft.Finance.GeneralLedger.Account;
using Microsoft.Finance.GeneralLedger.Budget;
using Microsoft.Finance.GeneralLedger.Ledger;
using Microsoft.Inventory.Item;
using Microsoft.Inventory.Ledger;
using Microsoft.Sales.Customer;
using Microsoft.Sales.Receivables;


permissionset 53100 "FNX FINANCE API"
{
    Assignable = true;
    Caption = 'Finance Analytics API (read)';

    Permissions =
        query "FNX Sales Value Entries API" = X,
        query "FNX Customers API" = X,
        query "FNX Items API" = X,
        query "FNX Salespeople API" = X,
        query "FNX GL Actuals API" = X,
        query "FNX GL Budget API" = X,
        query "FNX GL Accounts API" = X,
        query "FNX AR Detail API" = X,
        tabledata "Value Entry" = R,
        tabledata Customer = R,
        tabledata Item = R,
        tabledata "Salesperson/Purchaser" = R,
        tabledata "G/L Account" = R,
        tabledata "G/L Entry" = R,
        tabledata "G/L Budget Entry" = R,
        tabledata "Cust. Ledger Entry" = R,
        tabledata "Detailed Cust. Ledg. Entry" = R;
}