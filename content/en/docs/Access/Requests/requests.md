---
title: "Requests"
linkTitle: "Requests"
date: 2022-09-20
weight: 50
---

The Requests app allows you to create and manage requests. 

FOLIO supports two kinds of requests - item level, and title level. 

Item level requests are made on an individual item record and are the default type of request for FOLIO. 

Title level requests are made on the instance level. FOLIO chooses the item from the holdings on that instance to fill the request, whether the item is available immediately or becomes available when the item is returned.

Libraries can turn on title-level requests in [Settings > Circulation > Title level requests]({{< ref "/settings_circulation.md#.settings--circulation--title-level-requests">}}).

Libraries that want to use title level requests should consider:

* Once title level requesting is turned on, if a title level request is then created, title-level requesting cannot be turned off without removing those title level requests from the FOLIO system.
* Open item level requests in the system from previous versions of FOLIO should be closed prior to turning on title level requests, to avoid issues with queue ordering. 
* Title level requests may be created for any instance in the system regardless of circulation rules. Circulation rules are checked at the point that a title level request would be associated with an item. If the circulation rule would not allow the title level request to be placed, the request will remain in the Requests app with an Open - Not yet filled status.
* Title level requests are not yet supported for multi-volume sets - e.g., "any copy of volume D of the Longman Anthology of World Literature." Those requests must continue to be handled as item-level requests.
* If an item is new in FOLIO and added via the Receiving app, via Inventory, or via Data Import, there will be no indication that the item could be used to fill an open title level request. The item needs to be checked in in order for a request to be potentially filled.


## Permissions

The permissions listed below allow you to interact with the Requests app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Requests app or any related information.

The following are all the Requests permissions:

* **Requests: All permissions.** This permission allows the user all request functions.
* **Requests: Move to new item, reorder queue.** This permission allows the user to move requests from one item to another (subject to request policies).
* **Requests, Reorder queue.** This permission allows the user to access the dedicated request queue page with reorder capabilities. It is only needed for users who need to reorder the queue. You do not need this permission to view the queue.
* **Requests: View.** This permission allows the user to search and view request records.
* **Requests: View, create.** This permission allows the user to create new requests and view existing records.
* **Requests: View, edit, cancel.** This permission allows the user to view, edit and cancel requests.

## Keyboard shortcuts
Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform essentials > Keyboard shortcuts]({{< ref "keyboardshortcuts.md" >}}) for more information.

## Request Types and Statuses

Requests are assigned one of three Request Types:

* **Hold.** Items currently not available but wanted when available.
* **Page.** Items available to be pulled off the shelf.
* **Recall.** Items currently not available, but needed immediately. 

Note that FOLIO allows items in some statuses to be recalled even if they are not on loan to a patron, but there is currently no difference in FOLIO workflows between a recall and a page when that occurs. If a loan is recalled, the original loan period may be shortened.

Open requests have one of the following statuses:

* **Open - Awaiting delivery**: The request has been associated with an item and is in the process of being delivered, but the item has not yet been checked out to the patron. Generally this signals that there may be an issue with the delivery request.
* **Open - Awaiting pickup**: The request has an associated item, and it is currently at the requested pickup point, waiting for the requester to come pick it up.
* **Open - In transit**: The request has been associated with an item, and the item is currently being delivered to the patron’s requested pickup service point.
* **Open - Not yet filled**: The request has not yet been associated with an item, and the Request expiration date, if it exists, is in the future.

Closed requests have one of the following statuses:

* **Closed - Cancelled**: The request was cancelled either prior to an item being available for pickup, or after the item became available for pickup, but before the pickup expired.
* **Closed - Filled**: The request was associated with an item, the item was placed on hold for the patron, and the patron checked the item out.
* **Closed - Pickup expired**: The request was associated with an item, the item was placed on hold for the patron, but the patron did not pick up the item before the Hold shelf expiration date passed.
* **Closed - Unfilled**: The request was not associated with an item before the Request expiration date passed. If the Request expiration date field is empty, the request will never be moved to this status.

## Item level requesting

### Creating a request

Library staff create requests in the Request app.  They can also start the request process from a user record in Users, or an item record in Inventory; those apps will route you into the Requests app to create the request. 

Requesting is controlled by circulation rules and item statuses. Some item statuses cannot be requested at all; some item statuses only allows holds and recalls. See [Platform Essentials > Item Status](https://docs.folio.org/docs/platform-essentials/item-status/itemstatus/) for more information.

1. In the **Requests** pane, select **Actions > New**.
2. In the **Item information** box, either scan the barcode of the requested item or enter the barcode and click **Enter**. The item is added to the request and its item information appears.
3. Select a **Request type**. The options that appear depend on the Item status of the item you are requesting.
4. Optional: Enter a **Request expiration date**. If the request is still open by the selected date, it closes and its status changes to Closed - Unfilled.
6. Optional: Enter any **Patron comments.** For example, if the patron needs the item immediately, you can note it here. Patron comments show up in the CSV report and pick slips.
5. In the **Requester information** box, either scan the requester’s barcode or enter the barcode and click **Enter**.
6. If you do not have the requester’s barcode, click **Requester look-up** to search for the patron:
    1. In the **Select User** dialog, search for the requester.
    2. Once you find the requester, select them from the **User Search Results** list. They are applied to the request and their information appears.
7. Select the **Fulfillment preference**.
8. Select the **Pickup service point** or **Delivery address**, depending on your selection in the previous step.
9. Click **Save & close**. The request is saved and the Request Detail pane appears. The patron receives an email notification saying their request was received by the library, [if you have this notification configured.]({{< ref "/settings_circulation.md#patron-notice-policies" >}})

### Editing an item level request

You can only edit open requests. Once a request is closed, it cannot be edited.

1. [Find the request you want to edit.](#searching-for-requests) 
2. In the **Request Detail** pane, select **Actions > Edit.**
3. Edit the request.
4. Click **Save & close**. The request is updated.

### Duplicating an item level request

Any open request can be duplicated, as long as the request being created through duplication has a different requester. 

1. [Find the request you want to duplicate.](#searching-for-requests) 

2. In the **Request Detail** pane, select **Actions > Duplicate**. A New request window appears with the same Item information, Request information, and Requester information as the request you chose to duplicate.

3. Edit any of the request information before submitting the request.

4. Select a **Pickup service point**.

5. Click **Save & close**. The duplicate request appears in the Request Detail pane.

### Moving an item-level request to another item on the same instance

You can move a request from one item to another on the same instance. You may want to do this if a request item goes missing or if you need to balance request queues.

Note: If a recall request is moved to a loan item that wasn’t previously recalled, the loan will be recalled--the patron gets a recall notice, [if configured,]({{< ref "/settings_circulation.md#patron-notice-policies" >}}) and the loan’s due date may be truncated or extended, depending on the associated loan policy.

1. [Find the request you want to move.](#searching-for-requests)
2. In the **Request Detail** pane, select **Actions > Move request**.
3. In the **Select item** window, select the item you want to move the request to. If the current request type is not allowed, a Current requests type not allowed for selected item dialog appears.
4. Click **Confirm** to allow the request to be converted. A confirmation message appears and the request appears under the item you selected.

## Reordering the request queue for an item

You can change a patron’s location in the request queue for an item by reordering the queue.

1. [Find the request with the queue you want to reorder.](#searching-for-requests)
2. In the **Request Detail** pane, select **Actions > Reorder queue**.
3. In the **Request queue** window, drag the requests in the order you would like them to appear. Requests cannot be moved above a Page request in the first position, even if fulfillment has not begun.
4. Once you are done moving the requests, click the **X** to exit the Request queue window. The queue order is saved.

## Canceling an item level request

You can only cancel open requests. Once a request is closed, it cannot be cancelled.

Note: When cancelling a request, you should consider the following:

* When a page request is cancelled and there are no other requests in the queue, its Item status changes back to Available.
* If you cancel a request that has begun fulfillment (it has a Request status of Open - In transit or Open - Awaiting pickup), the Request status changes to Closed - Cancelled, but the Item status will not change until it is checked in.
* If a requested item is awaiting pickup and its request is cancelled, it appears on the Hold shelf clearance report.

1. [Find the request you want to cancel.](#searching-for-requests)
2. In the **Request Detail** pane, select **Actions > Cancel request**.
3. In the **Confirm request cancellation** dialog, select the **Reason for cancellation**.
4. Optional: Enter any additional notes on the cancellation in the **Additional information for patron** box. If you selected **Other**, then you must supply additional information.
5. Click **Confirm**. The dialog closes and the request is cancelled. The Request status is updated to Closed - Cancelled and the patron receives a cancellation notification email, [if you have this notification configured.]({{< ref "/settings_circulation.md#patron-notice-policies" >}})

## Title level requesting

### Creating a title-level request

Library staff create requests in the Request app.  They can also start the request process from a user record in Users, or an item record in Inventory; those apps will route you into the Requests app to create the request. 

Note that you must have permission to create requests in the Requests app in order to see the option to create a request from Inventory.

1. In the **Requests** pane, select **Actions > New**.
2. To create a title level request, make sure **Create title level request is checked.**.
3. Title information may already be filled in (if you started your request from the Inventory app.) If not, you need to search for the title:
    1. Click **Title look-up**.
    2. In the modal that appears, search for the title you wish to place the request on.
    3. Click the title to select it; the modal will close, and the title information will populate in the request form.
4. Select a **Request type**. The options that appear depend on the Item status of the item you are requesting.
5. Optional: Enter a **Request expiration date**. If the request is still open by the selected date, it closes and its status changes to Closed - Unfilled. 
6. Optional: Enter any **Patron comments**. For example, if the patron needs the item immediately, you can note it here. Patron comments show up in the CSV report and can be included in request pick slips.
7. In the **Requester information** box, either scan the requester’s barcode or enter the barcode and click **Enter**.
8. If you do not have the requester’s barcode, click **Requester look-up** to search for the patron:
    1. In the **Select User** dialog, search for the requester.
    2. Once you find the requester, select them from the **User Search Results** list. They are applied to the request and their information appears.
9. Select the **Fulfillment preference**.
10. Select the **Pickup service point** or **Delivery address**, depending on your selection in the previous step.
11. Click **Save & close**. The request is saved and the Request Detail pane appears. The patron receives an email notification saying their request was received by the library, if you have this notification configured.

### How FOLIO decides which item will fill a title-level request

FOLIO first checks for an available item on the instance. If an item is available, FOLIO then looks at the circulation rules to decide what to do next.

If an item is available, and the FOLIO circulation rule allows paging, then the title-level request becomes a page for the item. 

If several items are available, FOLIO will first choose an item that has the effective location at the chosen pickup service point. If there is no available item at an effective location associated with the pickup service point, FOLIO will attempt to choose one from another location associated with that service point.

If there is no matching item at an effective location with a primary service point that corresponds to the requester’s pick-up service point, then FOLIO looks for items in the next closest location.

If no items are available on the instance when the request is created, the request will become either a **Hold** or a **Recall**, depending on the choice made in the requests app.

If the request is a hold, it will remain in the request queue for the title, but it will not be associated with an item until the request is first in the queue and an item is returned.

If the request is a recall, the recall will apply to the loan with a due date closest to the current due date . When the item is returned, it goes to the first open request, regardless of whether that request is the recall that triggered the item's return.

### Viewing Title Level Requests

When viewing a title level request, additional information shows on the request view. **Title information** displays in the top accordion, including the number of open title level requests on that instance.

Once a title level request becomes a **page** or a **recall**, the **Item information accordion** will also display, including the number of the open requests on the item.

For recalls, the item information indicates the item that was recalled, but when that item is returned, it will fill the first request in the queue, even if it was not associated with that particular request.

### Editing a title-level request

You can only edit open requests. Once a request is closed, it cannot be edited.

1. [Find the request you want to edit.](#searching-for-requests) 
2. In the **Request Detail** pane, select **Actions > Edit.**
3. Edit the request.
4. Click **Save & close**. The request is updated.

### Duplicating a title level request

Any open title level request can be duplicated. When you duplicate the request, you will need to change the requester, because a single patron cannot have more than one open title level request on the same instance. 

1. [Find the request you wish to duplicate.](#searching-for-requests) 

2. In the **Request Detail** pane, select **Actions > Duplicate**. A New request window appears with the same Item information, Request information, and Requester information as the request you chose to duplicate.

3. Edit any of the request information before submitting the request.

4. Select a **Pickup service point**.

5. Click **Save & close**. The duplicate request appears in the Request Detail pane.

### Reordering Request Queues with Title Level Requests

To view a request queue from the instance record in Inventory, select **Actions > View requests & reorder**. 

To view a request queue from the request record, search for the request in the Requests app, and then select **Actions > Reorder queue*.

**Fulfillment in progress** shows requests that are in progress and have an assigned item. These requests include:

* Page requests, regardless of the request status. That means that you will see page requests in this section with a status of **Open - Not yet filled**. 
* Requests that are **Open - Awaiting pickup**
* Requests that are **Open - Awaiting delivery**
* Requests that are **Open - In transit**

**Open - Not yet filled** shows hold and recall requests that are not yet being processed. These requests can be reordered using drag-and-drop. These requests all have a status of **Open - Not yet filled**.

In this section, the **Item barcode** column may contain item information, or it may be blank.

* Item level request - you will see the barcode of the requested item.
* Title level recall - you will see the barcode of the item that was recalled. Note that if the item is returned and it could fill a request that is higher in the queue, it will fill that request, not the request that triggered the recall.
* Title level hold request - the **Item barcode** column will be empty.

If there are requests in the queue that have a status of **Closed - pickup expired**, the queue numbers may be incorrect because the closed request is no longer visible. This is a known issue that is planned to be fixed in Nolana.
 
### Canceling a title level request

Only requests that are open can be cancelled. 

Before you cancel a request, consider:

* When a page request is canceled and there are no other requests in the queue, its Item status changes back to Available.
* If you cancel a request that has begun fulfillment (it has a Request status of Open - In transit or Open - Awaiting pickup), the Request status changes to Closed - Canceled, but the Item status will not change until it is checked in.
* If a requested item is awaiting pickup and its request is canceled, it appears on the Hold shelf clearance report.
* If there are other open title level requests that are not in progress, the item needs to be checked in to fulfill the next request in queue.

1. [Find the request you want to cancel.](#searching-for-requests) 
2. In the **Request Detail** pane, select **Actions > Cancel request**.
3. In the **Confirm request cancellation** dialog, select the **Reason for cancellation**.
4. Optional: Enter any additional notes on the cancellation in the **Additional information for patron** box. If you selected **Other**, then you must supply additional information.
5. Click **Confirm**. The dialog closes and the request is canceled. The Request status is updated to Closed - Canceled and the patron receives a cancellation notification email, if that option is configured.

## Searching for requests

To search for requests by title, item barcode, or requester barcode, enter your search terms into the box on the **Search & filter** pane. You can also use the Request type, Request status, Request level, Tags, and Pickup service point filters to find requests or further limit your search.

To search for requests placed by a specific patron when you do not have their barcode available, you must look up the patron in the Users app.

## Exporting your search results to CSV

After you perform a search for requests, you can save your results to a comma-separated values (CSV) file. The fields visible in the Requests results list appear in the CSV file, along with additional request and item information.

1. [Search for requests.](#searching-for-requests) 
2. In the **Requests** pane, select **Actions > Export search results to CSV**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Exporting a hold shelf clearance report

The hold shelf clearance report contains requests that expired or were cancelled while awaiting pickup. These are items that need to be cleared from the hold shelf.

Hold shelf clearance reports are specific to individual service points. Therefore, you must be signed in to the service point you want to generate the report for.

The hold shelf clearance report will include requests where
* the item has a status of **Awaiting pickup** AND
* the request has a status of **Closed - Cancelled** or **Closed - Pickup expired** AND
* the item's request queue is empty OR the top request in queue is NOT status "Open - Awaiting pickup"

If there are no items matching the report’s criteria, the option appears grayed out.

To export a hold shelf clearance report, in the **Requests** pane, select **Actions > Export hold shelf clearance report for [your service point].**

## Collecting page requests

Page requests are requests for items currently available at the library. In order to fulfill the request, you need to find the item in your library and check it in using the Check in app. This begins the request process in FOLIO. Depending on your library’s workflow, you can identify the page requests that need to be collected using one of two reports: CSV export or pick slips.

### Generating a page requests CSV export

The CSV export report can be used as a pick report. A pick report shows all paged items that need to be pulled from the shelves.

To create a pick report, follow these steps:

1. In the Search & filter pane, select **Request type > Pages** and **Request status > Open - Not yet filled** to filter the items down to open page requests.
2. In the **Requests** pane, select **Actions > Export search results to CSV**.
3. Save and open the file in a spreadsheet application.
4. Optional: Filter the report by **Effective location** to see available items within your area of responsibility.


### Printing pick slips

The pick slips report generates a single slip for every paged item that needs to be pulled from the shelf. This report automatically prints only those items whose Effective location is associated with the currently selected service point. Therefore, you must be signed in to the service point you want to generate the slips for. If there are no items matching the report’s criteria, the option appears grayed out.

You can configure the information that appears on the pick slips in the [Settings app]({{< ref "/settings_circulation.md#settings--circulation--staff-slips" >}}).

To print pick slips, in the Requests pane, select **Actions > Print pick slips for [your service point]**. A print dialog appears.

## Adding a tag to a request

You can add a tag to any open request. Tags are included in the [CSV export report](#exporting-your-search-results-to-csv), in case you want to use them for your workflow. For example, you can tag requests that were not found.

1. [Find the request you want to tag.](#searching-for-requests)
2. In the **Request Detail** pane, click the **tag icon**.
3. In the **Tag** pane, either select a tag from the box or enter a tag.
4. Click the **X** on the Tag window to close the pane and save the tag. The tag number updates to the number of tags applied to the request.

## Requesting items from remote storage

Some libraries store items at a remote storage facility that is not on campus. Often these facilities have their own inventory system in addition to FOLIO to manage high-capacity storage and facilitate requests of items to be brought back to campus. FOLIO supports connections to two types of remote storage systems: CAIASoft and Dematic.

If your library integrates FOLIO with a remote storage system, you will be able to request items from remote storage through the FOLIO Requests app. The basic workflows in the Requests app will be the same as for on-campus items.

For more information on FOLIO’s remote storage functionality, see [the Settings documentation for Remote Storage.]({{< ref "/remotestorage.md" >}})

## Processing delivery requests

You may want to set up delivery requests if your library delivers items to certain patrons. For example, if your library sends items requested by faculty to their office, delivery requests will provide you with the patron’s address and the option to check the item out to the patron upon fulfillment.

Delivery must first be turned on in a patron’s user record, and they must have a default delivery address listed in their account. You can configure this setting manually or through a batch load. The steps below detail how to manually turn on delivery and process a delivery request.


### Manually turning on delivery in a patron’s user record

1. Find the patron in the Users app.
2. Click **Edit**.
3. In the **User record** window, select **Delivery** under **Request preferences** to turn on delivery.
4. Select a default **Fulfillment preference** for the patron.
5. Select a **Default delivery address** that will be used when the patron has a delivery request. If the patron does not have an address in their user record you need to add one.
6. Click **Save & close**.


### Creating a delivery request

1. [Create a request.](#creating-a-request)
2. If the patron does not have delivery as their default **Fulfillment preference**, select **Delivery**.
3. Select a **Delivery address**.
4. Click **Save & close** to start the request process.


### Checking in a delivery request

Delivery requests are not treated any differently than items being routed to the hold shelf. The delivery request will trigger once the item is checked in at any location.

When checking in a delivery request, you have two options: check the item out to the patron or wait to process the request.

To check the item out to the patron, follow these steps:

1. [Check in the item on the Check in app.]({{< ref "/checkin.md#checking-in-an-item" >}})
2. Optional: In the **Route for delivery request** dialog, if you do not want to print a request delivery slip, clear the **Print slip** checkbox.
3. To check out the item to the patron, click **Close and check out**. The check out window appears and the item is automatically checked out to the patron.
4. To end the check out session, click **End Session**.

To wait to process the request, follow these steps:

1. [Check in the item on the Check in app.]({{< ref "/checkin.md#checking-in-an-item" >}})
2. Optional: In the **Route for delivery request** dialog, if you do not want to print a hold slip, clear the **Print slip** checkbox.
3. Click **Close**. The Route for delivery request dialog closes, and the Item status changes to Awaiting delivery.
