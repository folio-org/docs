
---
title: "Requests"
linkTitle: "Requests"
date: 2021-02-23
weight: 50
---

The Requests app allows you to create and manage requests. Requests are holds placed on individual items.

Requests are assigned one of three Request Types:

* **Hold.** Items currently not available but wanted when available.
* **Page.** Items available to be pulled off the shelf.
* **Recall.** Items currently not available but needed immediately.


## Permissions

The permissions listed below allow you to interact with the Requests app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Requests app or any related information.

The following are all the Requests permissions:

* **Requests: All permissions.** This permission allows the user all request functions.
* **Requests: Move to new item, reorder queue.** This permission allows the user to move requests from one item to another (subject to request policies).
* **Requests, Reorder queue.** This permission allows the user to access the dedicated request queue page with reorder capabilities. It is only needed for users who need to reorder the queue. You do not need this permission to view the queue.
* **Requests: View.** This permission allows the user to search and view request records.
* **Requests: View, create.** This permission allows the user to create new requests and view existing records.
* **Requests: View, edit, cancel.** This permission allows the user to view, edit and cancel requests.
* **Users: View requests.** This permission allows the user to view requests in the Users app.


## Creating a request

The procedure below details how to create requests in the Request app, but requests can also be created from the user record in the Users app or from the item record in the Inventory app.

Note: When creating a request, you should consider the following:

* You cannot request an item if it has one of the following Item statuses: Aged to lost, Claimed returned, Declared lost, Lost and paid, Missing, or Withdrawn.
* You can only recall an item if it has one of the following Item statuses: Awaiting delivery, Awaiting pickup, Checked out, In process, In transit, On order, or Paged.

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


## Searching for requests

To search for requests by title, item barcode, or requester barcode, enter your search terms into the box on the **Search & filter** pane. You can also use the Request type, Request status, Tags, and Pickup service point filters to find requests or further limit your search.

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


## Canceling a request

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


## Editing a request

You can only edit open requests. The only fields you can change on an open request are **Request expiration date**, **Fulfillment preference**, and **Pickup service point**. Once a request is closed, it cannot be edited.

1. [Find the request you want to edit.](#searching-for-requests)
2. In the **Request Detail** pane, select **Actions > Edit.**
3. Edit the request.
4. Click **Save & close**. The request is updated.


## Duplicating a request

Any open request can be duplicated, but you need to change the requester, because it is not possible to have two identical requests. Note: Duplicate requests act as any other request. They do not go to the top of the queue.

1. [Find the request you want to duplicate.](#searching-for-requests)
2. In the **Request Detail **pane, select **Actions > Duplicate**. A New request window appears with the same Item information, Request information, and Requester information as the request you chose to duplicate.
3. Edit any of the request information before submitting the request.
4. Select a **Pickup service point**.
5. Click **Save & close**. The duplicate request appears in the Request Detail pane.


## Moving a request to another item on the same instance

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


## Adding a tag to a request

You can add a tag to any open request. Tags are included in the [CSV export report](#exporting-your-search-results-to-csv), in case you want to use them for your workflow. For example, you can tag requests that were not found.

1. [Find the request you want to tag.](#searching-for-requests)
2. In the **Request Detail** pane, click the **tag icon**.
3. In the **Tag** pane, either select a tag from the box or enter a tag.
4. Click the **X** on the Tag window to close the pane and save the tag. The tag number updates to the number of tags applied to the request.


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
