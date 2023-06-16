---
title: "Settings > Circulation"
linkTitle: "Circulation"
date: 2022-03-21
weight: 40
tags: ["subtopic"]   
---

The Circulation section of the Settings app is where you establish your loan policies, lost item policies, overdue policies, notices, and other circulation configurations.


## Permissions

Each setting within Circulation has its own permission associated with it. If a user has one of the below permissions assigned to their user record, they will be able to view and interact with that particular setting. You can assign permissions to users in the Users app.

The following are all the Circulation Settings permissions presented in the order the configurations appear in the Settings app:


* **Settings (Circ): Can create, edit and remove circulation rules.** This permission allows the user to create, read, update, and delete circulation rules.
* **Settings (Circ): Can create, edit and remove other settings.** This permission allows the user to create, read, update, and delete other settings.
* **Settings (Circ): Can create, edit and remove staff slips.** This permission allows the user to create, read, update, and delete staff slips.
* **Settings (Circ): Can create, edit and remove fixed due date schedules.** This permission allows the user to create, read, update, and delete fixed due date schedules.
* **Settings (Circ): Can view loan history.** This permission allows the user to view loan history settings.
* **Settings (Circ): Can create, edit and remove loan policies.** This permission allows the user to create, read, update, and delete loan policies.
* **Settings (Circ): Can create, edit and remove overdue fine policies.** This permission allows the user to create, read, update, and delete overdue fine policies.
* **Settings (Circ): Can create, edit and remove lost item fee policies.** This permission allows the user to create, read, update, and delete lost item fee policies.
* **Settings (Circ): Can create, edit and remove notice policies.** This permission allows the user to create, read, update, and delete patron notice policies.
* **Settings (Circ): Can create, edit and remove patron notice templates.** This permission allows the user to create, read, update, and delete patron notice templates.
* **Settings (Circ): Can create, edit and remove cancellation reasons.** This permission allows the user to create, read, update, and delete request cancellation reasons.
* **Settings (Circ): Can create, edit and remove request policies.** This permission allows the user to create, read, update, and delete request policies.
* **Settings (Circ): Can view loan history.** This permission allows the user to view Settings > Circulation > Loan History, but not make changes.
* **Settings (Circ): Can view loan policies.** This permission allows the user to view loan policies, but tnot make changes.
* **Settings (Circ): Can view lost item fee policies.** This permission allows the user to view lost item fee policies, but not make changes.
* **Settings (Circ): Can view overdue fine policies.** This permission allows the user to view overdue fine policies, but not make changes.
* **Settings (Circulation): Title level request edit.** This permissions allows the user to enable title level requests and change related settings.



## Settings > Circulation > Circulation rules

Libraries can use circulation rules to determine how their items circulate. Circulation rules follow FOLIO specific criteria and logic. Each circulation rule is made up of one or more criteria and the policies to be associated with those criteria. When a defined set of criteria matches a circulation action, the policies that are attached to that criteria are then applied. The guidelines for constructing circulation rules are found in the [FOLIO GitHub Circulation rules documentation](https://github.com/folio-org/mod-circulation/blob/master/doc/circulationrules.md).

You can write circulation rules to determine the following:

* The groups of patrons that can borrow items.
* The rules for items in different locations, libraries, campuses, or institutions.
* The types of items (material types or loan types) that can be borrowed.
* How many of a particular type of item that can be borrowed.
* The notices that are sent to patrons.
* The fines and fees that are charged.


###  Implementing Circulation rules

Before you implement Circulation rules, you need to configure these settings in FOLIO:

* Patron groups
* Locations
* Library calendar
* Loan types
* Material types
* Loan policies
* Overdue fine policies
* Lost item fee policies
* Patron notice policies
* Request policies

Before you begin to write your circulation rules, you should complete the following:

* Read the [FOLIO GitHub Circulation rules documentation](https://github.com/folio-org/mod-circulation/blob/master/doc/circulationrules.md).
* Determine if you want to use automated item blocks. If so, follow the [Automated Item Block guidelines](https://wiki.folio.org/display/FOLIOtips/Implementing+Automated+Item+Blocks).


### Creating circulation rules

Add your circulation rules to the Circulation rules editor. The editor contains responsive features to help write the rules. For example, typing a criteria letter displays the options for the criteria value, which you can select from the drop-down list that appears. Click **Save** once you have completed adding your circulation rules.


#### Circulation rule tips

When writing your circulation rules, keep the following in mind:

* You can use comments in the rules editor. Enter a **#** or **/** to add a comment line.
* When adding a criteria in the location tree, the Editor will provide a tool to allow you to pick from the location hierarchy, and then pull in the code value for you.
* Rules can be written in a nested format to make them easier to read.
* You can use keywords to match on all or none for a particular criteria.
* You can specify priority order for criteria if more than one rule matches.


## Settings > Circulation > Other settings


###  Patron id(s) for checkout scanning

This setting allows you to specify what types of patron IDs can be scanned to checkout items. All fields correspond to fields in the user record.

At least one of the options must be selected:

* **Barcode.**
* **External system id.**
* **FOLIO record number.**
* **Username.**
* **User custom fields.**

If you choose **User custom fields**, you can then select one or more custom fields that the Check out app would include when searching for patron records. Custom fields must be configured in Settings > Users before they can be selected here.

###  Automatically end check in and check out session after period of inactivity

This setting is turned on by default with an inactivity period of 3 minutes.

1. Select the **Automatically end check in and check out session after period of inactivity** checkbox to turn the setting on.
2. Enter the number of minutes of inactivity after which the session should end.
3. Click **Save**.


### Enable audio alerts

Audio alerts can be turned on to signal to library staff when a checkout is successful or fails. This setting is turned off by default.

To enable audio alerts, select **Yes** from the drop-down list.


### Perform wildcard lookup of items by barcode in circulation apps (Check in, Check out)

Some libraries may want to use FOLIO and support circulating items that have the same barcode. They may be migrating to FOLIO from a prior system that allowed duplicate barcodes, or they may need to support consortial lending.

The inventory app requires barcodes to be unique, so libraries who have this scenario need to append a string to the barcode to make it unique without changing the physical barcode on the item. The library then needs the Check in and Check out app to be able to understand what to do if they search for the physical barcode on the item and it's possible to retrieve more than one record.

If your library could potentially encounter duplicate barcodes as described, you can check this box to enable the Check in and Check out apps to use a wildcard search for item barcodes and present a modal if duplicate barcodes are found, so library staff can select the correct item.

## Settings > Circulation > Staff slips

Staff slips allow you to configure the information that appears on your staff slips. You have the option of printing these slips when their associated action occurs:

* **Hold.** This slip is available through the Check in app, when you check in an item with a request.
* **Pick slip.** This slip is available in the Requests app, when you generate the pick slip report.
* **Request delivery.** This slip is available in the Check in app, when you check in an item with a delivery request.
* **Transit.** This slip is available in the Check in app, when you check in an item that is in transit to another location.


### Configuring a staff slip

1. In the **Staff slips** pane, select the staff slip you want to configure.
2. In the **staff slip details** pane, click **Edit**.
3. Optional: In the **staff slip** window, enter a **Description** in the box.
4. Use the Display box to edit the slip. Click **{ }** to add tokens to the slip. Tokens fill in item or user information based on the selected variables related to the slip event.
5. Optional: Click **Preview** to view a preview of the slip.
6. Click **Save & close**. The slip is saved and updated.


### Previewing a staff slip

1. In the **Staff slips** pane, select the staff slip you want to preview.
2. In the **staff slip details** pane, click **Preview**. A Preview of staff slip - [slip type] window appears and the preview is shown.
3. Optional: To print the preview, click **Print**.
4. To close the window, click **Close**.


## Settings > Circulation > Fixed due date schedules

Fixed due date schedules are used in Loan policies when you want to have a loan period with a specific end date.


### Creating a fixed due date schedule

1. In the **Fixed due date schedules** pane, click **New**.
2. In the **Create fixed due date schedule** window, enter a **Fixed due date schedule name**.
3. Optional: Enter a **Description** in the box.
4. In the **Schedule** section, enter a date range for the fixed due date by selecting dates in the **Date from** and **Date to** boxes. This is the time range during which the fixed due date is applied.
5. Enter the **Due date** that applies to all materials checked out during the time range you selected above.
6. Optional: To create additional date ranges, click **New** and repeat steps 4 and 5. If you need to delete a date range, click the **trash can icon**.
7. Once you are finished creating your schedule, click **Save & close**. The fixed due date schedule is saved and appears in the Fixed due date schedule pane.


### Edit a fixed due date schedule

1. In the **Fixed due date schedules** pane, select the fixed due date schedule you want to edit.
2. In the **fixed due date schedule details** pane, click **Edit**.
3. Edit the fixed due date schedule.
4. Click **Save & close**. The fixed due date schedule is updated.


### Delete a fixed due date schedule

1. In the **Fixed due date schedules** pane, select the fixed due date schedule you want to delete.
2. In the **Fixed due date schedule details** pane, click **Edit**.
3. In the **Edit** window, click **Delete**.
4. In the **Delete fixed due date schedule** dialog, click **Delete**. The fixed due date schedule is deleted and a confirmation message appears.


## Settings > Circulation > Loan history

Loan history allows you to anonymize closed loans. When closed loans are anonymized, all related patron information is removed from the loan, but the action will still appear in the Circulation log.


### Closed loans


#### Anonymize closed loans

Select one of the following options to determine if closed loans are anonymized:

* Immediately after loan closes. The anonymization process begins after the session is closed. Immediate anonymizing of loans runs on a schedule that can be determined by your system administrator or hosting provider.
* In a certain amount of time after the loan closes. Use the boxes to select the interval of time.
* Never.


#### Treat closed loans with associated fee/fines differently

If you want to treat loans with fee/fines differently, select **Treat closed loans with associated fee/fines differently**. The Closed loans with associated fees/fines section appears once the checkbox is selected. If the checkbox is cleared, then closed loans with associated fees/fines are treated according to the option you selected in Closed loans.


### Closed loans with associated fees/fines


#### Anonymize closed loans

Select one of the following options to determine if closed loans with associated fees/fines are anonymized:

* Immediately after loan closes.
* In a certain amount of time after fee/fine closes. Use the boxes to select the interval of time.
* Never.


#### Exception for payment method

If you want to create exceptions for closed loans with associated fee/fines paid off using a certain payment method, follow these steps:

1. Click **Add exception** to add an exception for a payment method.
2. Select the **Payment method**.
3. Select when you want to anonymize loans paid off with the payment method.
4. Optional: Click **Add exception** to create additional exceptions. If you need to delete an exception, click the **trash can icon**.
5. Click **Save**. The loan history settings are saved and a confirmation message appears.


## Settings > Circulation > Loan policies

Loan policies determine how an item is treated if it is checked out, renewed, or requested. Loan policies include a wide variety of configuration options and are used in Circulation rules.

Loan policy behavior differs depending on the unit of time used for the loan period. If an item is checked out for minutes or hours, the loan is considered “short term.” If an item is checked out for days, weeks or months, the loan is considered “long term.”

### Implementation considerations

You may find it beneficial to consider your current loan policies and lending rules and write policies to reflect your library’s typical loan behaviors. Loan policies are reusable in circulation rules, so you do not need to create multiples of the same type of policies to be applied to different patron groups, for example.

Before you begin configuring your loan policies, make sure you have set up your Fixed due date schedules, if you will be using schedules in your policies.

After you create your loan policies, you should test them to make sure they function as expected.


### Creating a new loan policy

1. In the **Loan policies** pane, click **New**.
2. In the **Create loan policy** window, enter a **Policy name **in the box.
3. Optional: Enter a **Policy description** in the box.
4. Use the information in the following sections to help guide you in creating loan policies. Different fields are available depending on the options you select in the policy.
5. Click **Save & close**. The policy is saved and added to the Loan policies list.


#### Loans

**Loanable.** To create a non-circulating loan policy, clear the checkbox. Clearing the checkbox causes all other fields to disappear. Since loan policies are reusable, you only need to create one non-circulating policy.

**Loan profile.** Select the type of loan profile. Depending on your selection, you will see different fields.

* Select **Fixed** if items loaned out during a certain period of time are to have a fixed end date. For example, use this for items loaned until the end of the semester.
* Select **Rolling** if loans are for a defined period of time, including short term loans. For example, use this for items loaned for 28 days.

Depending on your selection for Loan Profile, you see different fields.

If you selected **Fixed**, you will see the following fields:

**Fixed due date schedule.** Select a fixed due date schedule, as configured in Settings > Circulation > Fixed due date schedules. The selected schedule determines the due date for the item. Note: Fixed due dates are only applicable for loans longer than 24 hours, and the due date/time is automatically set to 11:59 pm on the due date.

**Closed library due date management.** Select when the item is due if an item’s calculated due date lands in closed hours for the service point.
* If an item’s loaned interval is in **minutes** or **hours**, the due date will follow the choice given in the loan policy.
* If an item’s loaned interval is in **days**, **weeks**, or **months**, the due date will follow the choice given in the loan policy *only* in the case that the service point is completely closed on the day that the item would be due. When the loan is created, FOLIO will check the service point calendar; if the service point is open for any time on the day that the item is due, FOLIO will set the due time to 11:59 PM on that day.


**Grace period.** Enter a grace period for overdue items. If you select a grace period, the item is not overdue until after the loan due date/time plus the grace period interval. If the grace period expires and the item has not been returned, the grace period will count towards calculating an overdue or lost fee/fine. Adding a grace period to a due date follows the same logic that you chose for closed library due date management, if the grace period lands in a closed time for the service point.

**Item limit.** Enter an item limit for items borrowed under this policy.

If you selected **Rolling**, you will see the following fields:

**Loan period.** Select an amount of time for the loan period.

**Fixed due date schedule (due date limit).** Select a fixed due date schedule, as configured in Settings > Circulation > Fixed due date schedules. The schedule is used to enforce a stop point on continuing renewals. For example, you may allow students to renew items every four weeks, but want renewals to stop at the end of the semester.

**Closed library due date management.** Select when the item is due if an item’s calculated due date lands in closed hours for the service point.
* If an item’s loaned interval is in **minutes** or **hours**, the due date will follow the choice given in the loan policy.
* If an item’s loaned interval is in **days**, **weeks**, or **months**, the due date will follow the choice given in the loan policy *only* in the case that the service point is completely closed on the day that the item would be due. When the loan is created, FOLIO will check the service point calendar; if the service point is open for any time on the day that the item is due, FOLIO will set the due time to 11:59 PM on that day.


**Grace period.** Enter a grace period for overdue items. If you choose to have a grace period, the item is not overdue until after the loan due date/time plus the grace period interval.  If the grace period expires and the item has not been returned, the grace period will count towards calculating an overdue or lost fee/fine. Adding a grace period to a due date follows the same logic that you chose for closed library due date management if the grace period lands in a closed time for the service point.

**Item limit.** Enter an item limit for items borrowed under this policy.

#### Renewals

**Renewable.** If you do not want to allow renewals under this policy, clear the checkbox. Clearing the checkbox causes all other fields to disappear and items are not renewable.

**Unlimited renewals.** Select the checkbox if you want to allow unlimited renewals.

**Number of renewals allowed.** If you have not selected **Unlimited renewals**, enter the number of renewals allowed.

**Renew from.** Select whether a renewed item is renewed from the **Current due date** or **System date,** the date the item is renewed on.

**Renewal period different from original loan.** Select the checkbox if you want renewed items to have a different loan period than the original loan period. If selected, the next two options appear.

**Alternate loan period for renewals.** Enter the alternate loan period for renewals.

**Alternate fixed due date schedule (due date limit) for renewals.** Select a fixed due date schedule, as configured in Settings > Circulation > Fixed due date schedules. The schedule is used to enforce a stop point on continuing renewals.


#### Request management

Determine whether you want to allow recalls and/or holds.

All of the fields in this section are optional. If you leave them blank, the recall return interval and minimum guaranteed loan period default to zero.

##### Recalls

**Recall return interval.** Enter an amount of time for the recall return interval. This is the period of time the patron has to return a recalled item before it becomes overdue.

**Minimum guaranteed loan period for recalled items.** Enter an amount of time for the minimum guaranteed loan period for recalled items. If you allow an item to be recalled, but do not have a minimum guaranteed loan period, the recall return interval effectively becomes the minimum guaranteed loan period for recalled items.

**Allow recalls to extend due dates for overdue loans.** Checking this box ensures that if an item is overdue, and is then recalled, that patrons aren’t suddenly assessed unexpected recall fines when they had been expecting that the item was simply overdue.


##### Holds

**Alternate loan period at checkout for items with an active, pending hold request** To shorten a loan period for an item that has a request queue, enter an amount of time. If an item is checked out and has no queue, the regular loan period is applied.

**Allow renewal of items with an active, pending hold request.** If you want to allow renewals on a checked out item that has hold requests, select the check box. When renewals are allowed, patrons can continue to renew the item based on the settings in the Renewals section.

**Alternate loan period at renewal for items with an active, pending hold request.** If you allow renewals on items with an active, pending hold request, and want to shorten the renewal loan period, enter an amount of time.


### Duplicating a loan policy

1. In the **Loan policies** pane, select the loan policy you want to duplicate.
2. In the **loan policy details** pane, click **Actions > Duplicate**. A Create loan policy window appears with the same loan information as the policy you chose to duplicate.
3. Edit any of the loan information before saving the policy.
4. Click **Save & close**. The duplicate policy is saved and appears in the Loan policy pane.


### Editing a loan policy

1. In the **Loan policies** pane, select the loan policy you want to edit.
2. In the **Loan policy details** pane, click **Actions > Edit**.
3. Edit the loan policy.
4. Click **Save & close**. The policy is updated.


### Deleting a loan policy

1. In the **Loan policies** pane, select the loan policy you want to delete.
2. In the **loan policy details** pane, click **Actions > Delete**.
3. In the **Delete Loan policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears.


## Overdue fine policies

Overdue fine policies determine the amount of fines that accrue when a patron has an item checked out for longer than its loan period.


### Creating an overdue fine policy

1. In the **Overdue fine policies** pane, click **New**.
2. In the **New overdue fine policy** window, enter an **Overdue fine policy name** in the box.
3. Optional: Enter a **Description** in the box.
4. In the **Overdue fine** section, enter the **Overdue fine** amount in the box and **Select interval** at which the fine accrues.
5. Select whether overdue fines should **Count closed days/hours/minutes**. If you select **Yes**, overdue fines continue to accrue on days the library is closed.
6. Enter a **Maximum overdue fine** amount in the box. The overdue fine will stop accruing once this amount is reached.
7. Select whether you want to **Forgive overdue fine if item renewed**. If you select **Yes**, overdue fines on an item will be forgiven once a patron renews the item.
8. Enter the **Overdue recall fine** amount in the box and **Select interval** at which the fine accrues. This fine applies when an overdue item is recalled and the patron does not return the item on time according to the recall.
9. Select whether to **Ignore grace periods for recalls**. If selected, the grace period is not applied in the case of an overdue recall.
10. Enter a **Maximum recall overdue fine** amount in the box. The recall overdue fine will stop accruing once this amount is reached.
11. Click **Save & close**. The overdue fine policy is saved and appears in the Overdue fine policies pane.


### Duplicating an overdue fine policy

1. In the **Overdue fine policies** pane, select the overdue fine policy you want to duplicate.
2. In the **overdue fine policy details** pane, click **Actions > Duplicate**. A New overdue fine policy window appears with the same overdue fine policy information as the policy you chose to duplicate.
3. Edit any of the overdue fine policy information before saving the policy.
4. Click **Save & close**. The duplicate policy is saved and appears in the Overdue fine policies pane.


### Editing an overdue fine policy

1. In the **Overdue fine policies** pane, select the overdue fine policy you want to edit.
2. In the **overdue fine policy details** pane, click **Actions > Edit**.
3. Edit the overdue fine policy.
4. Click **Save & close**. The overdue fine policy is updated.


### Deleting a loan policy

1. In the **Overdue fine policies** pane, select the overdue fine policy you want to delete.
2. In the **Overdue fine policy details** pane, click **Actions > Delete**.
3. In the **Delete Overdue fine policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears.


## Lost item fee policies

Lost item fee policies determine when overdue items automatically age to lost (their Item status changes from Overdue to Lost) and the charges billed to patrons for lost items.


### Creating a lost item fee policy

1. In the **Lost item fee policies** pane, click **New**.
2. In the **Lost item fee policies **window, enter a **Lost item fee policy name** in the box**.**
3. Optional: Enter a **Description** in the box.
4. In the Lost item fee section, enter the amount of time in which **Items aged to lost after overdue**.
5. Enter the amount of time in which **Patron billed after aged to lost**.
6. Enter the amount of time in which **Recalled items age to lost after overdue**. This setting allows libraries to set a shorter “aged to lost” period if the item has been recalled for use by other patrons. This setting **must have a value** in order for recalled items to age to lost.
7. Enter the amount of time in which **Patron billed for recall after aged to lost** This setting **must have a value** in order for patrons to be billed for recall after an item ages to lost.
8. Select the **Charge amount for item**. You can select the actual cost of the item, as indicated in the item record, or enter a set cost.
9. Enter a **Lost item processing fee**. This is an additional charge that will be added to the charge amount for the item when billed to the patron.
10. Select whether to **Charge lost item processing fee if item declared lost by patron**.
11. Select whether to **Charge lost item processing fee if item aged to lost by system**.
12. Enter an amount of time **For lost items not charged a fee/fine, close the loan after**. (This setting applies only to **Actual cost** lost item fee/fines, which is not yet implemented.)
13. Select whether **If lost item returned, remove lost item processing fee**.
14. Select whether to charge overdue fines **If lost item returned or renewed**.
15. Select whether **Replacement allowed**.
16. Select **If lost item replaced, remove lost item processing fee**.
17. Enter a **Replacement processing fee** amount in the box.
18. Enter an amount of time that **No fees/fines shall be refunded if a lost item is returned more than [amount] late**.
19. Click **Save & close**. The policy is saved and appears in the Lost item fee policies pane.


### Duplicating a lost item fee policy

1. In the **Lost item fee policies **pane, select the lost item fee policy you want to duplicate.
2. In the **lost item fee policy details** pane, click **Actions > Duplicate**. A Lost item fee policies window appears with the same lost item fee policy information as the policy you chose to duplicate.
3. Edit any of the lost item fee policy information before saving the policy.
4. Click **Save & close**. The duplicate policy is saved and appears in the Lost item fee policy pane.


### Editing a lost item fee policy

1. In the **Lost item fee policies** pane, select the Lost item fee policy you want to edit.
2. In the **Lost item fee policy** details pane, click **Actions > Edit**.
3. Edit the lost item fee policy.
4. Click **Save & close**. The policy is updated.


### Deleting a lost item fee policy

1. In the **Lost item fee policies** pane, select the lost item fee policy you want to delete.
2. In the **Lost item fee policy details** pane, click **Actions > Delete**.
3. In the **Delete Lost item fee policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears.


## Patron notice policies

Patron notice policies determine which patron notice templates are sent out before, during, or after certain triggering events. Multiple notices can be set up in one policy. The patron notice policies you configure are used in Circulation rules.


### Implementation considerations

Before you can set up your patron notice policies, you must first configure your Patron notice templates.

Multiple notices can be set up in one policy. Whether it makes more sense to set up one or a few notices within several policies or several notices with a few policies will vary based on each library’s needs. Additionally, patron notice policies can be associated with more than one circulation rule.


### Creating a patron notice policy

1. In the **Patron notice policies** pane, click **New**.
2. In the **New patron notice policy** window, enter a **Policy name**. Note: The policy name is what you will see in Circulation rules.
3. To make the policy available to Circulation rules, select **Active**. You may want to clear the checkbox if the policy is not in use but you do not want to delete it.
4. Optional: Enter a **Policy description**.
5. Determine the type of notices you want to set up, and click **Add notice** in the particular notice section that you want to set up. See Loan notices, Request notices, and Fee/fine notices for more information.
6. Select a notice **Template**. Depending on the type of notice you are setting up, different templates will appear. Templates are created in Patron notice templates. Templates can be used more than once in a policy.
7. Select the **Format** the notice will be sent as. Currently, email is the only option.
8. Select the **Triggering event**. This event triggers the system to send a notice. Depending on the event, you might have the option to select a time period before or after.
9. Optional: If you selected a time-based event, the **Send** drop-down list appears. Select to send the request Upon/At, Before, or After the event (settings variable on the Triggering event).
10. Optional: If you select Before or After in the previous step, you will see the **Frequency** drop-down list. Select whether to send the notice One-Time or Recurring, until the event is reached.
11. Click **Save & close**. The policy is saved and appears in the Patron notice policies pane.


#### Loan notices triggering events

**Check out.** The notice is sent when items are checked out. Additionally, the notice is always sent with multiples by patron by session. The template you select must be configured for multiple loans/items.

**Check in.** The notice is sent when items are checked in. Additionally, the notice is always sent with multiples by patron by session. The template you select must be configured for multiple loans/items.

**Item renewed.** The notice is sent when items are renewed.

**Loan due date/time.** The notice is sent before, after, or when an item is due. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the item is due, select **Upon/At**.
* To send the notice before the item is due, select **Before**. Then, determine the **Frequency** of the notice. To send the notice once, before it is due, select **One-Time**. To send the notice multiple times before the item is due, select **Recurring** and enter how often the notice sends until the due date is reached.
* To send the notice after the item is due, select **After**. Then, determine the **Frequency** of the notice. To send the notice once, after the item is due, select **One-Time**. To send the notice multiple times after the item is due, select **Recurring** and enter how often the notice sends until the item is returned or renewed.
* Additionally, select whether you want to **Send overnight with multiple loans/items by patron. Useful for long-term loans** or **Send throughout the day without multiple loans/items. Useful for short-term loans.**

**Loan due date changed.** The notice is sent when an item’s due date/time is manually changed.

**Item recalled.** The notice is sent when an item is recalled.


#### Request notices triggering events

For all request notices, the system is scanned every five minutes for triggering events and sent when a triggering event is detected.

**Awaiting pickup.** The notice is sent when a requested item was checked in at the request service point and now it’s available and awaiting pickup.

**Page request.** The notice is sent when a page request is placed.

**Hold request.** The notice is sent when a hold request is placed.

**Recall request.** The notice is sent when a recall request is placed.

**Cancel request.** The notice is sent when a request is cancelled.

**Hold shelf expiration.** The notice is sent before or when the item is no longer available for pickup on the hold shelf. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the item’s time on the hold shelf expires, select **Upon/At**.
* To send the notice before the item’s time on the hold shelf expires, select **Before**. Then, determine the **Frequency** of the notice. To send the notice once, before its time on the hold shelf expires, select **One-Time**. To send the notice multiple times before the item’s time on the hold shelf expire, select **Recurring** and enter how often the notice sends until the hold shelf expiration is reached.

**Request expiration.** The notice is sent before or when the request expires. Select when the notice is sent from the **Send** drop-down list:



* To send the notice when the request expires, select **Upon/At**.
* To send the notice before the request expires, select **Before**. Then, determine the **Frequency** of the notice. To send the notice once, before the request expires, select **One-Time**. To send the notice multiple times before the request expires, select **Recurring** and enter how often the notice sends until the hold shelf expiration is reached.


#### Fee/fine notices triggering events

For all fee/fine notices, the system is scanned every five minutes for triggering events and sent when a triggering event is detected.

**Overdue fine, returned.** The notice is sent after or when an overdue fine is charged to a patron. The fine would be charged when the item is returned. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the overdue fine is charged, select **Upon/At**.
* To send the notice after the overdue fine is charged, select **After**. Then, determine the **Frequency** of the notice. To send the notice once, before the request expires, select **One-Time**. To send the notice multiple times before the request expires, select **Recurring** and enter how often the notice sends until the fee/fine is closed.

**Overdue fine, renewed.** The notice is sent after or when an overdue fine is charged to a patron. The fine would be charged when the item is renewed. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the overdue fine is charged, select **Upon/At**.
* To send the notice after the overdue fine is charged, select **After**. Then, determine the  **Frequency** of the notice. To send the notice once, before the request expires, select  **One-Time**. To send the notice multiple times before the request expires, select  **Recurring** and enter how often the notice sends until the fee/fine is closed.


### Duplicating a patron notice policy

1. In the **Patron notice policies** pane, select the patron notice policy you want to duplicate.
2. In the **patron notice policy details** pane, click **Actions > Duplicate**. A New patron notice policy window appears with the same patron notice policy information as the policy you chose to duplicate.
3. Edit any of the patron notice policy information before saving the policy.
4. Click **Save & close**. The duplicate policy is saved and appears in the Patron notice policies pane.


### Editing a patron notice policy

1. In the **Patron notice policies** pane, select the patron notice policy you want to edit.
2. In the **patron notice policy details** pane, click **Actions > Edit**.
3. Edit the patron notice policy.
4. Click **Save & close**. The policy is updated.


### Deleting a patron notice policy

1. In the **Patron notice policies** pane, select the patron notice policy you want to delete.
2. In the **patron notice policy details** pane, click **Actions > Delete**.
3. In the **Delete Patron notice policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears.

## Patron notice templates

Patron notice templates are the templates used in your Patron notice policies. Currently, patron notices can only be sent via email.


### Creating a new patron notice template

1. In the **Patron notice templates** pane, click **New**.
2. In the **New patron notice** window, enter a **Name** for the notice.
3. Clear the **Active** checkbox if you do not want the notice to be available for use in notice policies.
4. Enter a **Description**.
5. Select a **Category** for the template. Categories determine which section of the notice policy the notice can be used in and which tokens are available to be used in the body of the email.
6. In the Email section, enter a **Subject** for the email sent to the patron.
7. Enter a **Body** for the email sent to the patron. Click **{ }** to add tokens to the notice. Tokens fill in the item, loan, request, or user information based on the selected variables related to the notice event.
8. Optional: Click **Preview** to view a preview of the notice.
9. Click **Save & close**. The notice is saved and appears in the Patron notice templates pane.


### Duplicating a patron notice template

1. In the **Patron notice templates** pane, select the patron notice template, you want to duplicate.
2. In the **patron notice template details** pane, click **Actions > Duplicate**. A New patron notice window appears with the same patron notice information as the notice you chose to duplicate.
3. Edit the notice name and any other details. You cannot have two notices with the same name.
4. Click **Save & close**. The duplicate notice is saved and appears in the Patron notice templates pane.


### Editing a patron notice template

1. In the **Patron notice templates** pane, select the patron notice template you want to edit.
2. In the **Patron notice template details** pane, click **Actions > Edit**.
3. Edit the patron notice template.
4. Click **Save & close**. The template is updated.


### Deleting a patron notice template

1. In the **Patron notice templates** pane, select the patron notice template you want to delete.
2. In the **Patron notice template details** pane, click **Actions > Delete**.
3. In the **Delete Patron notice templates** dialog, click **Delete**. The template is deleted and a confirmation message appears.


## Settings > Circulation > Request cancellation reasons

When  you cancel a request, you must select a cancellation reason. Use this setting to configure request cancellation reasons for your library.


### Creating a new request cancellation reason

1. Click **New**.
2. Enter a **Cancel Reason**, and optionally, internal and public descriptions of the reason into the boxes.
3. Click **Save**. The reason is saved and appears in the Request cancellation reasons table.


### Editing a request cancellation reason

1. Find the request cancellation reason you want to edit and click the **Edit icon**.
2. Edit the reason.
3. Click **Save**. The changes you made to the request cancellation reason are saved.


### Deleting a request cancellation reason

1. Find the request cancellation reason you want to delete and click the **Delete icon**.
2. In the **Delete Request cancellation reason** dialog, click **Delete**. The reason is deleted and a confirmation message appears.


## Settings > Circulation > Request policies

Request policies determine the types of requests (pages, holds, and recalls) allowed. Request policies are used in Circulation rules.


### Creating a new request policy

1. Click **New** on the Request policies pane.
2. In the **New request policy** window, enter a **Request policy name**.
3. Optional: Enter a **Request policy description**.
4. Select the **Request types allowed**.
5. Click **Save & close**. The policy saves and appears in the Request policies list.


### Editing a request policy

1. Find and select the request policy you want to edit.
2. Select **Actions > Edit**.
3. Edit the policy.
4. Click **Save & close**. The request is updated and saved.


### Duplicating a request policy

1. Find and select the request you want to duplicate.
2. Select **Actions > Duplicate**.
3. Edit the policy name and any other details of the request. You cannot have two policies with the same name.
4. Click **Save & close**. The duplicate policy saves and appears in the Request policies list.


### Deleting a request policy

1. Find and select the request you want to delete.
2. Select **Actions > Delete**.
3. In the **Delete Request policy** dialog, click **Delete**. A confirmation message appears confirming the request is deleted.

## Settings > Circulation > Title level requests

FOLIO provides functionality for both item-level and title-level requesting. Title-level requesting is off by default; if your library wants to use it, you would enable and configure related settings in this section.

* **Allow title level requests**. If your library wants to use title-level requesting, check this box.
* **”Create title level request” selected by default.”** If you are using title-level requesting, there will be a box on the request form in the Requests app to toggle whether a request is title-level or item-level. If you’d like title-level request to be the default choice, check this box.

Make sure to click **Save** at the bottom of the screen to save any changes.

Note that once you check the box to allow title level requests, if a title-level request is then created, you will not be able to turn title-level requesting off.

### Notice templates

Notices that are triggered by title-level requests are not yet included in FOLIO’s circulation rules system, so if your library wants to send a notice for title-level request confirmation, cancellation, and/or expiration, you will need to choose a notice template.

FOLIO will send patrons notices for **Awaiting pickup** and **Hold shelf expiration** if they are configured in the associated circulation rule.

* **Confirmation notice**: Choose a notice template from the drop-down if you want to send a patron notice when a title-level request is created.
* **Cancellation notice**: Choose a notice template from the drop-down if you want to send a patron notice when a title-level request is canceled.
* **Expiration notice**: Choose a notice template from the drop-down if you want to send a patron notice when a title-level request expires without having been fulfilled.

Make sure to click **Save** at the bottom of the screen to save any changes.

