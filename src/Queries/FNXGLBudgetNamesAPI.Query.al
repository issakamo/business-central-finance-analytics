namespace FinanceAnalytics.Reporting;

using Microsoft.Finance.GeneralLedger.Budget;

query 53111 "FNX GL Budget Names API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'glBudgetName';
    EntitySetName = 'glBudgetNames';
    DataAccessIntent = ReadOnly;
    Caption = 'G/L Budget Names API';

    elements
    {
        dataitem(GLBudgetName; "G/L Budget Name")
        {
            column(budgetName; Name) { }
            column(description; Description) { }
            column(blocked; Blocked) { }
        }
    }
}