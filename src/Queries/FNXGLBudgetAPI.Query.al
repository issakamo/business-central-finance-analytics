namespace FinanceAnalytics.Reporting;

using Microsoft.Finance.GeneralLedger.Budget;

query 53105 "FNX GL Budget API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'glBudgetEntry';
    EntitySetName = 'glBudgetEntries';
    DataAccessIntent = ReadOnly;
    Caption = 'G/L Budget Entries API';

    elements
    {
        dataitem(GLBudgetEntry; "G/L Budget Entry")
        {
            column(entryNo; "Entry No.") { }
            column(budgetName; "Budget Name") { }
            column(budgetDate; Date) { }
            column(glAccountNo; "G/L Account No.") { }
            column(globalDimension1Code; "Global Dimension 1 Code") { }
            column(globalDimension2Code; "Global Dimension 2 Code") { }
            column(amount; Amount) { }
        }
    }
}