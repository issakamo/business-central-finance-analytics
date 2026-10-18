namespace FinanceAnalytics.Reporting;

using Microsoft.Finance.GeneralLedger.Account;
using Microsoft.Finance.GeneralLedger.Ledger;

query 53104 "FNX GL Actuals API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'glActual';
    EntitySetName = 'glActuals';
    DataAccessIntent = ReadOnly;
    Caption = 'G/L Actuals (Income Statement) API';

    elements
    {
        dataitem(GLAccount; "G/L Account")
        {
            DataItemTableFilter = "Income/Balance" = const("Income Statement"), "Account Type" = const(Posting);

            dataitem(GLEntry; "G/L Entry")
            {
                DataItemLink = "G/L Account No." = GLAccount."No.";
                SqlJoinType = InnerJoin;

                column(entryNo; "Entry No.") { }
                column(postingDate; "Posting Date") { }
                column(glAccountNo; "G/L Account No.") { }
                column(documentType; "Document Type") { }
                column(documentNo; "Document No.") { }
                column(sourceCode; "Source Code") { }
                column(globalDimension1Code; "Global Dimension 1 Code") { }
                column(globalDimension2Code; "Global Dimension 2 Code") { }
                column(amount; Amount) { }
            }
        }
    }
}