---
title: "Check in"
linkTitle: "Check in"
date: 2021-12-03
weight: 10
---

The Check in app allows you to process items at a service point, including items a patron returns to the library, items requested by a patron, or in process items. You can also use the Check in app to record in-house usage.

To configure any of the staff slips you encounter when checking in an item, like the Hold slip, see [Staff slips]({{< ref "/settings_circulation.md#settings--circulation--staff-slips" >}}) for more information.


## Permissions

The permissions listed below allow you to interact with the Check in app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, then they will be unable to see the Check in app or any related information.


* **Check in: all permissions.** This permission allows the user to scan items in the Check In app and backdate Check In. However, this permission does not include being able to see details for items or patrons.


## Checking in an item

Once a patron returns an item, check it in to remove it from the patron’s account and charge any applicable fees/fines. If the item is checked in at its effective location and no patrons requested it, it is marked as available.

To check in an item, either scan the barcode of the item, or enter the barcode and click **Enter**. The item appears in the Scanned Items table and its status changes. Fees/fines owed are noted in the Time returned column, if applicable.


### Pop-ups that can occur when checking in an item

While checking in an item, you may encounter one of the following pop-ups:

* Item status
* Check in notes
* Multiple and/or missing pieces


### Columns in the Scanned Items table

Once you check in an item, the following columns appear in the Scanned Items table:

* **Time returned.** The time the item was returned, based on when the item is checked in. Click the **information icon** to view the check in time it is processed as, if backdating the item, versus the actual time it is checked in. Additionally, if any fees/fines are owed, they are noted here.
* **Title.** The title of the item.
* **Barcode.** The barcode of the item.
* **Effective call number string.** The full call number of the item, which includes the call number prefix, suffix, and copy number, as configured in the Inventory app.
* **Location.** The permanent location of the item.
* **In-house use.** If you are recording in-house use of an item, a house icon appears here. Otherwise, it appears blank. See [Recording in-house use of an item](#recording-in-house-use-of-an-item) for more information.
* **Status.** The item status once checked in.
* **Actions.** Click **…** to view additional item information or see the actions you can take on the item. See Getting additional item information for more information.


### Getting additional item information

If you have appropriate permissions, you can learn more information about the item or loan through the Actions column:

* Click **...> Print transit slip** to print an item transit slip if needed. If the item did not go in transit when checked in, this option does not appear.
* Click **... > Loan details** to open the Users app and view the loan details.
* Click **... > Patron details** to open the Users app and view the patron’s user account.
* Click **... > Item details** to open the Inventory app and get additional item details.
* Click **... > Fee/fine details** to open the Users app and view the patron’s fees/fines. In the window that appears, you can create new fee/fines and pay, waive, refund, or transfer fee/fines. If there are no fees/fines associated with the checked in item, this option does not appear.
* Click **... > New Fee/Fine **to open the Users app and create a new fee/fine associated with the item.


## Checking in an item on route to another service point    

There are two scenarios in which an item may need to be routed to another service point:
* a patron returns an item and the service point used at check in is not assigned to its effective location
* an item is requested by another patron to be picked up at a different service point.

1. Either scan the barcode of the item, or enter the barcode and click **Enter**. If the item needs to be sent to another location, an **In transit** dialog appears noting the item is in transit and needs to be routed to a different service point.
2. If you do not want to print a routing slip, clear the **Print slip** checkbox if it is checked.
3. Click **Close** to exit and print a routing slip, if selected. The item appears in the Scanned Items table and its status changes to In transit.


## Checking in an item with a request (hold shelf fulfillment)

When a patron requests an item, checking the item in at its requested pickup service point triggers the hold.

1. Either scan the barcode of the item, or enter the barcode and click **Enter**. An **Awaiting pickup for a request** dialog appears noting the item is awaiting pickup and lists its pickup service point.
2. If you do not want to print a hold slip, clear the **Print slip** checkbox if it is checked.
3. Click **Close** to exit and print a hold slip, if selected. The item appears in the Scanned Items table and its status changes to Awaiting pickup. FOLIO automatically sets the hold shelf expiration date/time on the request record, following the settings for date management for the pickup service point. If configured in the notice policy, a pickup notice is sent to the patron once the check in session ends.


## Checking in an item with a request (delivery fulfillment)

Delivery requests are not treated any differently than items being routed to the hold shelf. The delivery request is triggered once the item is checked in at any location. See [Processing delivery requests]({{< ref "/requests.md#processing-delivery-requests" >}}) for more information.

When checking in a delivery request, you have two options: check the item out to the patron or wait to process the request.

To check the item out to the patron:

1. Either scan the barcode of the item, or enter the barcode and click **Enter**.
2. In the **Route for delivery request** dialog, if you do not want to print a request delivery slip, clear the **Print slip** checkbox if it is checked.
3. To check out the item to the patron, click **Close and check out**. The check out window appears and the item is automatically checked out to the patron.
4. To end the check out session, click **End Session**.

To wait to process the request:

1. Either scan the barcode of the item, or enter the barcode and click **Enter**.
2. In the **Route for delivery request** dialog, if you do not want to print a hold slip, clear the **Print slip** checkbox if it is checked.
3. Click **Close**. The Route for delivery request dialog closes, and the Item status changes to Awaiting delivery.


## Checking in and backdating an item

You may need to backdate a returned item if your library was closed on the date the patron returned the item and you do not want to have any fees/fines charged to the patron’s user record.

For example, if your library was closed because of an emergency, you can mark all items returned the day your library was closed with the previous day’s date so that fees/fines will not accrue on patrons’ user records.

1. Click the **pencil icon** under **Date Returned** or **Time returned**.
2. Change the date and /or time.
3. Either scan the barcode of the item, or enter the barcode and click **Enter**. The item appears in the Scanned items table and the backdated time is listed in the Time returned column. To view the actual check in time, click the **information icon** in the Time returned column.

## Anonymizing a loan that has been checked in

A library can configure FOLIO to anonymize loans after they have been checked in. Anonymizing removes the link between the loan record and the user record for the patron who borrowed the item. Your library can configure anonymization options in [**Settings > Circulation > Loan anonymization**](../../../settings/settings_circulation/settings_circulation/#settings--circulation--loan-anonymization).

 If you select *Anonymize closed loans immediately after loan closes*, anonymization will occur after the check in session ends. The anonymization process is scheduled by your system administrator or hosting provider.


## Recording in-house use of an item

If you find an available item (not on loan) in the library away from its shelving location, you can check it in to mark the item as used. For example, you may want to use this feature for items in your reference collection or items on reserve if you’d like to track that the items were used even though they were not checked out.

In order to record in-house usage, the item must be checked in at a service point assigned to its effective location. Additionally, the item must be available and have no open requests.

To mark an item as used, either scan the barcode of the item, or enter the barcode and click **Enter**. A house icon appears in the In-house use column to indicate the statistic has been recorded.


## Printing a transit slip

If you forgot to print a transit slip or have transit slips turned off by default, you can print a transit slip after checking in an item. Transit slips are configured in the [Settings app]({{< ref "/settings_circulation.md#settings--circulation--staff-slips" >}}).

1. [Check in the item](#checking-in-an-item).
2. In the Actions column, click **... > Print transit slip.**


## Creating a new fee/fine

You can manually create a new fee/fine for an item after checking it in.

1. [Check in the item](#checking-in-an-item).
2. In the Actions column, click **... > New Fee/Fine.**
3. In the New fee/fine screen, select a **Fee/fine owner**.
4. Select a **Fee/fine type**.
5. Enter a **Fee/fine amount** in the box.
6. Optional: Enter **Additional information for staff** in the box.
7. Optional: If you do not want to notify the patron about the fee/fine, clear the **Notify patron** checkbox.
8. To submit the fee/fine, click **Charge only**.


## Ending a check in session

Once you are done checking in items, you can end your check in session manually. To end your session and clear the Scanned Items table, click **End session**. Once you end the session, any applicable notices are sent to patrons.

By default, the Check in session is configured to end automatically after a 3 minute period of inactivity. You can turn this setting off or edit the number of minutes of inactivity the session will end after in the [Settings app]({{< ref "/settings_circulation.md#automatically-end-check-in-and-check-out-session-after-period-of-inactivity" >}}).
