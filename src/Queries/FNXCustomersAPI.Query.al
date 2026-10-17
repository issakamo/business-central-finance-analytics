namespace FinanceAnalytics.Reporting;

using Microsoft.Sales.Customer;

query 53101 "FNX Customers API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'customer';
    EntitySetName = 'customers';
    DataAccessIntent = ReadOnly;
    Caption = 'Customers API';

    elements
    {
        dataitem(Customer; Customer)
        {
            column(customerNo; "No.") { }
            column(name; Name) { }
            column(city; City) { }
            column(state; County) { }
            column(countryRegionCode; "Country/Region Code") { }
            column(customerPostingGroup; "Customer Posting Group") { }
            column(salespersonCode; "Salesperson Code") { }
            column(paymentTermsCode; "Payment Terms Code") { }
            column(blocked; Blocked) { }
        }
    }
}