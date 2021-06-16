
---
title: "Finance"
linkTitle: "Finance"
date: 2021-05-16
weight: 10
tags: ["parenttopic"]
---

The Finance app allows you to create fund structures and manage money.

Definitions of terms used in the Finance app:   



*   **Acquisition units.** An additional layer you can add to acquisitions records that restricts a user’s ability to interact with those records unless they have been assigned to that unit. For example, you may create acquisition units to represent the different libraries within your library system. Units are defined and determined by your library in the Settings app. See [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}) for more information.
*   **Amount allocated.** The amount of money assigned to a fund at the start of a fiscal year. Additional money can also be allocated during the year.
*   **Budget.** A finance record that describes the amount of money available for a fiscal year within a fund that includes a definition of the allowed expenditure percentage and allowed encumbrance percentage. Transfer and allocation transactions are performed against a budget. Expense classes can be assigned to a budget.
*   **Encumbrance.** An amount of money that the library commits to pay to a vendor from a fund’s budget for ordered materials that are invoiced in the future.
*   **Expense class.** A fiscal entity used to track transactions against a specific purpose or function within a Fund. Optional, tenant-defined, and can be assigned to one or more funds.  Applied to order lines and invoice lines during fund distribution. Each fund can support multiple expense classes.
*   **Fiscal year.** The twelve-month period your library uses to manage its finances.
*   **Fund.** A fiscal entity used to track transactions against a general purpose or function within a ledger. Funds are associated with only one ledger. Fund information persists from year to year as new budgets are created for the fund each year.
*   **Group.** A collection of one or more funds grouped together.
*   **Ledger.** A collection of funds that need to be kept fiscally separate from another ledger’s collection of funds.  All funds within a ledger share future fiscal year rollover behavior.
*   **Net transfers.** Money transferred between funds during a fiscal year.


## Permissions

The permissions listed below allow you to interact with the Finance app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Finance app or any related information.

The following are all the Finance permissions:



*   **Finance: Assign acquisition units to new record.** This permission allows the user to assign acquisition units to the record when creating a new record.
*   **Finance: Create allocations.** This permission allows users to create allocation transactions against budgets. Must include view and edit fund and budget permissions.
*   **Finance: Create transfers.** This permission allows users to create transfer transactions against budgets. Must include view and edit fund and budget.
*   **Finance: Execute fiscal year rollover.** This permission allows the user to execute fiscal year rollovers for funds.
*   **Finance: Manage acquisition units.** This permission allows users to change the assignment of acquisition units for the record when editing a record.
*   **Finance: Manually release encumbrance.** This permission allows the user to release an encumbrance from a fund.
*   **Finance: View fiscal year.** This permission allows searching and viewing of record and settings.
*   **Finance: View fund and budget.** This permission allows the user to search and view funds and budgets.
*   **Finance: View group.** This permission allows the user to search and view groups.
*   **Finance: View ledger.** This permission allows the user to search and view ledgers.
*   **Finance: View, edit fiscal year.** This permission allows the user to view and edit fiscal years.
*   **Finance: View, edit fund and budget.** This permission allows the user to view and edit funds and budgets.
*   **Finance: View, edit group.** This permission allows the user to view and edit groups.
*   **Finance: View, edit ledger.** This permission allows the user to view and edit ledgers.
*   **Finance: View, edit, create fiscal year.** This permission allows the user to view, edit, and create fiscal years.
*   **Finance: View, edit, create fund and budget.** This permission allows the user to view, edit, and create funds and budgets.
*   **Finance: View, edit, create group.** This permission allows the user to view, edit, and create groups.
*   **Finance: View, edit, create ledger.** This permission allows the user to view, edit, and create ledgers.
*   **Finance: View, edit, delete fiscal year.** This permission allows the user to view, edit, and delete fiscal year.
*   **Finance: View, edit, delete fund and budget.** This permission allows the user to view, edit, and delete funds and budgets.
*   **Finance: View, edit, delete group.** This permission allows the user to view, edit, and delete groups.
*   **Finance: View, edit, delete ledger.** This permission allows the user to view, edit, and delete ledgers.


## Creating a fiscal year

A fiscal year is the twelve-month period your library uses for accounting and budgetary purposes. In FOLIO, a fiscal year serves as the basis for your entire fund structure and its parts. It also serves as the framework for creating ledgers, groups, and funds as each tie into a fiscal year for the money they handle.



1. In the **Search & filter** pane, click **Fiscal year**.
2. In the **Fiscal year** pane, click **New**.
3. In the **Create fiscal year** window, enter all required information for the fiscal year. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The fiscal year is saved.  


### Fiscal year information



*   **Name (required).** The name of the fiscal year. A suggested naming convention is the term “Fiscal Year” followed by the numeric year. For example, Fiscal Year 2021.
*   **Code (required).** The code must be an alpha followed by a four-digit number. It can be based on name and year. For example, FY2021.
*   **Period Begin Date (required).** The date when the fiscal year begins.
*   **Period End Date (required).** The date when the fiscal year ends.
*   **Acquisition units.** If you only want particular users within certain acquisition units to be able to edit the fiscal year, enter or select the Acquisition units from the drop-down list. You can select multiple units. If blank, any users with the appropriate permissions are allowed to edit the fiscal year information. For more information, see [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}})
*   **Description.** A description of the fiscal year.


## Creating a ledger

A ledger is a collection of funds that need to be kept fiscally separate from another ledger’s collection of funds. Multiple ledgers can be associated with a fiscal year and each ledger can persist in future fiscal years. A fund can be associated with only one ledger.


1. In the **Search & filter** pane, click **Ledger**.
2. In the **Ledger** pane, click **New**.
3. In the **Create ledger** window, enter all required information for the ledger. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The ledger is saved.


### Ledger information



*   **Name (required).** Name of the ledger. For example, Law Library.
*   **Code (required).** Self-created, based on name.
*   **Fiscal year one (required).** The first fiscal year for the ledger. Ledgers can continue to be used for multiple fiscal years. If the fiscal year does not appear in the list, you can click **New fiscal year** to create a new one.
*   **Status (required).** Select the status of the ledger: Active, Frozen, or Inactive. Active means the ledger is ongoing, Frozen means the ledger has been put on pause, and Inactive means the ledger is no longer in use.
*   **Acquisition Units.** If you only want particular users within certain acquisition units to be able to edit the ledger, enter or select the Acquisition units from the drop-down list. You can select multiple units. If blank, any users with the appropriate permissions are allowed to edit the ledger's information. For more information, see [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}})
*   **Description.** A description of the ledger.


## Creating a group

Groups categorize funds and bring multiple funds together as a single group regardless of fiscal year or ledger. This enables the total amount of money that’s available or has been allocated across multiple funds to be easily analyzed.



1. In the **Search & filter** pane, click **Group**.
2. In the **Group** pane, click **New**.
3. In the **Create group** window, enter all required information for the group. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The group is saved.


### Group information



*   **Name (required).** Name of the group. For example, History.
*   **Code (required).** Self-created, based on name.
*   **Status (required).** Select the status of the group: Active, Frozen, or Inactive. Active means the group is ongoing, Frozen means the group has been put on pause, and Inactive means the group is no longer in use.
*   **Acquisition units.** If you only want particular users within certain acquisition units to be able to edit the group, enter or select the Acquisition units from the drop-down list. You can select multiple units. If blank, any users with the appropriate permissions are allowed to edit the group's information. For more information, see [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}})
*   **Description.** A description of the group. For example, you may want to include why the group was created and the relation between the different funds.


## Creating a fund

Funds show information regarding an ongoing ledger with a budget for the current fiscal year. There can be many funds in a ledger and many funds can be placed in a group.



1. In the **Search & filter** pane, click **Fund**.
2. In the **Fund** pane, click **New.**
3. In the **Create fund** window, enter all required information for the fund. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The fund is saved.


### Fund information



*   **Name (required).** Name of the fund.
*   **Code (required).** Self-created, based on name.
*   **Ledger (required).** Select the ledger associated with the fund.
*   **Status (required).** Select the status of the fund: Active, Frozen, or Inactive. Active means the fund is ongoing, Frozen means the fund has been put on pause, and Inactive means the fund is no longer in use. Note: The fund must be active to successfully open an order or for an invoice to be fully paid.
*   **Type.** A category to describe the fund. Fiscal year rollover of funds is often defined by fund type, so definition of the type values should consider future fiscal year rollover requirements. For example, endowment, or restricted. For more information, see [Settings > Finance > Fund types]({{< ref "/settings_finance.md#settings--finance--fund-types" >}}).
*   **Acquisition units.** If you only want particular users within certain acquisition units to be able to edit the fund, enter or select the Acquisition units from the drop-down list. You can select multiple units. If blank, any users with the appropriate permissions are allowed to edit the fund's information. For more information, see [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}).
*   **Group.** The group associated with the fund.
*   **Transfer from.** To allow transfers to this fund from any other fund, leave this field blank. To restrict transfers to this fund, enter or select the allowed funds from the drop-down list. You can select multiple funds.
*   **Transfer to.** To allow transfers from this fund to any other fund, leave this field blank. To restrict transfers from this fund, enter or select the allowed funds from the drop-down list. You can select multiple funds.
*   **External account (required).** The identifier for this account in an external financial system.
*   **Description.** A description of the fund. For example, you may want to include the purpose of the fund.


#### Creating a new budget

A budget is a finance record that describes the amount of money available for a fiscal year within a fund. You can create a current or planned budget for a fund from the fund details pane. You cannot create a planned budget until there is an upcoming fiscal year in the fiscal year series associated with the Ledger.



1. In the **Search & filter** pane, click **Fund**.
2. [Find the fund](#searching-for-a-fiscal-year-ledger-group-or-fund) to which you want to add a budget and select it.
3. In the fund details pane, in the **Current budget** or **Planned budget** section, click **New**.
4. In the **Current budget** or **Planned budget** dialog, enter all the required information for the budget. For more information on the fields and actions available in this window, see the descriptions below.
5. Click **Save**. The budget is saved.


##### Budget information

*   **Fiscal year (required).** For a current budget, this value is defaulted to the current fiscal year value.
*   **Status (required).** Select the status of the budget: Active, Closed, Frozen, Inactive, Planned. Active means the budget is open, Closed means the budget is closed, Frozen means the budget has been put on pause, Inactive means the fund is no longer in use, and Planned means the budget is assigned to a future fiscal year. Note: The budget must be active to successfully open an order or for an invoice to be fully paid against it.
*   **Allowable expenditure percentage.** The percentage of the budget balance allowed for expenditures. A value of 100 restricts expenditures to the available balance. A value greater than 100 allows expenditures beyond the available balance. A value of 0 restricts expenditures to 0. Leave this field blank to allow unrestricted expenditures.   
*   **Allowable encumbrance percentage.** The percentage of the budget balance allowed for encumbrances. A value of 100 restricts encumbrances to the available balance. A value greater than 100 allows encumbrances beyond the available balance. A value of 0 restricts encumbrances to 0. Leave this field blank to allow unrestricted encumbrances.
*   **Allocated (required).** Enter a numeric value of money to initially allocate to the budget. Values with or without decimals are accepted (100 or 100.00). To create a budget without allocated money, enter a value of 0. Inputting a value of 0 doesn’t generate an allocation transaction. An initial allocation can be made after creating the budget. For more information, see [Allocating money to a budget](#allocating-money-to-a-budget).



#### Adding expense classes to a budget



1. [Find the fund](#searching-for-a-fiscal-year-ledger-group-or-fund) to which you want to add an expense class and select it.
2. In the **Budget details** window, click **Actions > Edit**.
3. In the **Expense classes** section, click **Add expense class**.
4. Select an expense class from the drop-down list. See [Settings > Finance > Expense classes]({{< ref "/settings_finance.md#settings--finance--expense-classes" >}}) for more information about creating expense classes.
5. Click **Save & close**. A confirmation message appears and the expense class is saved.



## Searching for a fiscal year, ledger, group or fund

You can search for fiscal years, ledgers, groups, or funds by clicking on either **Fiscal year**, **Ledger**, **Group**, or **Fund** in the **Search & filter** pane. To search for a fiscal year, ledger, group, or fund, enter your search terms into the box when you are in the Fiscal year, Ledger, Group, or Fund pane. Select the **All** drop-down list to search through one of the following fields:



*   **All.** Searches through all fields in the drop-down list. This is the default search.
*   **Name.** The name of the fiscal year, ledger, group, or fund.
*   **Code.** A unique identifier for the fiscal year, ledger, group, or fund.

You can also search for fiscal year, ledger, group, or fund by selecting any of the filters in the **Search & filter** pane when in the appropriate Finance pane. The filters available vary depending on whether you are searching for a fiscal year, ledger, group, or fund.


### Acquisition unit

To search for fiscal years, ledgers, groups, or funds assigned with a specific acquisition unit, follow these steps:

1. In the **Search & filter** pane, click **Acquisition unit**.
2. Select the acquisition unit from the drop-down list. The search results appear in the Fiscal year, Ledger, Group, or Fund pane.


### Status

To filter ledgers, groups, or funds by their status, select one of the following:



*   **Active.** Ledger, group, or fund currently used by your library.
*   **Inactive.** Ledger, group, or fund previously used by your library.
*   **Pending.** Ledger, group, or fund that may possibly be used by your library.


### Ledger

To search for funds belonging to a certain ledger, follow these steps:



1. In the **Search & filter** pane, click **Ledger**.
2. Select the ledger from the drop-down list. Your results appear in the Fund pane.


### Type

To search for funds assigned with a specific type, follow these steps:



1. In the **Search & filter** pane, click **Type**.
2. Select the type from the drop-down list. Your results appear in the Fund pane.


### Group

To search for funds belonging to a certain group, follow these steps:



1. In the **Search & filter** pane, click **Group**.
2. Select the group from the drop-down list. Your results appear in the Fund pane.


### Tags

To search for funds assigned with specific tags, follow these steps:



1. In the **Search & filter** pane, click **Tags**.
2. Select the tag(s) from the drop-down list. Your results appear in the Fund pane.


## Viewing fiscal year, ledger, group, fund, and budget details

The type of information displayed in your search results depends upon the type of search performed (fiscal year, ledger, group, or fund). That information can include:



*   **Name.** The name of the fiscal year, ledger, group, fund, or budget record.
*   **Code.** A unique identifier for the fiscal year, ledger, group, fund, or budget record.
*   **Description.** The purpose of the fiscal year, ledger, group, fund, or budget record.
*   **Status.** Whether the ledger, group, fund, or budget record is Active, Inactive, or Frozen.
*   **Ledger.** The ledger associated with the fund.

In the search results, click any result to view it. The fiscal year, ledger, group, or fund details pane each display additional information, including financial summaries. Funds that have a budget for the fiscal year appear on the fiscal year details pane. Funds that have a budget for the current fiscal year appear on the ledger, or group details panes. Funds without any budgets created only appear in the fund search results pane.


### Viewing fiscal year details

The fiscal year details pane contains fiscal year information and all ledgers, groups, and funds associated with a fiscal year. The pane displays total allocated, unavailable, and available by ledger, group, and fund.



* To view fiscal year details, [find the fiscal year](#searching-for-a-fiscal-year-ledger-group-or-fund) you want to view and select it. The fiscal year details pane appears.


#### Fiscal year information

The Fiscal year information section contains the following fields:

*   **Record last updated.** Date and time when the record was last updated. Click **Record last updated** to see the next three fields.
*   **Source.** Name of the user who last updated the record.
*   **Record created.** Date and time when the record was created.
*   **Source.** Name of the user who created the record.
*   **Name.** Name of the fiscal year.
*   **Code.** Code for the fiscal year.
*   **Period begin date.** Date when the fiscal year begins.  
*   **Period end date.** Date when the fiscal year ends.
*   **Allocated.** Total amount allocated across all funds with a budget for the fiscal year.
*   **Unavailable.** Total amount unavailable across all funds with a budget for the fiscal year.
*   **Available.** Total amount available across all funds with a budget for the fiscal year.
*   **Acquisition units.** All acquisition units assigned to the fiscal year.
*   **Description.** Description of the fiscal year.


#### Ledger

This section displays a table of all ledgers associated with the fiscal year. To sort by a column, click the column name. To view details about a ledger in the table, click anywhere in the ledger’s row.

The ledger table contains the following columns:



*   **Name.** Name of the ledger.
*   **Code.** Code for the ledger.
*   **Allocated.** Total amount allocated across all funds with a budget for the fiscal year that are associated with the ledger.
*   **Unavailable.** Total amount unavailable across all funds with a budget for the fiscal year that are associated with the ledger.
*   **Available.** Total amount available across all funds with a budget for the fiscal year that are associated with the ledger.


#### Group

This section displays a table of all groups associated with the fiscal year. The table contains the same columns as the [Ledger](#ledger) table.


#### Fund

This section displays a table of all funds associated with the fiscal year. The table contains the same columns as the Ledger table.


### Viewing ledger details

The ledger details pane contains ledger information and all groups and funds associated with the ledger. The pane displays total allocated, unavailable, and available by group and fund.  



* To view ledger details, [find the ledger](#searching-for-a-fiscal-year-ledger-group-or-fund) you want to view and select it. The ledger details pane appears.


#### Ledger information

The Ledger information section contains the following fields:



*   **Record last updated.** Date and time when the record was last updated. Click **Record last updated** to see the next three fields.
*   **Source.** Name of the user who last updated the record.
*   **Record created.** Date and time when the record was created.
*   **Source.** Name of the user who created the record.
*   **Name.** Name of the ledger.
*   **Code.** Code for the ledger.
*   **Current fiscal year.** The current fiscal year name. The system determines which fiscal year is current based on the current date and the period start and end dates for the fiscal year.
*  **Status.** Status of the ledger: Active, Inactive, Frozen.
*   **Allocated.** Total amount allocated across all funds with a budget for the current fiscal year that are associated with the ledger.
*   ** Net transfers.** Total net transfer amount for all funds with a budget for the current fiscal year that are associated with the ledger.
*   **Unavailable.** Total amount unavailable across all funds with a budget for the current  fiscal year that are associated with the ledger.
*   **Available.** Total amount available across all funds with a budget for the current fiscal year that are associated with the ledger.
*   **Acquisition units.** All acquisition units assigned to the ledger.
*   **Description.** Description of the ledger.


#### Group

This section displays a table of all groups associated with the ledger. To sort by a column, click the column name. To view details about a group in the table, click anywhere in the group’s row.

The Group table contains the following columns:

*   **Name.** Name of the group.
*   **Code.** Code for the group.
*   **Allocated.** Total amount allocated across all funds with a budget for the fiscal year that are associated with the group.
*   **Unavailable** Total amount unavailable across all funds with a budget for the fiscal year that are associated with the group.
*   **Available.** Total amount available across all funds with a budget for the fiscal year that are associated with the group.


#### Fund

This section displays a table of all funds associated with the ledger. The table contains the same columns as the [Group](#group) table.


### Viewing group details

The group details pane contains group information and lists all funds and expense classes associated with the group. The pane displays total allocated, unavailable, and available by fund and expense class.



* To view group details, [find the group](#searching-for-a-fiscal-year-ledger-group-or-fund) you want to view and select it. The group details pane appears.


#### Group information


*   **Record last updated.** Date and time when the record was last updated. Click **Record last updated** to see the next three fields.
*   **Source.** Name of the user who last updated the record.
*   **Record created.** Date and time when the record was created.
*   **Source.** Name of the user who created the record.
*   **Name.** Name of the group.
*   **Code.** Code for the group.
*   **Fiscal year.** Name of the twelve-month period your library uses to manage its finances. The current fiscal year displays as the default. Use the drop down list to select a different fiscal year.
*   **Status.** Status of the group: Active, Inactive, Frozen.
*   **Allocated.** Total amount allocated across all funds with a budget for the fiscal year that are associated with the group.
*   **Unavailable** Total amount unavailable across all funds with a budget for the fiscal year that are associated with the group.
*   **Available.** Total amount available across all funds with a budget for the fiscal year that are associated with the group.
*   **Acquisition units.** All acquisition units assigned to the group.

#### Fund

The Fund table contains the following columns:

*   **Name.** Name of the fund.
*   **Code.** Code for the fund.
*   **Allocated.** Total amount allocated across all funds with a budget for the fiscal year that are associated with the group.
*   **Unavailable.** Total amount unavailable across all funds with a budget for the fiscal year that are associated with the group.
*   **Available.** Total amount available across all funds with a budget for the fiscal year that are associated with the group.

#### Expense classes

The Expense classes table contains the following columns:

*   **Expense class.** Name of the expense class, a fiscal entity used to track transactions against a specific purpose or function within a fund.
*   **Expended.** Total amount expended for the expense class.
*   **Percent of total expended.** Total amount expended for the expense class as a percentage of total expended from across all expense classes for funds in the group.

### Viewing fund details

The fund details pane contains fund information and all current, planned, and previous budgets as well as expense classes associated with a fund. The budget sections in the pane display total allocated, unavailable, and available by fund and expense class. To view a list of transactions for the current budget of a fund, click **Actions > View transactions for current budget**. See [Viewing budget transactions](#viewing-budget-transactions) for more information.



* To view fund details, [find the fund](#searching-for-a-fiscal-year-ledger-group-or-fund) you want to view and select it. The fund details pane appears.


#### Fund information

The Fund information section contains the following fields:

*   **Record last updated.** Date and time when the record was last updated. Click **Record last updated** to see the next three fields.
*   **Source.** Name of the user who last updated the record.
*   **Record created.** Date and time when the record was created.
*   **Source.** Name of the user who created the record.
*   **Name.** Name of the fund.
*   **Code.** Code for the fund.
*   **Ledger.** Name of the ledger for the fund. Funds can be associated with only one ledger.
*   **Status.** Status of the fund: Active, Inactive, Frozen.
*   **Currency.** The currency code for the fund. This value is set to the currency defined in Settings > Tenant > Language and localization.
*   **Type.**  The fund type category to describe the fund. For example, Endowment.




#### Current budget

This section contains a table of information about the current budget, if one exists.


#### Current expense classes

This section contains a table of information about expenses classes assigned to the current budget, if any exist.


#### Planned budget

This section contains a table of any future budgets, if any exist. To create a new planned budget, click **New**. See [Creating a new budget](#creating-a-new-budget) for more information.



#### Previous budget

This section contains a table of all budgets from fiscal years prior to the current fiscal year, if any exist.



### Viewing budget details

The budget details window contains a summary of the budget, including funding information and financial activity and overages, and budget information.

To view budget details, follow these steps:



1. [Find the fund](#searching-for-a-fiscal-year-ledger-group-or-fund) with the budget you want to view and select it.
2. In the **fund details** pane, in the **Current budget**, **Planned budget**, or **Previous budget** sections, click the budget **Name**. The budget details window appears.


#### Budget summary

The Budget summary section contains the following fields:

*   **Allocated.** Total amount of all allocation transactions against the budget.
*   **Net transfers.** Total amount of all transfer transactions against the budget.
*   **Unavailable.** Total amount unavailable: encumbered, expended, and awaiting payment
*   **Available.** Total amount available.

#### Budget information

The Budget information section contains the following fields:

*   **Name.** Budget name.
*   **Allocation date.** Currently a null value, but displays the date of the first allocation in future releases.
*   **Status.** Status of the ledger: Active, Frozen, or Inactive.
*   **Fiscal start.** Fiscal year start date.
*   **Fiscal end.** Fiscal year end date.
*   **Allowable expenditure.** Expenditure allowed, expressed as a percentage.
*   **Allowable encumbrance.** Encumbrance allowed, expressed as a percentage.
*   **Encumbered.** Total amount of all encumbrance transactions against the budget.
*   **Awaiting payment.** Total amount of pending payment transactions against the budget.  
*   **Expended.** Total amount of all payment transactions against the budget.
*   **Over encumbered.** Total amount encumbered that exceeds the available amount for the budget, as allowed by the allowable encumbrance percentage.
*   **Over expended.** Total amount expended that exceeds the available amount for the budget, as allowed by the allowable expenditure percentage.
*   **Actions required.** Known issue. Do not use this field; it will be removed in a future version.
*   **Transactions.** Click **View transactions** to view budget transactions. See [Viewing budget transactions](#viewing-budget-transactions) for more information.


## Editing a budget


1. Find the budget you want to edit and select it.
2. In the **budget details** window, click **Actions > Edit.**
3. Edit the budget.
4. Click **Save & close.** A confirmation message appears and the budget is updated.


## Allocating money to a budget



1. Find the budget to which you want to allocate money and select it.
2. In the **budget details** window, click **Actions > Allocate.**
3. In the **Allocation** dialog, enter the following information:

*   **From.** To allocate money without moving it from another fund, leave this field blank. Select the name of a fund if you want the amount that is being allocated to be included in the following year allocation amount for the **To** fund. See [Transferring money between funds](#transferring-money-between-funds) for information about transfers to determine whether you want to move money using **Allocation** or **Transfer**.
*   **To (required).** Select the name of the budget to which you want to allocate money.
*   **Amount (required).** Enter an amount as a numeric value. Values with or without decimals are accepted (100 or 100.00). Negative values are accepted.
*   **Tags.** Enter or select any tags from the drop-down list you would like to apply to the allocation transaction.
*   **Description.** Enter a description of the allocation.

4. Click **Confirm.** A confirmation message appears and the allocation transaction is complete.


## Transferring money between funds



You can transfer money between the current fiscal year budgets of two funds. This action is only allowed if both the **From** and **To** funds have current fiscal year budgets. Transfers are a one-time movement of money within a fiscal year. Fiscal year rollover functionality, in future releases, will not consider transfer amounts during rollover to set up initial allocation amounts for new budgets.  



1. [Find the budget](#viewing-budget-details) to which you want to transfer money and select it.
2. In the **budget details** window, click **Actions > Transfer.**
3. In the **Transfer** dialog, enter the following information:

*   **From (required).** Select the name of the fund from which you want to transfer money.  
*   **To (required).** Select the name of the fund to which you want to allocate money.
*   **Amount (required).** Enter an amount as a numeric value. Values with or without decimals are accepted (100 or 100.00). Negative values are accepted.  
*   **Tags.** Enter or select any tags from the drop-down list you would like to apply to the transfer transaction.
*   **Description.** Enter a description of the transfer.  

4. Click **Confirm.** A confirmation message appears and the transfer transaction is complete.


## Viewing budget transactions

To view a list of all transactions for a budget, follow these steps:

1. Find the budget with the transactions you want to view and select it.
2. In the **budget details** window, under **Transactions**, click **View transactions**. The budget transactions window appears and all transactions display in the Transactions pane. Click the column name to sort by that column.


Once you view budget transactions, the following information appears in the Transactions pane:



*   **Transaction date.** Date of the transaction.
*   **Type.** Transaction type: Allocation, Credit Encumbrance, Payment, Pending Payment, or Transfer.
*   **Amount.** Amount for the transaction. Negative values are in parentheses.
*   **From.** Fund code of the fund from which a transfer was made into the budget.
*   **To.** Fund code of the fund to which a transfer was made from the budget.
*   **Source.** Invoice, PO Line, or User.
*   **Tags.** Any tags associated with the transaction.


To view additional information about a transaction, click the transaction to view it. The **Allocation** pane opens with details. The **Source** field contains a link to the order or invoice that generated encumbrance or payment transactions.


### Searching for budget transactions

You can search and filter within the list of transactions by type, source, tags, and/or expense class. To search by amount, enter a numeric value search term into the box.



1. Find the budget with the transactions you want to view and select it.
2. In the **budget details** window, under **Transactions**, click **View transactions**.
3. In the **budget transactions** window, in the **Search & Filter** pane, enter a numeric value into the box and click **Search**.
4. Optional: Filter results by Type, Source, Tags, or Expense class. See below for more information on the filters. Your results display in the Transactions pane.


#### Type

To filter transactions by Type, select one of the following:



*   **Allocation.** Filter transactions by type of Allocation.
*   **Credit.** Filter transactions by type of Credit.
*   **Encumbrance.** Filter transactions by type of Encumbrance.
*   **Payment.** Filter transactions by type of Payment.
*   **Pending payment.** Filter transactions by type of Pending payment.
*   **Transfer.** Filter transactions by type of Transfer.


#### Source

To filter transactions by Source, select one of the following:



*   **Fiscal year.** Filter transactions by source of Fiscal year.  
*   **Invoice.** Filter transactions by source of Invoice.
*   **PO line** Filter transactions by source of PO line.
*   **User.** Filter transactions by source of User.


#### Tags

To filter for transactions assigned with specific tags, follow these steps:



1. In the **Search & filter** pane, click **Tags.**
2. Select the tag(s) from the drop-down list. Your results appear in the Transactions pane.


#### Expense class

To filter transactions by expense class, follow these steps:



1. In the **Search & filter** pane, click **Expense class.**
2. Select an expense class from the drop-down list. Your results appear in the Transactions pane.


## Editing a fiscal year, ledger, group, fund, or budget records



1. In the **Search & filter** pane, click the appropriate option: **Fiscal year**, **Ledger**, **Group**, or **Fund**.
2. In the corresponding pane, select the record you want to edit.
3. In the corresponding details pane, click **Actions > Edit**.
4. Make your desired changes.
5. Click **Save & close**. The record is saved and updated.


## Deleting a fiscal year, ledger, group, fund, or budget records

Note: Financial structure records cannot be deleted if they have other records assigned to them. Budgets cannot be deleted once they have any type of transaction other than Allocation transactions against them.



1. In the **Search & filter** pane, click the appropriate option: **Fiscal year**, **Ledger**, **Group**, or **Fund**.
2. In the corresponding pane, select the record you want to edit.
3. In the corresponding details pane, click **Actions > Delete**.
4. In the **Delete record** dialog, click **Delete**. A confirmation message appears and the record is deleted.
