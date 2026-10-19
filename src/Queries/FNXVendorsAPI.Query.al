namespace FinanceAnalytics.Reporting;

using Microsoft.Purchases.Vendor;

query 53108 "FNX Vendors API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'vendor';
    EntitySetName = 'vendors';
    DataAccessIntent = ReadOnly;
    Caption = 'Vendors API';

    elements
    {
        dataitem(Vendor; Vendor)
        {
            column(vendorNo; "No.") { }
            column(name; Name) { }
            column(city; City) { }
            column(state; County) { }
            column(countryRegionCode; "Country/Region Code") { }
            column(vendorPostingGroup; "Vendor Posting Group") { }
            column(purchaserCode; "Purchaser Code") { }
            column(paymentTermsCode; "Payment Terms Code") { }
            column(blocked; Blocked) { }
        }
    }
}