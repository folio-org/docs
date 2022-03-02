
---
title: "Check out"
linkTitle: "Check out"
date: 2021-12-03
weight: 20
---

The Check Out app allows you to check out items to patrons. To check out an item, first locate a patron in the system and then scan/enter an item to borrow.


## Permissions

The permissions listed below allow you to interact with the Check out app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, then they will be unable to see the Check out app or any related information.

* **Check out: All permissions.** This permission allows the user to check out items to patrons (create new loans) and view open loans and loan details. However, this permission does not include seeing the entirety of the user record.
* **Check out: Check out circulating items.** This permission allows the user to check out items, but they cannot override non-circulating loan policies.

Three new permissions were added in Iris and are in development. These permissions are expected to allow for more granular control of the links in the Check out app to view a patron’s fee/fines, loans, and requests. These three permissions must be granted to a user in order for the associated link in the **Scan patron card** pane to work.

* **Check out: View fees/fines**. This permission is in development. When finished, it will allow users to be able to click the link in the **Scan patron card** pane to view the patron’s fees/fines in the Users app. The user must have permission to view the Users app in order for the link to work.
* **Check out: View loans**. This permission is in development. When finished, it allows users to be able to click the link in the **Scan patron card** pane to view the patron’s current loans in the Users app. The user must have permission to view the Users app in order for the link to work.
* **Check out: View requests**. This permission is in development. This permission allows users to be able to click the link in the **Scan patron card** pane to view the patron’s current requests in the Requests app.  The user must have permissions to view the Requests app in order for the link to work.


## Locating a patron in the system

You can find the patron by either:

*   Scanning / entering the barcode provided by the patron
*   Using the Patron Look-up function

Locate the patron using a barcode:

1. Either scan the barcode on the patron's library card, or enter the patron barcode number.
2. Click **Enter**. Patron details are displayed.

Locate the patron using the Patron Lookup function:

1. In the Scan patron card pane, click **Patron Look-up**.
2. In the **Select User** dialog, in the **User search** box, enter part or all of the patron's name, email, or username.
3. Optional: Filter results by Status (active/inactive), or by Patron group.
4. Click **Search**.
5. Click the patron to use. The Select User dialog closes, the barcode appears in the Scan patron card pane, and the patron details are displayed.


### Assessing the patron's data

Within the patron details area, note that you can access additional information related to the user. Clicking on any linked information opens the appropriate app and displays the associated information. For example, if the FOLIO user has the appropriate permissions, clicking the number beneath Open requests will open a list of the patron's open requests in the Requests app.

Review the information available to determine if you can continue with check out. For example, fees or fines may be owed, and may need to be handled before proceeding.


## Checking out to a proxy borrower

Proxy borrowers are patrons who are checking out items on the behalf of another patron. For example, a graduate assistant may act as a proxy for a professor.

Note: A patron must first be assigned as a proxy for the borrower  in their user record in the Users app.

1. [Locate the proxy borrower in the system.](#locating-a-patron-in-the-system)
2. In the Who are you acting as? dialog, select the name of the user they will be acting as a proxy for and click **Continue**. The Who are you acting as? dialog closes and patron and proxy details are displayed.


## Scanning the item to check out

To select the item for check out, scan or enter the barcode of the item and click **Enter**. The item is displayed in the Scan Items area and the total number of items scanned is incremented.


### Pop-ups that can occur when checking out an item

While checking an item out to a patron, you may encounter one of the following pop-ups:

* Item status
* Check out notes
* Multiple and/or missing pieces
* Patron block
* Item block
* Override circulation policy


## Getting additional item information

To access more information about each item:

* Click **... > Item details** to open the Inventory app and get additional item details.
* Click **... > Loan details** to open the Users app and access options including renewals, claiming the item was returned, changing the due date, and declaring the item lost.
* Click **... > Loan policy** to open the Settings app for more loan policy information.


## Changing the due date of an item

To change the due date:

1. Click **... > Change due date**.
2. In the **Change Due Date** dialog, enter the date and /or time for the new due date.
3. Click **Save and Close**. The new due date is saved.


## Ending the check out session

Once you have completed checking out items for a patron, you can end the session manually. To end your session and clear the Scanned Items table, click **End session**. Once you end the session, any applicable notices are sent to patrons.

By default, the Check out session is configured to end automatically after a 3 minute period of inactivity. You can turn this setting off or edit the number of minutes of inactivity the session will end after in the [Settings app]({{< ref "/settings_circulation.md#automatically-end-check-in-and-check-out-session-after-period-of-inactivity" >}}).
