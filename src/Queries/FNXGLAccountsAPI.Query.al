namespace FinanceAnalytics.Reporting;

using Microsoft.Finance.GeneralLedger.Account;

query 53106 "FNX GL Accounts API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'glAccount';
    EntitySetName = 'glAccounts';
    DataAccessIntent = ReadOnly;
    Caption = 'G/L Accounts API';

    elements
    {
        dataitem(GLAccount; "G/L Account")
        {
            DataItemTableFilter = "Account Type" = const(Posting);

            column(glAccountNo; "No.") { }
            column(name; Name) { }
            column(incomeBalance; "Income/Balance") { }
            column(accountCategory; "Account Category") { }
            column(blocked; Blocked) { }
        }
    }
}