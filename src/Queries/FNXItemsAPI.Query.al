namespace FinanceAnalytics.Reporting;

using Microsoft.Inventory.Item;

query 53102 "FNX Items API"
{
    QueryType = API;
    APIPublisher = 'issakamo';
    APIGroup = 'financeAnalytics';
    APIVersion = 'v1.0';
    EntityName = 'item';
    EntitySetName = 'items';
    DataAccessIntent = ReadOnly;
    Caption = 'Items API';

    elements
    {
        dataitem(Item; Item)
        {
            column(itemNo; "No.") { }
            column(description; Description) { }
            column(itemCategoryCode; "Item Category Code") { }
            column(inventoryPostingGroup; "Inventory Posting Group") { }
            column(baseUnitOfMeasure; "Base Unit of Measure") { }
            column(type; Type) { }
            column(blocked; Blocked) { }
        }
    }
}