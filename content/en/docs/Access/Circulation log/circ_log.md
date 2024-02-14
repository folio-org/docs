---
title: "Circulation log"
linkTitle: "Circulation log"
date: 2022-01-13
weight: 30
---

The Circulation log app allows you to view and search for some circulation actions. Circulation actions are actions performed by the system or a user within the following Circulation apps: Check in, Check out, and Requests. Notices and fee/fine actions are also included.

## Permissions

You can assign permissions to users in the Users app. The permissions described below allow you to interact with the Circulation log app and determine what you can and cannot do within the app. If you don’t assign any of these permissions to a user, the user will be unable to see the Circulation log app or any related information.
The following are all the Circulation log permissions:


* **Circulation log: All.** This permission allows the user all circulation log functions.
* **Circulation log: View.** This permission allows the user to search and filter the circulation log, but does not allow exporting the circulation log or using the **...** menu items in the Action column.


## Generating a circulation log

You can generate a log based on any of the query parameters or filters you select.

Note: Panes are resizable throughout FOLIO and in the Circulation log. Resize the **Search & filter** pane to see more or less of the circulation log at once.


### Generating circulation actions associated with a user barcode

In the **Search & filter** pane, type or paste a **User barcode** into the box.

If you don't know the user's barcode, click **Patron look-up** to open the user search box and search for that user's record.

### Generating circulation actions associated with an item barcode

In the **Search & filter** pane, type or paste an **Item barcode** into the box.

### Generating circulation actions by description

In the **Search & filter** pane, enter your search terms into the **Description** box.

### Generating circulation actions by date

1. In the **Search & filter** pane, under **Date**, enter a start date in the **From** box and an end date in the **To** box.

2. Click **Apply**. Your results appear in the Circulation log.


### Generating circulation actions by service point

In the **Search & filter** pane, type or select the **Service point** from the box. You are able to apply more than one Service point to your search, if needed.

### Loan filter options

In the **Search & filter** pane, click **Loan** and select any applicable filters:

* **Changed due date.** Include manual due date change actions.
* **Patron info added.** Include patron info loan comment added actions.
* **Staff info added.** Include staff info loan comment added actions.
* **Checked out.** Include checked out actions.
* **Checked out through override.** Include checked out using an override actions.
* **Checked in.** Include checked in actions. The checked in items may or may not have been out on loan.
* **Anonymized.** Include anonymized loan actions.
* **Claimed returned.** Include claimed returned actions.
* **Closed loan.** Include closed loan actions. Closed loan actions include: Item is returned and checked in; Item is lost and paid; Claimed returned item is resolved by marking as missing (via loan detail).
* **Declared lost.** Include declared lost actions.
* **Marked as missing.** Include marked as missing actions.
* **Recall requested.** Include requested as [recall](../../requests/requests/#request-types-and-statuses) actions.
* **Renewed.** Include renewed actions.
* **Renewed through override.** Include renewed using an override actions.
* **Aged to lost.** Include aged to lost actions. The time in which an overdue item ages to lost is set up in the [Settings > Circulation > Lost item fee policies.](../../../settings/settings_circulation/settings_circulation/#creating-a-lost-item-fee-policy)

The Circulation log app records some user block functionality, but it is not available through filters. To find when manual user blocks were created or deleted, search the description field for "Block" and apply other search/filter options as needed.


### Notice filter options

In the **Search & filter** pane, click **Notice** and select any applicable filters:

* **Send.** Include send notice actions.
* **Send error.** Include send notice actions that generated an error message.

### Fee/fine filter options

In the **Search & filter** pane, click **Fee/fine** and select any applicable filters:

* **Billed.** Include billed fee/fine actions.
* **Credited fully.** Include fully credited fee/fine actions.
* **Paid fully.** Include fully paid fee/fine actions.
* **Paid partially.** Include partially paid fee/fine actions.
* **Refunded fully.** Include fully refunded fee/fine actions.
* **Refunded partially.** Include partially refunded fee/fine actions.
* **Staff information only added.** Include fee/fine actions that had staff information added.
* **Transferred fully.** Include fully transferred fee/fine actions.
* **Transferred partially.** Include partially transferred fee/fine actions.
* **Waived fully.** Include fully waived fee/fine actions.
* **Waived partially.** Include partially waived fee/fine actions.
* **Cancelled as error.** Include cancelled as error fee/fine actions.


### Request filter options

In the **Search & filter** pane, click **Request** and select any applicable filters:

* **Cancelled.** Include cancelled request actions.
* **Created.** Include created request actions.
* **Pickup expired.** Include [pickup expired request actions](../../requests/requests/#request-types-and-statuses).
* **Expired.** Include [expired request actions](../../requests/requests/#request-types-and-statuses). These occur when a request status becomes Closed - Unfilled.
* **Moved.** Include requests that were [moved from one item to another.](../../requests/requests/#moving-an-item-level-request-to-another-item-on-the-same-instance).
* **Queue position reordered.** Include [requests that were moved up or down in the request queue](../../requests/requests/#reordering-the-request-queue-for-an-item).


### Columns in the circulation log

Once you generate a circulation log, these columns appear:

* **User barcode.** The user barcode associated with the action.
* **Item barcode.** The item barcode associated with the action.
* **Object.** The object associated with the action: Fee/fine, Loan, Manual block, Notice, or Request.
* **Circ action.** The action that occurred.
* **Date.** The date and time the action occurred.
* **Service point.** The service point where the action occurred.
* **Source.** The source of the action: System, user, or none (blank).
* **Description.** A description of the action.
* **Action.** Click **…** to see more information about the action. See [Getting additional circulation action information](#getting-additional-circulation-action-information) for more information.


## Getting additional circulation action information

Clicking the **...** in the Action column displays a menu that enables access to additional information. The menu options that appear differ depending upon the **[Object](#columns-in-the-circulation-log)** (Fee/fine, Loan, Manual block, Notice, or Request). For example, clicking **... > Item details** opens the Inventory app for more information. In some cases the **...** may not appear, e.g., when a loan has been anonymized.

## Exporting circulation log search results

If your search for circulation log records returns results, you can export those results to a CSV file.

1. Click the **Actions** menu.
2. Select **Export results (CSV)**.

A green success toast message informs you that you have generated the export file. Once generated, the file downloads automatically.

If you do not receive the download file, check that your browser did not block the pop-up window. If the pop-up was blocked, change your browser to allow pop-ups, and export your circulation log search results again. You may also be able to access your download through the Export Manager app if you have permission to view that app.
