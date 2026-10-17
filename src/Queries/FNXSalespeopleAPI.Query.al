namespace FinanceAnalytics.Reporting;

using Microsoft.CRM.Team;

query 53103 "FNX Salespeople API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'salesperson';
    EntitySetName = 'salespeople';
    DataAccessIntent = ReadOnly;
    Caption = 'Salespeople API';

    elements
    {
        dataitem(SalespersonPurchaser; "Salesperson/Purchaser")
        {
            column(salespersonCode; Code) { }
            column(name; Name) { }
            column(email; "E-Mail") { }
        }
    }
}