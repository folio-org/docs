---
title: "Loans"
linkTitle: "Loans"
weight: 20
description: >
tags: ["subtopic"]
---

Library staff manage patron loans in FOLIO through three primary apps - Check in, Check out, and Users. Staff also can view information about loans in the Circulation log and Inventory apps.

The terms of a loan - who can borrow, how long they can borrow the item for, whether it can be renewed, what notices patrons receive, and whether any charges are accrued if the item is late - are determined by the circulation rule that is applied when the item is loaned, renewed, or has a due date change.

## Loans data structure

In FOLIO, a loan object contains specific information that supports circulation functions and reporting.

* **userId**. The UUID of the patron who borrowed the item. If the loan is closed and anonymized, the userId is removed from the loan record.
* **proxyUserId**. If the item is borrowed by someone on behalf of another borrower using FOLIO’s proxy function, the proxy’s UUID is stored 
* **itemId**. This is the inventory UUID of the item that was loaned.
* **itemEffectiveLocationIdAtCheckOut**. This is the effective location of the item when it was checked out. 
* **status**. This is the status of the loan - usually **open** or **closed**.
* **loanDate**. This is the date/time the item was loaned.
* **dueDate** : This is the date/time that the item is due back. This date can change if the item is successfully renewed, or if a FOLIO user changes the loan due date.
* **returnDate** : If the item has been returned, this is the return date/time. Returning the item may or may not change the loan status to **closed** - it depends on whether a fee/fine was charged.
* **systemReturnDate** : If the return was back-dated, the return date is the backdated date/time, and the systemReturnDate is the actual date/time the item was returned in the **Check in** app. .
* **action** : This is the last action performed on a loan - values include declaredLost, renewed, renewedThroughOverride, checkedin, checkedout, checkedOutThroughOverride, recallrequested, holdrequested, claimedReturned, markedMissing, closedLoan.itemAgedToLost, dueDateChanged, checkedInReturnedByPatron, checkedInFoundByLibrary
* **itemStatus**: This is the last item status in relation to this loan. This may or may not be the item’s current status in Inventory. For example, if a loan has been checked back in and put in transit back to its home location, the loan itemStatus field is **In transit**, but the item in Inventory may be **Checked out** if the item has since been loaned to another patron.
* **renewalCount**: This is the number of times the loan has been renewed.
* **loanPolicyId**: This is the UUID for the applicable loan policy. 
* **checkoutServicePointId** : This is the UUID of the service point where the FOLIO user was logged in when the item was loaned to the patron.
* **checkinServicePointId** : if the item has been returned, this is the UUID of the service point where the FOLIO user who returned the item was logged in. 
* **patronGroupIdAtCheckout**: This is the UUID of the patron’s group at the time of checkout. 
* **dueDateChangedByRecall**: This is a true/false value indicating if the item’s due date has been changed by a recall for another patron.
* **declaredLostDate**: If the loan is declared lost, the date of that declaration is stored in this attribute.
* **claimedReturnedDate**: If the loan has been marked claim returned, the date it was marked claimed returned is stored in this attribute.
* **overdueFinePolicyId**: This is the UUID for the associated overdue fine policy, assigned when the loan is created. It is not updated when the loan is renewed.
* **lostItemPolicyId**: This is the UUID for the associated lost item policy, assigned when the loan is created. It is not updated when the loan is renewed.
* **agedToLostDelayedBilling**: FOLIO declares an item lost, and then bills the patron, in separate processes. These attributes on the loan object support that process. 


## What does FOLIO consider a short-term loan? What is considered a long-term loan?

FOLIO treats loan activity differently depending on whether it is a short-term or a long-term loan. The distinction depends on the time interval of the loan. 

* If an item is loaned for **minutes** or **hours**, the loan is a **short-term loan**. 
* If an item is loaned for **days**, **weeks**, or **months**, the loan is a **long-term loan**.

Differences between the two types of loans include: 

* The time a loan is due. A short-term loan sets its due date based on the loan date/time and the loan policy; a long-term loan sets its due date based on the loan policy and the loan date, but the due time is always 11:59 PM. 
    * For example: suppose a patron borrows an item from a service point open 9 AM to 10 PM seven days a week. If they borrow the item at 11 AM on April 1st, and the loan policy says they can borrow it for 48 hours, it will be due at 11 AM on April 3rd. But, if the loan policy said they could borrow the item for 2 days, it would be instead be due at 11:59 PM on April 3rd, even though the service point is closed.

* How notices are delivered. Notices for short-term loans are always delivered in real time. Most notices for long-term loans are also delivered in real-time, **except for** notices triggered by **Loan due date/time**. Those notices must use the **multiple items** tokens and are processed overnight (beginning at 11:59 PM).

## <a id="loanrenew"></a>When a loan is renewed, or a loan due date is changed, what circulation rule applies and what policies are used?

When a patron or FOLIO user requests to renew a loan, or a FOLIO user changes a loan’s due date, FOLIO reviews the circulation rule file and may do several things, depending on what it finds (and not necessarily in the order listed below.)

* FOLIO checks to see if the patron is blocked from renewal (either manually or automatically). If they are not blocked, the process can continue.
* FOLIO checks the patron record to make sure the record is not inactive or expired. If they are not inactive or expired, the process can continue.
* FOLIO will find the loan policy that applies and use that policy to determine if or how the loan can be changed. If the circulation rule file hasn’t changed, and the patron and item information hasn’t changed, FOLIO will retrieve and apply the same loan policy used the last time the loan was created or updated. 
* No request policy updates occur, because request policies aren’t stored on the loan. Since request policies only apply before the loan is created, there is no reason to keep a reference on the loan record. 
* FOLIO will **not** update the associated overdue policy and lost item policy, because it could cause the patron to be liable for more money than they had expected when they first borrowed the item.
* FOLIO **will** update scheduled notices. The notice policy UUID is not stored on the loan. Instead, FOLIO reads the applicable notice policy from the circulation rule, removes the previous notices, and then creates the appropriate notices to run on the new dates. 
* FOLIO **will** create an entry in the circulation log to show that the item was renewed, or that the due date changed.

### Example: An undergraduate becomes a graduate student

Suppose Sofia Cruz is an undergraduate at Main University. 

Main University has a circulation rule file that has different rules for patron groups. Main allows undergraduates to borrow books for 28 days with unlimited renewals, and allows graduate students to borrow books for 90 days with unlimited renewals. Two circulation rules in FOLIO make that happen:

    g undergrad: l 28-day-loan r hold-only n standard-notice o standard-overdue i standard-lost
    g grad-student: l 90-day-loan r allow-all n standard-notice o standard-overdue i standard-lost

Sofia’s FOLIO account has a user group of `undergrad’, so the first line in this rule applies. They are able to borrow books for a 28 day rolling loan with unlimited renewals.

Suppose Sofia borrows several books in February and continues to use them, so they continue renewing their loans. Over the summer, they start a graduate program at Main University, and the patron group on their FOLIO record changes from `undergrad’ to `grad-student’.

The next time Sofia renews their books, the **second line** of the circulation rule file applies:

    g grad-student: l 90-day-loan r allow-all n standard-notice o standard-overdue i standard-lost

This is what FOLIO does when renewing Sofia’s items:

* FOLIO checks the circulation rule file and determines that it should use the circ rule line that begins `g grad-student …`
* FOLIO updates the loan policy UUID stored on Sofia’s loans to the UUID for the policy `90-day-loan` and gives Sofia the new, 90-day rolling loan period.
* There is no request policy stored on the loan record, so nothing changes there.
* The overdue policy ID and lost item policy ID **are** stored on the loan record, but they are **not** updated when the loan is renewed or has the due date changed. That’s because a new overdue or lost item policy could potentially mean the patron owed more money than they were expecting if the item became overdue or aged to lost.
* FOLIO reads in the notice policy from the circ rule. FOLIO then creates the scheduled notices in the notice database according to the policy and deletes previously scheduled notices that now don't need to be sent. 

## What happens w/circulation rules and policies if you change item information after an item is loaned (e.g., change a loan type for an item that is checked out)?

If you change information about an item that is currently on loan, nothing happens to the loan record. The loan **may** change if the item is renewed or if the loan due date is changed, and the change in the item information means a different circulation rule applies. See [When a loan is renewed, or a loan due date is changed, what circulation rule applies and what policies are used?](#loanrenew)

## What happens in FOLIO when an item is checked in?

When an item is checked in in FOLIO, the following steps happen (not necessarily in this order.)

* FOLIO checks the item status.
* If an item has a status of **Available**, FOLIO will count it as in-house use.
* If an item has a status of **In transit**, FOLIO will check the logged-in service point to see if it is the primary service point for the item's effective location. If the logged-in service point does not match, the item status remains **In transit**. If the logged-in service point does match, FOLIO changes the item status to **Available



* FOLIO checks the loan policy, overdue policy and lost item policy to determine in any actions need to be taken.
* If the item is determined to be overdue but has not been recalled, FOLIO calculates overdue fines based on the associated policy, and applies them to the patron's account if the fine is greater than zero.
* If the item is recalled and overdue, FOLIO calculates overdue recall fines based on the associated policy, and applies them to the patron's account if the fine is greater than zero.
* If an item status is **Declared lost** or **Aged to lost**, FOLIO presents a warning message, and staff must choose the option to continue check in.
** When check in proceeds, FOLIO then references the lost item policy to determine if any fees should be credited back to the patron, and applies them to the patron's account.
* If the associated notice policy to the loan says that any fee/fine notices should be sent, those notices are generated and sent.



* If an item has a status of **Checked out**, **Declared lost**, or **Aged to lost**:
** If an item is **Declared lost** or **Aged to lost**, FOLIO presents a warning message and staff members must select from the prompt to continue check in.

## What happens if/when you delete a circulation policy?

### Loan policy

You are prevented from deleting a loan policy through Settings \> Circulation \> Loan Policies if there are open loans associated with the loan policy.

### Request policy

You can delete a request policy that is part of circulation rules. If you do so, and then go review your circulation rules, you’ll see that any rule that referenced the request policy will still be in the file, but the request policy will be listed with the policy UUID rather than the policy name.

Request policies are only referenced when a request is placed, and are not stored on a subsequent loan, so they are fairly simple to delete, with the recommendation that you review your circ rules first. 

For example, suppose you need to delete the request policy **allow-all**. The recommendation is to review your existing circulation rules and replace any references to **allow-all** with another request policy. Once you’ve done that, you can delete ‘allow-all’ from Settings \> Circulation \> Request Policies.

### Notice policy

You can delete a notice policy that is part of circulation rules. If you do so, and then go review your circulation rules, you’ll see that any rule that referenced the notice policy will still be in the file, but the notice policy will be listed with the policy UUID rather than the policy name.

Notice policies are only referenced when a loan is created, renewed, or a due-date is changed. They are fairly simple to delete, with the recommendation that you remove references to them in your circulation rules first.

For example, suppose you need to delete the notice policy **faculty-semester-notice**. First, you would review your circulation rules and update any references to **faculty-semester-notice** with another notice policy. Once you’ve done that, you can delete **faculty-semester-notice** from Settings \> Circulation \> Notice policies.

### Overdue policy

You are prevented from deleting an overdue fine policy through Settings \> Circulation \> Fee/Fine if there are open loans associated with the policy.

### Lost item policy

You are prevented from deleting a lost item policy through Settings \> Circulation \> Fee/Fine if there are open loans associated with the policy.

## What happens if/when you delete a circulation rule?

If you remove a circulation rule from your circulation rule file, nothing happens to existing loans that used that circulation rule.

If a user tries to renew a loan that would have been renewed with the circulation rule that was removed from the file, FOLIO will review the circ rules for another matching rule. If it does not find at least one other matching rule remaining in the file, it will use the fallback rule.

## How does FOLIO work with self-check stations?

FOLIO supports SIP2, an industry standard protocol for connecting self-service stations to library systems. 

Patron self-service systems can connect to FOLIO with SIP2 using FOLIO’s SIP2 edge module. Setting this up generally requires working with your FOLIO administrator and/or hosting provider. 

More information on SIP2 configuration can be found in the edge module documentation in Github - [https://github.com/folio-org/edge-sip2](https://github.com/folio-org/edge-sip2)

## Common errors when loaning items

### Error message: “Calendar timetable is absent for requested date”

When an item is loaned, FOLIO needs to be able to calculate the item’s due date. It uses information from the patron record, the loan policy, and the calendar for the service point where the library staff member is logged in.

The error message “Calendar timetable is absent for requested date” means that FOLIO can’t find calendar information up to and including the calculated due date of the item. 

The first troubleshooting step is to review the calendar for the service point in Settings \> Calendar to ensure that you have provided a calendar for the length of time necessary.

This error message can be confusing when you consider how due dates are truncated to a user’s expiration date. Suppose you have the following scenario:

* A patron comes to the desk on July 1 and wants to borrow an item; 
* According to the circulation rules, the patron should get a due date of December 15th. However, the patron’s user account is set to expire on August 15th, so they can only borrow the book until August 14th.
* The calendar for the service point where the check out is occurring has dates inputted until September 1.

The calculated due date of August 14th is inclusive of the calendar information stored in FOLIO. However, the checkout *will still fail* with “Calendar timetable is absent for requested date.” 

That is because FOLIO first calculates the due date without considering the patron expiration, and then checks the patron expiration date to see if the item should be due sooner. So because there is no calendar information extending out to December 15th, FOLIO can’t do the full calculation and presents an error. 

