## Data findings (CRONUS USA, Dev sandbox)

- **Opening inventory posted through P&L.** On 6/1/2025, 35 item journal positive adjustments (Document No. DEFAULT, source code INVTPCOST, G/L entries 2-118) credited account 50110 by $2,174,615.50, because the Inventory Adjmt. Account in General Posting Setup is 50110. Actuals keep these entries so the model reconciles to BC. BUD2026 June was corrected to 1.05 x June 2025 COGS without them ($51,314.34).
- **Prior-year depreciation.** 8 FA G/L journal entries dated 12/31/2024 (account 82000, $43,659).
- **Future-dated deferrals.** Purchase invoice 108226 posts deferral entries to 68210 monthly through 2027. Because of this, the actuals cutoff is derived from the last sales posting date, not the latest G/L date.
- **Scope.** 2025 P&L activity is almost entirely sales (40140), COGS (50110) and depreciation (82000).