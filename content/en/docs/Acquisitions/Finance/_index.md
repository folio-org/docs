
---
title: "Finance"
linkTitle: "Finance"
date: 2020-06-11
weight: 10
tags: ["parenttopic"]
---

The Finance app allows you to create fund structures and manage money.

Definitions of terms used in the Finance app:   



*   **Acquisition units**. An additional organization layer you can add to acquisitions records that restricts a user’s ability to interact with those records unless they have been assigned to that unit. Units are defined and determined by your library in the Settings app under the Acquisition units subsection.
*   **Amount Allocated**. The amount of money assigned to a fund at the start of a fiscal year. Additional money can also be allocated during the year.
*   **Expense class**. A fiscal entity used to track transactions against a specific purpose or function within a Fund.
*   **Fiscal year.** The twelve-month period your library uses to manage its finances.
*   **Fund.** A fiscal entity used to track transactions against a general purpose or function' within a ledger.  Funds are associated with only one ledger.  Fund information persists from year to year as new budgets are created for the fund each year.
*   **Group.** A collection of one or more funds grouped together.
*   **Ledger.** A collection of funds that need to be kept fiscally separate from another ledger’s collection of funds.  All funds within a ledger will share future fiscal year rollover behavior.
*   **Net Transfers**. Money transferred between funds during a fiscal year.


## Permissions

The permissions listed below allow you to interact with the Finance app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Finance app or any related information.

The following are all the Finance permissions:



*   **Finance: Assign acquisition units to new record.** This permission allows the user to assign acquisition units to the record when creating a new record. 
*   **Finance: Create allocations.** This permission allows users to create allocation transactions against budgets. Must include view and edit fund and budget permissions.
*   **Finance: Create transfers.** This permission allows users to create transfer transactions against budgets. Must include view and edit fund and budget.
*   **Finance: Execute fiscal year rollover.** This permission allows the user to execute fiscal year rollovers for funds. 
*   **Finance: Manage acquisition units.** This permission allows users to change the assignment of acquisitions units for the record when editing a record.
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


## Creating a new fiscal year

Create a fiscal year to serve as the basis for your entire fund structure and its parts. A fiscal year is the year for accounting and budgetary purposes while serving as the framework for creating ledgers, groups, and funds as each tie into a fiscal year for the money they handle.  



1. In the **Search & filter** pane, click **Fiscal year**. 
2. In the **Fiscal year** pane, click **New**.
3. In the **Create fiscal year** window, enter all required information for the fiscal year. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The fiscal year is saved.  


### Fiscal year information



*   **Name (required)**. The name of this fiscal year.  A suggested naming convention is the term 'Fiscal year' followed by the numeric year: Fiscal Year 2021.
*   **Code (required)**. The code must be an alpha followed by a four-digit number.  It can be based on name and year. For example, FY2021.
*   **Period Begin Date (required)**. The date when the fiscal year begins. 
*   **Period End Date (required)**. The date when the fiscal year ends. 
*   **Acquisition units**. If you want editing of the fiscal year information to be available only to particular users within certain acquisitions units, enter or select the Acquisition units from the drop-down list. You can select multiple units.  If blank, any users with the appropriate permissions will be permitted to edit the fiscal year information. See Settings > Acquisition units for more information.
*   **Description**. A description of the fiscal year. 


## Creating a new ledger

In order to create a ledger, a fiscal year must be created first. The fiscal year is displayed based on the current date, which ties into the ledger based on what money in the fiscal year so far has been transferred or allocated. There can be multiple ledgers in a fiscal year. An ongoing ledger is a ledger that is currently active and is being used for the current fiscal year and all associated finances.



1. In the **Search & filter** pane, click **Ledger**. 
2. In the **Ledger** pane, click **New**. 
3. In the **Create ledger** window, enter all required information for the ledger. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The ledger is saved. 


### Ledger information



*   **Name (required)**. Name of the ledger. For example, Law Library. 
*   **Code (required)**. Self-created, based on name.
*   **Fiscal year one (required)**. The first fiscal year for the ledger. Ledgers can continue to be used for multiple fiscal years. If the fiscal year does not appear in the list, you can click **New fiscal year** to create a new one. 
*   **Status (required)**. Select the status of the ledger: **Active**, **Frozen**, or **Inactive**. Active means the ledger is ongoing, Frozen means the ledger has been put on pause, and Inactive means the ledger is no longer in use. 
*   **Acquisition Units.** If you want editing of the ledger information to be available only to particular users within certain acquisitions units, enter or select the Acquisition units from the drop-down list. You can select multiple units. If blank, any users with the appropriate permissions will be permitted to edit the ledger information. See Settings > Acquisition units for more information.
*   **Description**. Description of the ledger.


## Creating a new group

Groups categorize funds and bring multiple funds together as a single group regardless of fiscal year and ledger, which enables a total amount of money that’s available or has been allocated across multiple funds to be easily analyzed.



1. In the **Search & filter** pane, click **Group**.
2. In the **Group** pane, click **New**. 
3. In the **Create group** window, enter all required information for the group. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The group is saved. 


### Group information



*   **Name (required)**. Name of the group. For example, History. 
*   **Code (required)**. Self-created, based on name.
*   **Status (required)**. Choose the appropriate status for the ledger as either **Active**, **Frozen**, or **Inactive**. Active means the group is ongoing, Frozen means the group has been put on pause, and Inactive means the group is no longer in use.
*   **Acquisition Units.** If you want editing of the group information to be available only to particular users within certain acquisitions units, enter or select the Acquisition units from the drop-down list. You can select multiple units.  If blank, any users with the appropriate permissions will be permitted to edit the group information. See Settings > Acquisition units for more information.
*   **Description**. A description of the group. For example, you may want to include why the group was created and the relation between the different funds.


## Creating a new fund

Funds show information regarding an ongoing ledger with a budget for the current fiscal year. There can be many funds in a ledger and many funds can be placed in a group if appropriate.



1. In the **Search & filter** pane, click **Fund**.
2. In the **Fund** pane, click **New.** 
3. In the **Create fund** window, enter all required information for the fund. For more information on the fields and actions available in this section, see the descriptions below.
4. Click **Save & Close**. The fund is saved. 


### Fund information 



*   **Name (required)**. Name of the fund. 
*   **Code (required)**. Self-created, based on name.
*   **Ledger (required)**. Select the ledger associated with the fund.
*   **Status (required)**. Choose the appropriate status for the fund as either **Active**, **Inactive**, or **Frozen**. Active means the fund is ongoing, Frozen means the fund has been put on pause, and Inactive means the fund is no longer in use. It was important for us to know that for an order to successfully open, or an invoice to successfully be fully paid, the associated fund must be active.
*   **Type**. A category to describe this fund. Fiscal year rollover of funds is often defined by fund type, so definition of the type values should consider future fiscal year rollover requirements. Examples: endowment, restricted.
*   **Acquisition Units.** If you want the fund to be available for use on an order or invoice to users within certain acquisitions units, enter or select the Acquisition units from the drop-down list. You can select multiple units. If left blank, the system will allow this fund to be used on orders and invoices with any acquisition unit assignments.
*   **Group**. The group associated with the fund.
*   **Transfer from**. To allow transfers to this fund from any other fund, leave this field blank.  To restrict transfers to this fund, enter or select the allowed funds from the drop-down list. You can select multiple funds. 
*   **Transfer to**. To allow transfers from this fund to any other fund, leave this field blank.  To restrict transfers from this fund, enter or select the allowed funds from the drop-down list. You can select multiple funds. 
*   **External account (required)**. Account identifier for this account in an external financial system.
*   **Description**. A description of the fund. For example, you may want to include the purpose of the fund.


## Searching for a fiscal year, ledger, group or fund

You can search for fiscal years, ledgers, groups, or funds by clicking on either **Fiscal year**, **Ledger**, **Group**, or **Fund** in the **Search & filter** pane. To search for a fiscal year, ledger, group, or fund, enter your search terms into the box when you are in the fiscal year, ledger, group, or fund pane. Select the **All** drop-down list to search through one of the following fields: 



*   **All.** All fields. This is the default search.
*   **Name.** The name of the fiscal year, ledger, group, or fund. 
*   **Code.** A unique identifier for the fiscal year, ledger, group, or fund.

You can also search for fiscal year, ledger, group, or fund by selecting any of the filters in the **Search & filter** pane when in the appropriate Finance pane. The filters available vary depending on whether you are searching for a fiscal year, ledger, group, or fund.


### Acquisitions unit

To search for fiscal years, ledgers, groups, or funds assigned with a specific acquisitions unit, follow these steps:

1. In the **Search & filter** pane, click **Acquisitions unit**.

2. Select the acquisitions unit from the drop-down list. The search results appear in the Fiscal year, Ledger, Group, or Fund pane.


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


## Viewing fiscal year, ledger, group, fund details, or budget records

The type of information displayed in your search results depends upon the type of search performed (fiscal year, ledger, group, or fund). That information can include: 



*   **Name**. The name of the fiscal year, ledger, group, fund, or budget record.
*   **Code**. A unique identifier for the fiscal year, ledger, group, fund, or budget record.
*   **Description**. The purpose of the fiscal year, ledger, group, fund, or budget record.
*   **Status**. Whether the ledger, group, fund, or budget record is **Active**, **Inactive**, or **Frozen**. 
*   **Ledger**. The ledger associated with the fund.

Click on any result to display another panel that includes the associated details. 


## Editing a fiscal year, ledger, group, fund, or budget records



1. In the **Search & filter** pane, click the appropriate pane (fiscal year, ledger, group, fund, or budget record).
2. Click the information you want to edit in the appropriate pane. 
3. Click **Actions > Edit**.
4. Edit the information within the window as needed.
5. Click **Save & close**. The finance information is saved and updated.


## Deleting a fiscal year, ledger, group, fund, or budget records



1. In the **Search & filter** pane, click the appropriate pane (fiscal year, ledger, group, fund, or budget record). 
2. Click the information you want to delete in the appropriate pane.
3. Click **Actions > Delete**. Financial structure records cannot be deleted if they have other records assigned to them. Budgets cannot be deleted once they have any type of transaction against them. Budgets can be deleted that only have Allocation type transactions against them.
4. In the **Delete finance information** dialog, click **Delete**. The finance information is deleted and a confirmation message appears.
