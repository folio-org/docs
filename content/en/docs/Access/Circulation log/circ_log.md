---
title: "Circulation log"
linkTitle: "Circulation log"
date: 2022-01-13
weight: 30
---

The Circulation log app allows you to view and search for some circulation actions. Circulation actions are actions performed by the system or a user within the following Circulation apps: Check in, Check out, and Requests. Notices and fee/fine actions are also included.

## Permissions

In order to view and interact with the Circulation log app, a user needs to be assigned the following permission:

* **Circulation log: All.** This permission allows the user to access the circulation log and filter all log actions and data.

Note: This is the only permission available for the Circulation log app. You are unable to view and access the Circulation log if you do not have this permission assigned to you. You can assign permissions to users in the Users app.


## Generating a circulation log

You can generate a log based on any of the query parameters or filters you select.

Note: Panes are resizable throughout FOLIO and in the Circulation log. Resize the **Search & filter** pane to see more or less of the circulation log at once.


### Generating circulation actions associated with a user barcode

In the **Search & filter** pane, type or paste a **User barcode** into the box.

If you don't know the user's barcode, click **Patron look-up** to open the user search box and search for that user's record 

### Generating circulation actions associated with an item barcode

In the **Search & filter** pane, type or paste an **Item barcode** into the box.

### Generating circulation actions by description

To search through the **Description** field, in the **Search & filter** pane, enter your search terms into the box.

### Generating circulation actions by date

1. In the **Search & filter** pane, under **Date**, enter a start date in the **From** box and an end date in the **To** box.

2. Click **Apply**. Your results appear in the Circulation log.


### Generating circulation actions by service point

In the **Search & filter** pane, type or select the **Service point** from the box. You are able to apply more than one Service point to your search, if needed.

### Loan filter options

In the **Search & filter** pane, click **Loan** and select any applicable filters:

* **Changed due date.** Include items whose due date was manually changed.
* **Checked out.** Include items that were checked out.
* **Checked out through override.** Include items that were checked out using an override.
* **Checked in** Include items that were checked in. The items may or may not have been out on loan.
* **Anonymized.** Include loans that were anonymized.
* **Claimed returned.** Include items that were claimed returned.
* **Closed loan.** Include items that were returned.
* **Declared lost.** Include items that were declared lost.
* **Marked as missing.** Include items that were marked as missing.
* **Recall requested.** Include items that were requested as [recalls]({{< ref "/requests.md" >}}).
* **Renewed.** Include items that were renewed.
* **Renewed through override.** Include items that were renewed using an override.
* **Age to lost.** Include overdue items that have an Item status of Aged to lost. The time in which an overdue item ages to lost is set up in the [Circulation Setting Lost item fee policies.]({{< ref "/settings_circulation.md#creating-a-lost-item-fee-policy" >}})

Some user block functionality is also recorded, but not available through filters. You can find when manual user blocks were created or deleted by searching the description field for "Block" and applying other search/filter options as needed.


### Notice filter options

In the **Search & filter** pane, click **Notice** and select any applicable filters:

* **Send.** Include notices that were sent out to users.


### Fee/fine filter options

In the **Search & filter** pane, click **Fee/fine** and select any applicable filters:

* **Billed.** Include items that were billed.
* **Credited fully.** Include fees/fines that were fully credited.
* **Paid fully.** Include fees/fines that were fully paid.
* **Paid partially.** Include fees/fines that were partially paid.
* **Refunded fully.** Include fees/fines that were fully refunded.
* **Refunded partially.** Include fees/fines that were partially refunded. Note: Partial refunds are not implemented at this time. Only automated (full) refunds appear in the Circulation Log.
* **Staff information only information added.** Include fees/fines that had staff information added to them.
* **Transferred fully.** Include fees/fines that were fully transferred from the user to another account.
* **Transferred partially.** Include fees/fines that were partially transferred from the user to another account.
* **Waived fully.** Include fees/fines that were fully waived.
* **Waived partially.** Include fees/fines that were partially waived.
* **Cancelled as error.** Include fees/fines that were cancelled because they were created in error.


### Request filter options

In the **Search & filter** pane, click **Request** and select any applicable filters:

* **Cancelled.** Include requests that were cancelled.
* **Created.** Include requests that were created.
* **Pickup expired.** Include requests that were awaiting pickup and the pickup period expired.
* **Expired.** Include requests that expired before they were filled.
* **Moved.** Include requests that were [moved from one item to another.]({{< ref "/requests.md#moving-a-request-to-another-item-on-the-same-instance" >}})
* **Queue position reordered.** Include requests that were moved up or down in the request queue.


### Columns in the circulation log

Once you generate a circulation log, these are the columns that appear:

* **User barcode.** The user barcode associated with the action.
* **Item barcode.** The item barcode associated with the action.
* **Object.** The object associated with the action: Fee/fine, Loan, Manual block, Notice, or Request.
* **Circ action.** The action that occurred.
* **Date.** The date and time the action occurred.
* **Service point.** The service point at which the action occurred.
* **Source.** The source of the action: System, user, or none (blank).
* **Description.** A description of the action.
* **Action.** Click **…** to see more information about the action. See [Getting additional circulation action information for more information.](#getting-additional-circulation-action-information)


## Getting additional circulation action information

Clicking the Action button displays a menu that enables access to additional information. The menu options that appear differ depending upon the **[Object](#columns-in-the-circulation-log)** (Fee/fine, Loan, Manual block, Notice, or Request). For example, clicking **... > Item details** opens the Inventory app for more information. In some cases the **Action** button may not appear, e.g., when a loan has been anonymized.

## Exporting circulation log search results

If your search for circulation log records returns results, you can export those results to a CSV file.

1. Click the **Actions** menu.
2. Select **Export results (CSV)**.

A green success toast message informs you that the export file is being generated. Once the file is generated, it downloads automatically.

If you do not receive the download file, check that your browser did not block the pop-up window. If the pop-up was blocked, change your browser to allow pop-ups, and export your circulation log search results again. You may also be able to access your download through the Export Manager app if you have permission to view that app.
