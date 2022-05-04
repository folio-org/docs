---
title: "Fees and fines"
linkTitle: "Fees and fines"
weight: 10
description: >
  Note: This content is currently in draft status.
tags: ["subtopic"]
---

FOLIO allows libraries to charge fees and fines to patron library accounts. Charges can be for various reasons like room rentals; overdue return of a book; or replacing an item that the patron never returned. In FOLIO these are generally categorized together as **Fees and fines** or **Fees/fines**.

Libraries can charge fees/fines manually or automatically.

Automatic fines fall in three categories:

* Lost item fee
* Lost item processing fee
* Overdue fine

They are charged automatically by FOLIO when items are loaned and not returned on time, according to the loan’s overdue policy and lost item policy.

Manual fees/fines, by contrast, are set up as categories in Settings > Users. They can be used for a wide variety of library charges, such as replacing a damaged item, renting a facility, or paying for a borrower card. Manual charges are always connected to a specific patron; they may be connected to a library item, but they are not connected to a library loan.

## Fee/fine data structures

In FOLIO, fee/fine information is stored in two related objects: **accounts** and **actions**. 

An **account** is the parent object. When a fee/fine is charged, an **account** object is always created. 

An **action** is the child object where a transaction on an **account** is stored. 

One **account** will have one or more **actions** associated with it.

### Example: A patron does not return a book

Suppose Julia Smith is a patron at Normal University Library. She borrows a book and fails to return it to the library before it ages to lost.

When the item ages to lost, Julia is charged $100 as a **set cost** lost item fee, and $25 as a lost item processing fee.

The $100 replacement fee and $25 processing fee are each separate **accounts** charged to Julia.

Suppose that Julia can’t return the book and decides to pay for the item. She comes into the library and pays $50 in cash. For the $100 replacement fee, the library elects to waive $75 and accept $25 in payment. They apply the other $25 to pay her processing fee.

In FOLIO, the underlying account and action data would appear as follows.

**Account #1**: This represents the $100 charge to Julia as the set cost lost item fee. There would be three associated actions:

* Action 1 represents the initial charge to Julia, with an action type in the underlying data of “Outstanding.” The action type in the user interface displays as “Lost item fee.” At this point, the **account** has a status of “Open.”
* Action 2 represents Julia paying $25, with an action type of “Paid partially.”
* Action 3 represents the library waiving the remaining $75, with an action type of “Waived partially.” When Action 3 is applied, the status of the account becomes **Closed**. 

The Library could choose to waive the $75 first and then mark $25 as paid, in which case action 2 and action 3 would flip in order, but the result would still be the same - paying and closing the account, closing the loan, and changing the item status to **Lost and paid**.

**Account #2**: This represents the $25 processing fee, and it has two associated actions.

* Action 1 represents the $25 processing fee charge, with an action type of “Outstanding” in the underlying data. The action type in the User Interface would display as “Lost item processing fee.”
* Action 2 represents the library accepting $25 in cash to pay the fee, with an action type of “Paid fully.” When Action 2 is applied, the status of the account would become **Closed**.

## Fee/fine owners

In FOLIO, a fee/fine owner represents the agent or office that manages fines for FOLIO transactions. 

If you plan to charge any fines, you need to set up at least one fee/fine owner.  FOLIO does not require that a fee/fine owner represent a specific office or part of a library system. A fee/fine owner could represent an individual, a specific office, or a specific library.

Fee/fine owners are configured in [Settings > Users > Fee/fine > Owners]({{< ref "/Settings_users.md#settings--users--owners">}})

FOLIO libraries should configure a fee/fine owner for every service point in their FOLIO tenant, even if they don’t expect items attached to a particular service point to be loaned and generate fines. This is because if such a loan does occur, and no fee/fine owner is attached to the service point, the fine transaction will fail. Libraries may wish to create one fee/fine owner to attach those service points as a backup in case fine transactions occur.

### How are fee/fine owners connected to locations?

Most libraries want to collect overdue and lost fines according to an item's owning location, so FOLIO uses the item’s location to determine which fee/fine owner to link to the fine. FOLIO does this by looking up the primary service point for the item location, and then looking up the fee/fine owner for that service point.

For an overdue fine, FOLIO uses an item’s effective location to determine the fee/fine owner.

For a lost item fee or lost item processing fee, FOLIO uses the **item permanent location**  to determine the fee/fine owner. If the **item permanent location** is not set, FOLIO uses the **permanent holdings location** instead.

Fines always accrue this way **even if** an item’s location is not part of the circulation rule that was used for the loan that accrued a fine.

### Example: accruing lost item fines to fee/fine owners

Julia Smith wants to borrow a book that is on the shelf at the Science Library, for pickup at the Law Library. 

The book’s location information looks like this:

* **Item temporary location**: empty
* **Item permanent location**: empty
* **Holdings temporary location**: empty
* **Holdings permanent location**: “Science Library Stacks”
* **Item effective location**: “Science Library Stacks”

Julie borrows the book  from the Law Library service point and doesn’t return it.  The item ages to lost, with a $100 lost item fee and a $25 lost item processing fee.

When the item is aged to lost:

* FOLIO first checks the item record for an **item permanent location**. 
* Since that value isn’t set, FOLIO next checks the **holdings permanent location** and finds the value “Science Library Stacks.” 
* FOLIO then checks the location record for “Science Library Stacks” and finds that the location has a primary service point of “Science Library Desk”. 
* Finally, FOLIO checks the fee/fine owner records for the service point “Science Library Desk” and finds it connected to the fee/fine owner “Science and Engineering Business Office”.

FOLIO charges both the $100 lost item fee and the $25 lost item processing fee and associates them to “Science and Engineering Business Office” as the owner.

## Fee/fine notices
Notices function differently for fee/fines that are charged manually, versus fee/fines that are charged automatically.

### Manual fee/fine notices

For a manual fee/fine, you have two types of notices that you can use - the **charge** notice and the **action notice**.

You can create templates for both types of notices in Settings\>Circulation\>Patron Notices\>Patron notice templates. For a **charge** notice, choose the notice category “Manual fee/fine charge.” For an **action notice**, choose “Manual fee/fine action (pay, waive, refund, transfer, or cancel/error)”.

In Settings\>Users>Fee/fine\>Manual charges, you can select the appropriate fee/fine owner, and associate a charge notice and an action notice to that manual charge. You can select default charge and/or action notice templates for the owner, or specify different charge notice templates  for individual fee/fine types.

When you create a manual charge on a patron’s account, or apply an action to an existing charge, if there is an associated notice template, a checkbox option will allow you to choose if the patron should be notified. 

### Automatic fee/fine notices

Notices for automatic fee/fines are determined by the associated circulation rule. 

When the item is loaned, it has an associated notice policy, and within the notice policy, you can choose to send fee/fine notices when overdue fines or lost item fines are charged.

**Aged to lost** notices for long-term loans (loans with a time interval of days, weeks, or months) are sent on a per-charge basis and are not bunched into one single email. This can result in more notices being sent to a patron than desired.

For example, suppose a library has a policy where faculty can borrow books until the end of the academic year (defined with a fixed due date.) If the items age to lost, faculty are charged $100 to replace the book, plus a $25 processing fee. A faculty member borrows ten books that are all due at the end of the academic year and doesn’t return them. If the library uses the **Aged to lost** notice for those lost books, that faculty member would receive twenty separate emails - one for the replacement cost and one for the processing fee for each item.

While there are plans to change this so that lost item fine notices are sent in bulk, that development is not yet scheduled. 

Libraries that do not want to have the emails sent as individual notices can use the loan due date notice trigger as an alternative; loan due date notices can be triggered after the item was due. For example,  if an item is declared lost after 28 days, you could send a loan due date notice 27 days after the item was due, letting the patron know that the items are about to be declared lost, or send the notice at 29 days, letting them know the items have been declared lost. 

## How are overdue and overdue recall fee/fines calculated?

FOLIO’s fee/fine system is very dynamic and allows for many different configuration options of loan length and fee/fine settings. It can be helpful to know how the underlying logic works when FOLIO computes an overdue or overdue recall fine amount. 

Because you can define fine rates and loan lengths in different intervals - minutes, hours, days, weeks or months - FOLIO’s approach is to take the length of time an item was overdue, convert it to minutes, and then compare that date/time to the fine interval - also in minutes - to determine how to charge. This is fairly simple when a library charges fines for all hours, but can become much more complicated when charging fines only when an associated service point is open. .

Also note that FOLIO does not do these calculations until the overdue or overdue recalled item is returned. Some library systems offer a “running total” calculation for overdue fines, but FOLIO does not offer that feature.

### Example: A patron returns an overdue item at a 24/7 service point

Suppose a patron borrows an item that has a three hour loan period, with an overdue charge of $3/day. They borrow the item at 2 PM on September 1. The item is due back at 5 PM on September 1, but they don’t return it until 6 PM on September 2nd. 

The factors that are used in the overdue fine calculation include:

* The loaning service point calendar - in this example, suppose the service point is open 24/7
* The stated overdue charge, defined in the overdue policy - in this example, $3/day
* Whether there is a grace period for a late return, defined in the loan policy - in this example, suppose there is no grace period
* Whether they should charge the overdue fine during closed hours, defined in the overdue policy - in this example, suppose it is **Yes**

So, once the item is returned, FOLIO computes the overdue fine like this:

* The item was overdue by one day and one hour - 25 hours - which it then converts to minutes - 1500 minutes
* The fee/fine rate is $3/day. There are 1440 minutes in a day, so it’s $3/1440 minutes.
* FOLIO computes the number of time “units” that the item was overdue for - in this case, dividing 1500/1440 = ~1.07 “units” of overdue time. 
* FOLIO rounds the number of overdue time “units” up to the next integer - in this case, 2.
* FOLIO multiplies the number of overdue time “units” by the amount of the fine per interval - 3 - to get a total fine of $6.00

### Example: A patron returns an overdue item at a service point that closes overnight

Suppose a patron borrows an item that has a seven day loan period, with an overdue fine of $3/day. They borrow the item at 2 PM on May 1st. The item is due back at 11:59:59 PM on May 8th. The patron returns the item at 2 PM on May 11th.

The factors that are used in the overdue fine calculation include:

* The loaning service point calendar - in this example, suppose the service point is open 8 AM to midnight from May 1st to May 11th.
* The stated overdue charge, defined in the overdue policy - in this example, $3/day
* Whether there is a grace period for a late return, defined in the loan policy - in this example, a grace period of one day. 
* Whether they should charge the overdue fine during closed hours, defined in the overdue policy - in this example,that option is set to **No**.

So, once the item is returned, FOLIO computes the overdue fine like this:

* The item was overdue by 2 days and 14 hours strictly looking at the calendar. That is 62 hours, which is 3720 minutes.
* There is a grace period, but because the grace period is one day  / 1440 minutes, and the item was returned after the grace period, the grace period does not factor into the calculation.
* FOLIO sees that the overdue policy says to not charge overdue fines during closed hours. The associated loaning service point calendar shows it closed from midnight to 8 AM on three relevant days - the morning of the 9th, 10th, and 11th. The closed period is 8 hours each day - so 24 hours total, or 1440 minutes.
* FOLIO subtracts the closed minutes from the total overdue period - 3720 - 1440 = 2280 minutes. That is the amount of overdue time FOLIO will charge for.
* The fine rate is $3/day, or $3/1440 minutes. FOLIO computes the number of time “units” the item was overdue for - 2280/1440 = ~1.58 “units” of overdue time.
* FOLIO rounds that up to the next integer - 2 - and charges for 2 intervals. So it would be 2 * 3 = 6, for a $6 fine.

It is important to notice that the patron was charged for 2 days even though the item was returned on the 3rd day after it became overdue. 

There is development planned to better handle calculating fines for closed periods, but it is not currently scheduled.

## What happens to a loan when the fine is resolved?

When an item is declared lost, or an item ages to lost, the associated loan remains open.

If the item is returned, and all associated fees/fines are removed, the loan is closed and the item’s status changes to either “Available” or “In Transit”, depending on where it was returned.

If the library resolves all fees/fines via payment, cancellation, or waiving, FOLIO automatically closes the fee/fine, closes the loan,, and changes the item’s status to **Lost and paid**.

## What happens to a fine if the item record is deleted?

An item can be deleted even if an unpaid fee/fine is attached to the item record. This is a known issue, but development to address this has not yet been scheduled.

If an item is deleted, the underlying account record will remain. Deleting an item does not delete a fee/fine, and the fine record includes some item information stored directly, such as title, barcode, and item effective location. However, you will not be able to see the fine in the FOLIO user interface; instead you will see an error message.

Because of this issue, we recommend that libraries do not delete items with attached fees/fines. Checking for attached records can be done with a reporting or API query tool. 

If you are using an API tool like Postman, a query like this will work, sent to your tenant instance of Okapi:

GET /accounts?query=itemId=="\[Insert item UUID\]"&limit=1000

## Lost items - charging set cost versus actual cost

FOLIO defines two types of automated fine charging: **Set cost** and **Actual cost**. 

Although settings for both **Set cost** and **Actual cost** are visible in the lost item policy screen, only **Set cost** is implemented in the Kiwi version of FOLIO.

For **Set cost** charges, libraries specify a standard charge for a lost item in the associated lost item policy, and FOLIO charges the patron that amount  when the item is declared lost or ages to lost.

For **Actual cost** charges, the FOLIO project plans to implement a screen where libraries can review and specify the amount for individual items that have aged to lost. 

Libraries that need **Actual cost** functionality prior to implementation in FOLIO can apply a set cost and then manually review charged fee/fines to adjust them to an actual cost. This requires manual intervention with each fee/fine charge.

## Timing considerations for when an item ages to lost

FOLIO uses a system-managed process to age an item to a lost status and apply any associated charges. The process has two pieces to it. The first is a process that moves the item status from **Checked out** to **Aged to lost**. The second process applies any associated fees/fines. 

By default, FOLIO runs the **Aged to lost** process every thirty minutes, and the fines process five minutes later. Hosting providers may choose to change this schedule to meet a specific library’s needs. 

Here is how aging an item to lost might look in practice.

### Example: A long-term loan ages to lost

Consider the following scenario:

* A patron borrowed a book and never returned it.
* The loan had a due date of May 1, 2022. Because the item has a fixed due date, the actual due date/time is May 1, 2022 at 11:59 PM.
* The associated lost item policy says that the item ages to lost after 28 days. When that happens, the patron is charged a $100 set lost item fee, with no lost processing fee.

The "aged to lost" time counter would begin on May 2nd. The 28-day overdue period would end on May 29th at 11:59 PM

* After 5/29 at 11:59 PM has passed, the next run of the **Aged to lost** process will change the item status to **Aged to lost**.
* After the item status changes to **Aged to lost**, the next run of the fine process will charge any associated fines. 

The timing might look something like this:

* May 29th 11:59 PM - the age of the loan goes past the overdue time frame and becomes eligible to be aged to lost
* May 30th 12:00 AM - the **Aged to lost** process begins and changes the item status to **Aged to lost**
* May 30th 12:05 AM - the **Aged to lost** fee charging process begins, takes in the aged-to-lost loan information, and applies the $100 charge to the borrower’s library account

Both steps of this process can take time to run, so if you have a large number of loans waiting to be aged to lost, the timing on this may not be exact, and it may take longer to see all of the loans be processed. Delays depend on the number of loans your library has to process.

### Example: A short-term loan goes lost

Suppose a patron borrows a laptop charger with a four hour loan time. They borrow the item at 2:05 PM, and it’s due at 6:05 PM. The library has a lost loan policy for chargers that says that you must bring it back within three hours of the due date/time or it will be declared lost, and the borrower will be charged $75.

If the patron doesn’t return the charger, it would be eligible to be aged to lost at 9:05 PM. The timing might look something like this:

* 9:00 PM - the **Aged to lost** begins, but there are no loans to process.
* 9:05 PM - the charger goes past the lost time frame and is able to be aged to lost
* 9:05 PM - the **Aged to lost** fee charging process begins, but there are no loans to process
* 9:30 PM - the **Aged to lost** process begins and changes the item status to aged to lost
* 9:35 PM - the **Aged to lost** fee charging process begins, takes in the aged to lost loan information, and applies the $75 charge.

So functionally that means that there is a time period between 9:05 PM and 9:35 PM (at the earliest) where an item may be past the expected time frame but still look like it is only overdue, or look like it has aged to lost but without the expected lost item fee.
