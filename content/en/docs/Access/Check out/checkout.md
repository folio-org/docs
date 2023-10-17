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
* **Check out: View fees/fines.** This permission allows users to click the fee in the **Scan patron card** pane to view the patron’s fees/fines in the Users app. The user must have permission to view fees/fines in the Users app for the link to work -- for example the permission **Users: Can view fees/fines and loans** (see [Users \> Permissions] (../../../users/#permissions).
A user who has **Check out: all permissions** but does not have **Check out: View fees/fines** will see a patron’s fee/fine amount in the **Scan patron card** pane as text (not a link).

* **Check out: View loans.** This permission allows users to click to click the number of open loans in the **Scan patron card** pane to view the patron’s current loans in the Users app. The user must have permission to view loans in the Users app in order for the link to work -- for example the permission **Users: User loans view** (see [Users \> Permissions] (../../../users/#permissions).
A user who has **Check out: all permissions** but does not have **Check out: View loans** will see how many loans a patron has in the **Scan patron card** pane as text (not a link).


* **Check out: View requests.**  This permission allows users to be able to click the number of open requests in the **Scan patron card** pane to view the patron’s current requests in the Requests app. The user must have permission to view requests in the Requests app in order for the link to work -- for example the permission **Requests: View**(see [Users \> Adding patron info to a loan] (../../../users/#adding-patron-info-to-a-loan).
A user who has **Check out: all permissions** but does not have **Check out: View requests** will see how many requests a patron has in the **Scan patron card** pane as text (not a link).



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

If a patron has a note on their record that is checked to display in the Check out app, the note will appear as a pop-up window after the patron details are displayed.

### Assessing the patron's data

Within the patron details area, note that you can access additional information related to the user. Clicking on any linked information opens the appropriate app and displays the associated information. For example, if the FOLIO user has the appropriate permissions, clicking the number beneath Open requests will open a list of the patron's open requests in the Requests app.

Review the information available to determine if you can continue with check out. For example, fees or fines may be owed, and may need to be handled before proceeding.


## Checking out to a proxy borrower

Proxy borrowers are patrons who are checking out items on the behalf of another patron. For example, a graduate assistant may act as a proxy for a professor.

Note: A patron must first be assigned as a proxy for the borrower in their user record in the Users app.

1. [Locate the proxy borrower in the system.](#locating-a-patron-in-the-system)
2. In the Who are you acting as? dialog, select the name of the user they will be acting as a proxy for and click **Continue**. The Who are you acting as? dialog closes and patron and proxy details are displayed.

## Scanning the item to check out

Make sure you have [looked up the user record prior to scanning items.](#locating-a-patron-in-the-system)

To select the item for check out, scan or enter the barcode of the item and click **Enter**. The item is displayed in the Scan Items area with the **Due date** and **Time** and the total number of items scanned is incremented.

If the item is going to be due sooner than expected, a flag icon will appear next to the item due date after checkout. This can happen if a service point is going to be closed when the item would normally be due, or if the patron's account is set to expire sooner than the expected due date/time.

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
* Click **... > Loan details** to open the Users app and access options including renewals, claiming the item was returned, changing the due date, and declaring the item lost. You can also view or add patron info or staff info comments.
* Click **... > Loan policy** to open the Settings app for more loan policy information.


## Changing the due date of an item

To change the due date:

1. Click **... > Change due date**.
2. In the **Change Due Date** dialog, enter the date and /or time for the new due date.
3. Click **Save and Close**. The new due date is saved.

## Adding a loan comment

Loan comments can be used to store ILL transaction numbers, record a reason why a due date was changed, or track how many times a claimed returned item was searched for. Patron info comments can be included as a token in patron notices (only the most recent comment is included in the token). You need to have the appropriate permissions to be able to add patron or staff info loan comments (see [Users \> Permissions] (../../../users/#permissions).

To add a patron info loan comment:

1.	Click **… > Add patron info** to add a patron info note.
2.	In the **Add patron information** dialog, enter a comment in the box.
3.	Click **Save and Close**. The new comment is saved and any previous patron loan comment is superseded. The comment will appear in the Comment column in Loan details in the checkout app, and will also be recorded in the Circulation Log.
4.	Patron info loan comments can also be added in Loan details -- see [Getting additional item information] (/#getting-additional-item-information).

To add a staff info loan comment:

1.	Click **… > Add staff info** to add a staff info note.
2.	In the **Add staff information** dialog, enter a comment in the box.
3.	Click **Save and Close**. The new comment is saved. The comment will appear in the Comment column in Loan details in the checkout app, and will also be recorded in the Circulation Log. Old staff info comments cannot be edited; add a new staff info comment instead.
4.	Staff info loan comments can also be added in Loan details -- see [Getting additional item information] (/#getting-additional-item-information).


## Ending the check out session

Once you have completed checking out items for a patron, you can end the session manually. To end your session and clear the Scanned Items table, click **End session**. Once you end the session, any applicable notices are sent to patrons.

By default, the Check out session is configured to end automatically after a 3 minute period of inactivity. You can turn this setting off or edit the number of minutes of inactivity the session will end after in the [Settings app]({{< ref "/settings_circulation.md#automatically-end-check-in-and-check-out-session-after-period-of-inactivity" >}}).
