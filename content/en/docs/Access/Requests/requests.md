
---
title: "Requests"
linkTitle: "Requests"
date: 2020-11-12
weight: 30
description: >
  Note: This content is currently in draft status.
---

The Requests app allows you to create and manage requests.

There are three Request types:

* **Hold.** The item has been requested and is not currently available.
* **Page.** The item has been requested and has a status of Available.
* **Recall.** The item has been recalled.

## Creating a request

Create a request to place an item on hold for a patron. Requests can also be created from the patron’s record in the Users app.

1. Select **Actions > New**.
2. In the **Item information** box, either scan the barcode of the requested item or enter the barcode and click **Enter**. The item is added to the request and its item information appears.
3. Optional: Enter a **Request expiration date**. If the request is still open by the selected date, it closes and its status changes to Closed - Unfilled.
4. In the **Requester information** box, either scan the patron’s barcode or enter the barcode and click **Enter**.
5. If you do not have the patron’s barcode, click **Requester look-up **to search for the patron:
    1. In the **Select User** dialog, search for the patron.
    2. Once you find the patron, select them from the **User Search Results** list. They are applied to the request and their information appears.
6. Select the patron’s **Fulfilment preference**.
7. Select the patron’s **Pickup service point.**
8. Click **Save & close**. The request is saved and the Request Detail pane appears. The patron receives an email notification saying their request was received by the library, if you have this notification configured. (link to notifications set up once written)

## Searching for requests

To search for requests by title, enter your search terms into the box on the Search & filter pane. You can also use the Request type, Request status, and Tag filters to find requests or further limit your search.

To search for requests placed by a specific patron, you must look up the patron in the Users app.

## Exporting your search results to CSV

After you perform a search for requests, you can save your results to a comma-separated values (CSV) file. All the fields that you see in the Requests results list will appear in the file, along with additional request and item information.

To export your results, select **Actions > Export**.

## Exporting a hold shelf clearance report

The hold shelf clearance report shows requests that were awaiting pickup, but the pickup window expired or the requests were cancelled. Hold shelf clearance reports are specific to individual service points. Therefore, you must be signed in to the service point you want to generate the report for. If there are no items matching the report’s criteria, the option will appear grayed out.

To export a hold shelf clearance report, select **Actions > Export hold shelf clearance report for [your service point].**

## Printing pick slips

Pick slips show all available Page items at your service point. Pick slips are specific to individual service points. Therefore, you must be signed in to the service point you want to generate the slips for. If there are no items matching the report’s criteria, the option will appear grayed out. Configure the information that appears on the pick slips in the Settings app. (link to notifications set up once written)

To print pick slips, select **Actions > Print pick slips for [your service point]**.

## Canceling a request

You can only cancel open requests. Once a request is closed, it cannot be cancelled. When a page request is cancelled and there are no other requests in the queue, the item status changes back to Available. If you cancel a request that has begun fulfillment (it has a status of Open - In transit or Open - Awaiting pickup), the Request status changes to Closed - Cancelled, but the Item status will not change until it is checked in. If a requested item is awaiting pickup and its request is cancelled, it appears on the Hold shelf clearance report.

1. Find the request you want to cancel.
2. In the **Request Detail** pane, select **Actions > Cancel request**.
3. In the **Confirm request cancellation** dialog, select the **Reason for cancellation**.
4. Optional: Enter any additional notes on the cancellation in the **Additional information for patron** box. If you selected **Other**, then you must supply additional information.
5. Click **Confirm**. The dialog closes and the request is cancelled. The Request status is updated to Closed - Cancelled and the patron receives a cancellation notification email, if you have this notification configured.

## Editing a request

You can only edit open requests. Once a request is closed, it cannot be edited. When editing a request, you can only change the request expiration date, fulfillment preference, and pickup service point.

1. Find the request you want to edit.
2. In the **Request Detail** pane, select **Actions > Edit**.
3. Edit the request.
4. Click **Save & close**. The request is updated.

## Duplicating a request

Duplicate requests act as any other request; they do not go to the top of the queue. A request cannot be duplicated if the patron already has an open request on the item.

1. Find the request you want to duplicate.
2. In the **Request Detail** pane, select **Actions > Duplicate**. A New request window appears with the same Item information, Request information, and Requester information as the request you chose to duplicate.
3. Edit any of the request information before submitting the request.
4. Select a **Pickup service point**.
5. Click **Save & close**. The duplicate request appears in the Request Detail pane.

## Moving a request to another item on the same instance

You can only move a request if there is more than one item attached to the instance.

1. Find the request you want to move.
2. In the **Request Detail** pane, select **Actions > Move** request.
3. In the **Select item** window, select the item you want to move the request to. If the current request type is not allowed, a Current requests type not allowed for selected item dialog appears.
4. Click **Confirm** to allow the request to be converted. A confirmation message appears and the request appears under the item you selected.

## Reordering a request queue for an item

You can change a patron’s location in a request queue for an item by reordering it.

1. Find the request with the queue you want to reorder.
2. In the **Request Detail** pane, select **Actions > Reorder** queue.
3. In the **Request queue** window, drag the requests in the order you would like them to appear. Requests cannot be moved above a Page request in the first position, even if fulfillment has not begun.
4. Once you are done moving the requests, click the **X**to exit the Request queue window. The queue order is saved.

## Adding a tag to a request

Tags cannot be added to a closed request.

1. Find the request you want to tag.
2. In the **Request Detail** pane, click the **tag icon** on the Request Detail pane.
3. In the **Tag** pane, select a tag from the box or enter a tag into the box.
4. Click the **X** on the Tag window to close the pane and save the tag. The tag number updates to the number of tags applied to the request.

## Processing delivery requests

You may want to set up delivery requests if your library delivers items to certain patrons. For example, if your library sends items requested by faculty to their office, delivery requests will provide you with the patron’s address and the option to check the item out to the patron upon fulfillment.

Delivery must first be turned on in a patron’s user record, and they must have a default delivery address listed in their account. You can configure this setting manually or through a batch load.

## Manually turning on delivery in a patron’s user record

1. Find the patron in the Users app.
2. Click **Edit**.
3. In the **user record** window, select **Delivery** under **Request preferences** to turn on delivery.
4. Select a default **Fulfillment preference** for the patron.
5. Select a **Default delivery address** that will be used when the patron has a delivery request. If the patron does not have an address in their record you will need to add one.
6. Click **Save & close**.

## Creating a delivery request

1. Create a request.
2. If the patron does not have delivery as their default **Fulfilment preference**, select **Delivery**.
3. Select a **Delivery address**.
4. Click **Save & close** to start the request process.

## Checking in a delivery request

Delivery requests are not treated any differently than items being routed to the hold shelf. The delivery request will trigger once the item is checked in at any location.

1. Check in the item on the Check in app.
2. Optional: In the **Route for delivery request** dialog, if you do not want to print a hold slip, clear the **Print slip** checkbox.
3. To check out the item to the patron, click **Close and check out.** The check out window appears and the item is automatically checked out to the patron.
4. To leave the check out window, click **End Session**.
