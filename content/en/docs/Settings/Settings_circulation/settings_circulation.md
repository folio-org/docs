---
title: "Settings > Circulation"
linkTitle: "Circulation"
date: 2022-03-21
weight: 40
tags: ["subtopic"]   
---

The Circulation section of the Settings app is where you establish your loan policies, lost item policies, overdue policies, notices, and other circulation configurations.


## Permissions

Each setting within Circulation has its own permission associated with it. If a user has one of the below permissions, they will be able to view and interact with that particular setting. You can assign permissions to users in the Users app.

The following are all the Circulation Settings permissions:

* **Settings (Circ): Can create, edit and remove cancellation reasons:** Allows the user to create, read, update, and delete request cancellation reasons.
* **Settings (Circ): Can create, edit and remove circulation rules:** Allows the user to create, read, update, and delete circulation rules.
* **Settings (Circ): Can create, edit and remove fixed due date schedules:** Allows the user to create, read, update, and delete fixed due date schedules.
* **Settings (Circ): Can create, edit and remove loan policies:** Allows the user to create, read, update, and delete loan policies.
* **Settings (Circ): Can create, edit and remove lost item fee policies:** Allows the user to create, read, update, and delete lost item fee policies.
* **Settings (Circ): Can create, edit and remove notice policies:** Allows the user to create, read, update, and delete patron notice policies.
* **Settings (Circ): Can create, edit and remove other settings:** Allows the user to read and update Settings > Circulation > Other settings.
* **Settings (Circ): Can create, edit and remove overdue fine policies:** Allows the user to create, read, update, and delete overdue fine policies.
* **Settings (Circ): Can create, edit and remove patron notice templates:** Allows the user to create, read, update, and delete patron notice templates.
* **Settings (Circ): Can create, edit and remove request policies:** Allows the user to create, read, update, and delete request policies.
* **Settings (Circ): Can create, edit and remove staff slips:** Allows the user to create, read, and update staff slips. Note: Users can erase the content of staff slips in the editor, but cannot delete the staff slip itself.
* **Settings (Circ): Can edit loan history:** Allows the user to edit settings in Settings > Circulation > Loan anonymization.
* **Settings (Circ): Can view loan history:** Allows the user to view settings in Settings > Circulation > Loan anonymization.
* **Settings (Circ): Can view loan policies:** Allows the user to view loan policies but does not allow create, edit or delete.
* **Settings (Circ): Can view lost item fee policies:** Allows the user to view lost item fee policies but does not allow create, edit or delete.
* **Settings (Circ): Can view overdue fine policies:** Allows the user to view overdue fine policies but does not allow create, edit or delete.
* **Settings (Circ): View circulation rules:** Allows a user to view circulation rules but does not allow them to edit rules.
* **Settings (Circulation): Title level request edit:** Allows users to enable, disable and configure title-level requesting. Note that title level requesting cannot be disabled via settings if there are any open title level requests.


## Settings > Circulation > Circulation rules

Using Folio specific criteria and logic, libraries can create rules that determine how items circulate.  Each circulation rule is made up of one or more criteria and the policies associated with those criteria. When a defined set of criteria matches a circulation action, the policies attached to those criteria are applied. You can find the guidelines for constructing circulation rules in the [FOLIO GitHub Circulation rules documentation](https://github.com/folio-org/mod-circulation/blob/master/doc/circulationrules.md).

You can write circulation rules to determine the following:

* The groups of patrons that can borrow items.
* The rules for items in different locations, libraries, campuses, or institutions.
* The types of items (material types or loan types) that can be borrowed.
* The number of items of a particular type that a patron can borrow.
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

Before you begin to write your circulation rules, you should:

* Read the [FOLIO GitHub Circulation rules documentation](https://github.com/folio-org/mod-circulation/blob/master/doc/circulationrules.md).
* Determine if you want to use automated item blocks. If so, follow the [Automated Item Block guidelines](https://wiki.folio.org/display/FOLIOtips/Implementing+Automated+Item+Blocks).


### Creating circulation rules

Add your circulation rules to the Circulation rules editor. The editor contains responsive features that help you write the rules. For example, when you type a criteria letter, the Circulation rules editor facilitates your selection of the criteria value by displaying a drop-down list of the possible values for that criteria. Click **Save** once you have completed adding your circulation rules.


#### Circulation rule tips

When writing your circulation rules, keep the following in mind:

* You can use comments in the rules editor. Enter a **#** or **/** to add a comment line.
* When adding a criteria in the location tree, the Editor will provide a tool to allow you to pick from the location hierarchy, and then pull in the code value for you.
* Rules can be written in a nested format to make them easier to read.
* You can use keywords to match on all or none for a particular criteria.
* You can specify the priority order for criteria for cases where more than one rule matches.


## Settings > Circulation > Other settings


###  Patron id(s) for checkout scanning

This setting allows you to specify what types of patron IDs can be scanned to checkout items. All fields correspond to fields in the user record.

At least one of the options must be selected:

* **Barcode.**
* **External system id.**
* **FOLIO record number.**
* **Username.**
* **User custom fields.**

If you choose **User custom fields**, you can then select one or more custom fields that the Check out app would include when searching for patron records. Custom fields must be configured in [Settings > Users]({{< ref "settings--users--custom-fields.md" >}}) before they can be selected here.

###  Automatically end check in and check out session after period of inactivity

This setting is turned on by default with an inactivity period of 3 minutes.

1. Select the **Automatically end check in and check out session after period of inactivity** checkbox to turn the setting on.
2. Enter the number of minutes of inactivity after which the session should end.
3. Click **Save**.


### Enable audio alerts

You can turn on audio alerts to signal to library staff when a checkout succeeds or fails. This setting is turned off by default.

Select **Enable audio alerts** to enable audio alerts. Select your desired audio-alerts theme from the drop-down.

### Perform wildcard lookup of items by barcode in circulation apps (Check in, Check out)

Some libraries may want to use FOLIO and support circulating items that have the same barcode. These libraries may be migrating to FOLIO from a prior system that allowed duplicate barcodes or they may need to support consortial lending. 

Since the inventory app requires unique barcodes, libraries with this scenario need to append a string to the barcode.  That will make the barcode unique without changing the physical barcode on the item. The library then needs the Check in and Check out apps to know what to do if they search for the physical barcode on the item and it's possible to retrieve more than one record.

If your library could potentially encounter duplicate barcodes as described, you can check this box to enable the Check in and Check out apps to use a wildcard search for item barcodes and present a modal if duplicate barcodes are found, so library staff can select the correct item.

## Settings > Circulation > Staff slips

Staff slips allow you to configure the information that appears on your staff slips. You have the option of printing these slips when their associated action occurs:

* **Hold.** This slip is available through the Check in app, when you check in an item with a request.
* **Pick slip.** This slip is available in the Requests app, when you generate the pick slip report.
* **Request delivery.** This slip is available in the Check in app, when you check in an item with a delivery request.
* **Transit.** This slip is available in the Check in app, when you check in an item that is in transit to another location.

### Using tokens with staff slips

The following table lists the six categories of available tokens for use with staff slips. All six appear as options in the staff slip editor, but some categories will only populate with information for some types of staff slips. 

|Token category|Populates with these staff slips|Does not populate with these staff slips|
|:---|:---|:---|
|Item|Hold, Pick slip, Request delivery, Transit||
|Effective location|Hold, Pick slip, Request delivery, Transit||
|Staff slip|Hold, Pick slip, Request delivery, Transit||
|Request|Hold|Pick slip, Request delivery, Transit| 
|Request delivery address|Request delivery|Hold, Pick slip, Transit|
|Requester|Hold, Pick slip, Request delivery|Transit|


### Configuring a staff slip

1. In the **Staff slips** pane, select the staff slip you want to configure.
2. In the **staff slip details** pane, click **Edit**.
3. Optional: Enter a **Description** in the box.
4. Use the Display box to edit the slip. Click **{ }** to add tokens to the slip.
5. Optional: Click **Preview** to view a preview of the slip. Be aware that Preview will populate non-populating tokens.
6. Click **Save & close**. The slip is saved and updated.

### Previewing a staff slip

1. In the **Staff slips** pane, select the staff slip you want to preview.
2. In the **staff slip details** pane, click **Preview**. A Preview of staff slip - [slip type] window appears and the preview is shown. Be aware that Preview will populate non-populating tokens.
3. Optional: To print the preview, click **Print**.
4. To close the window, click **Close**.


## Settings > Circulation > Fixed due date schedules

Fixed due date schedules are used in Loan policies when you want to have a loan period with a specific end date.


### Creating a fixed due date schedule

1. In the **Fixed due date schedules** pane, click **New**.
2. In the **Create fixed due date schedule** window, enter a **Fixed due date schedule name**.
3. Optional: Enter a **Description** in the box.
4. In the **Schedule** section, enter a date range for the fixed due date by selecting dates in the **Date from** and **Date to** boxes. Items checked out during this date range will be due on the Due date selected in step 5.
5. Enter the **Due date** that applies to all items checked out during the time range you selected above.
6. Optional: To create additional date ranges, click **New** and repeat steps 4 and 5. If you need to delete a date range, click the **trash can icon**.
7. Once you are finished creating your schedule, click **Save & close**. The fixed due date schedule is saved and appears in the Fixed due date schedules pane.

### Duplicating a fixed due date schedule

1. In the **Fixed due date schedules** pane, select the fixed due date schedule you want to duplicate.
2. In the **fixed due date schedule details** pane, click **Actions > Duplicate**. A Create fixed due date schedule window appears with the same fixed due date schedule information.
3. Edit the fixed due date schedule. Note that you must change the **Fixed due date schedule name** to a unique name.
4. Click **Save & close**. The fixed due date schedule is saved and appears in the Fixed due date schedules pane.

### Edit a fixed due date schedule

1. In the **Fixed due date schedules** pane, select the fixed due date schedule you want to edit.
2. In the **fixed due date schedule details** pane, click **Actions > Edit**.
3. Edit the fixed due date schedule.
4. Click **Save & close**. The fixed due date schedule is updated.


### Delete a fixed due date schedule

1. In the **Fixed due date schedules** pane, select the fixed due date schedule you want to delete.
2. In the **fixed due date schedule details** pane, click **Actions > Delete**.
4. In the **Delete fixed due date schedule** dialog, click **Delete**. The fixed due date schedule is deleted and a confirmation message appears. Note that you cannot delete a fixed due date schedule that is being used in a loan policy.


## Settings > Circulation > Loan anonymization

When closed loans are anonymized, all related patron information is removed from the loan, but the action will still appear in the Circulation log.

### Closed loans

#### Anonymize closed loans

Select one of the following options to determine if closed loans are anonymized:

* **Immediately after loan closes**. The anonymization process begins after the session is closed. Immediate anonymizing of loans runs on a schedule that can be determined by your system administrator or hosting provider.
* **[Interval of time] after the loan closes**. Use the boxes to select the interval of time.
* **Never**.


#### Treat closed loans with associated fees/fines differently

If you want to treat loans with fees/fines differently, select **Treat closed loans with associated fee/fines differently**. The Closed loans with associated fees/fines section appears once the checkbox is selected. If the checkbox is cleared, then closed loans with associated fees/fines are treated according to the option you selected in Closed loans.


### Closed loans with associated fees/fines


#### Anonymize closed loans

Select one of the following options to determine if closed loans with associated fees/fines are anonymized:

* **Immediately after fee/fine closes**.
* **[Interval of time] after fee/fine closes**. Use the boxes to select the interval of time.
* **Never**.


#### Exception for payment method

If you want to create exceptions for closed loans with associated fees/fines paid off using a certain payment method, follow these steps:

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

Before you begin configuring your loan policies, make sure you have [set up your Fixed due date schedules](#creating-a-fixed-due-date-schedule), if you will be using schedules in your policies.

After you create your loan policies, you should test them to make sure they function as expected.


### Creating a new loan policy

1. In the **Loan policies** pane, click **New**.
2. In the **New loan policy** window, enter a **Loan policy name** in the box.
3. Optional: Enter a **Description** in the box.
4. Use the information in the following sections to help guide you in creating loan policies. Different fields are available depending on the options you select in the policy.
5. Click **Save & close**. The policy is saved and added to the Loan policies list.


#### Loans

**Loanable.** To create a non-circulating loan policy, clear the checkbox. Clearing the checkbox causes all other fields to disappear. Since loan policies are reusable, you only need one non-circulating policy.

**Loan profile.** Select the type of loan profile. Depending on your selection, you will see different fields.

* Select **Fixed** if items loaned out during a certain period of time are to have a fixed due date. For example, use this for items loaned until the end of the semester.
* Select **Rolling** if loans are for a defined period of time, including short term loans. For example, use this for items loaned for 28 days.

Depending on your selection for Loan Profile, you see different fields.

If you select **Fixed**, you see the following fields:

**Fixed due date schedule.** Select a fixed due date schedule, as configured in [Settings \> Circulation \> Fixed due date schedules](#settings--circulation--fixed-due-date-schedules). The selected schedule determines the due date for the item. Note: Fixed due dates are only applicable for loans longer than 24 hours, and the calculated due date/time is set to 11:59 PM on the due date.

**Closed library due date management.** Select when the item is due if an item’s calculated due date lands in closed hours for the service point.
* If an item’s loaned interval is in **minutes** or **hours**, the due date will be determined by the loan policy.
* If an item’s loaned interval is in **days**, **weeks**, or **months**, the due date will follow the choice given in the loan policy *only* in the case that the service point is completely closed on the day that the item would be due. When the loan is created, FOLIO will check the service point calendar; if the service point is open for any time on the day that the item is due, FOLIO will set the due time to 11:59 PM on that day.


**Grace period.** Enter a grace period for overdue items. If you choose to have a grace period, items will not count against the [Maximum number of overdue items]({{< ref "settings_users/#settings--users--conditions" >}}) patron block and there will be no overdue fine until after the loan due date/time plus the grace period interval. If the grace period expires and the item has not been returned, the grace period will count towards calculating an overdue or lost item fee/fine. Adding a grace period to a due date follows the same logic that you chose for closed library due date management, if the grace period lands in a closed time for the service point.

**Item limit.** Enter the maximum number of items that can be borrowed by one patron under this policy. Leave blank to have no item limit.

If you select **Rolling**, you see the following fields:

**Loan period.** Select an amount of time for the loan period.

**Fixed due date schedule (due date limit).** Select a fixed due date schedule, as configured in [Settings \> Circulation \> Fixed due date schedules](#settings--circulation--fixed-due-date-schedules). The schedule is used to enforce a stop point on loans. For example, you may want to generally have 28 day loans, but have items that are borrowed 1-4 weeks before the end of the semester be due on the last day of the semester. This setting applies to both initial loans and renewals (unless over-ridden by having an Alternate loan period for renewals).

**Closed library due date management.** Select when the item is due if an item’s calculated due date lands in closed hours for the service point.
* If an item’s loaned interval is in **minutes** or **hours**, the due date will be determined by the loan policy.
* If an item’s loaned interval is in **days**, **weeks**, or **months**, the due date will follow the choice given in the loan policy *only* in the case that the service point is completely closed on the day that the item would be due. When the loan is created, FOLIO will check the service point calendar; if the service point is open for any time on the day that the item is due, FOLIO will set the due time to 11:59 PM on that day.


**Grace period.** Enter a grace period for overdue items. If you choose to have a grace period, items will not count against the [Maximum number of overdue items]({{< ref "settings_users/#settings--users--conditions" >}}) patron block and there will be no overdue fine until after the loan due date/time plus the grace period interval.  If the grace period expires and the item has not been returned, the grace period will count towards calculating an overdue or lost item fee/fine. Adding a grace period to a due date follows the same logic that you chose for closed library due date management if the grace period lands in a closed time for the service point.

**Item limit.** Enter the maximum number of items that can be borrowed by one patron under this policy. Leave blank to have no item limit.

#### Renewals

**Renewable.** If you do not want to allow renewals under this policy, clear the checkbox. Clearing the checkbox causes all other fields to disappear and items are not renewable.

**Unlimited renewals.** Select the checkbox if you want to allow unlimited renewals.

**Number of renewals allowed.** If you have not selected **Unlimited renewals**, enter the number of renewals allowed.

**Renew from.** Select whether a renewed item is renewed from the **Current due date** or **System date,** the date on which the item is renewed.

**Renewal period different from original loan.** Select the checkbox if you want renewed items to have a different loan period than the original loan period. If selected, the next two options appear.

**Alternate loan period for renewals.** Enter the alternate loan period for renewals.

**Alternate fixed due date schedule (due date limit) for renewals.** Select a fixed due date schedule, as configured in [Settings \> Circulation \> Fixed due date schedules](#settings--circulation--fixed-due-date-schedules). The schedule is used to enforce a stop point on renewals.


#### Request management

All of the fields in this section are optional. If you leave them blank, the recall return interval and minimum guaranteed loan period default to zero.


##### Recalls

**Recall return interval.** Enter an amount of time for the recall return interval. This is the period of time the patron has to return a recalled item before it becomes overdue.

**Minimum guaranteed loan period for recalled items.** Enter an amount of time for the minimum guaranteed loan period for recalled items. If you allow an item to be recalled, but do not have a minimum guaranteed loan period, the recall return interval effectively becomes the minimum guaranteed loan period for recalled items.

**Allow recalls to extend due dates for overdue loans.** Checking this box ensures that if an overdue item is recalled, patrons are not assessed unexpected recall fines for a recalled item that they had thought was simply overdue.


##### Holds

**Alternate loan period at checkout for items with an active, pending hold request.** To shorten a loan period for an item that has a request queue, enter an amount of time. If an item is checked out and has no queue, the regular loan period is applied.

**Allow renewal of items with an active, pending hold request.** If you want to allow renewals on a checked out item that has hold requests, select the checkbox. When renewals are allowed, patrons can continue to renew the item based on the settings in the Renewals section.

**Alternate loan period at renewal for items with an active, pending hold request.** If you allow renewals on items with an active, pending hold request, and want to shorten the renewal loan period, enter an amount of time.


### Duplicating a loan policy

1. In the **Loan policies** pane, select the loan policy you want to duplicate.
2. In the **loan policy details** pane, click **Actions > Duplicate**. A New loan policy window appears with the same loan information as the policy you chose to duplicate.
3. Edit any of the loan information before saving the policy. Be aware that the system does not warn you or prevent you from having two loan policies with the same Loan policy name.
4. Click **Save & close**. The loan policy is saved and appears in the Loan policy pane.


### Editing a loan policy

1. In the **Loan policies** pane, select the loan policy you want to edit.
2. In the **loan policy details** pane, click **Actions > Edit**.
3. Edit the loan policy.
4. Click **Save & close**. The policy is updated.


### Deleting a loan policy

1. In the **Loan policies** pane, select the loan policy you want to delete.
2. In the **loan policy details** pane, click **Actions > Delete**.
3. In the **Delete Loan policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears.


## Overdue fine policies

Overdue fine policies determine the fines that accrue when an item is checked out for longer than its loan period. Overdue fine policies are used in Circulation rules.


### Creating an overdue fine policy

1. In the **Overdue fine policies** pane, click **New**.
2. In the **New overdue fine policy** window, enter an **Overdue fine policy name** in the box.
3. Optional: Enter a **Description** in the box.
4. In the **Overdue fine** section, enter the **Overdue fine** amount in the box and **Select interval** at which the fine accrues.
5. Select **Yes** in the **Count closed days/hours/minutes** checkbox if you want overdue fines to continue accruing on days the library is closed.
6. Enter a **Maximum overdue fine** amount in the box. The overdue fine will stop accruing once this amount is reached.
7. Select **Yes** in the **Forgive overdue fine if item renewed** checkbox if you want overdue fines forgiven once a patron renews the item.
8. Enter the **Overdue recall fine** amount in the box and **Select interval** at which the fine accrues. This fine applies when an item is recalled and the patron does not return the item on time according to the recall.
9. Select whether to **Ignore grace periods for recalls**. If you select **Yes**, the grace period is not applied in the case of an overdue recall.
10. Enter a **Maximum recall overdue fine** amount in the box. The recall overdue fine will stop accruing once this amount is reached.
11. Click **Add reminder fee** to add a reminder fee. Reminder fees differ from overdue fines in that reminder fees are billed when an item becomes overdue, whereas overdue fines are billed when the item is returned. 
12. Click **Save & close**. The overdue fine policy is saved and appears in the Overdue fine policies pane.

#### Reminder fees

The five options, Count closed days/hours/minutes, Ignore grace periods for recalls, Ignore grace periods for holds, Allow renewal of items with reminder fee(s), and Clear patron block when paid are not available for Poppy.

Click **Add reminder fee** to set up a reminder fee schedule:

1. Enter a number in **Interval** and choose the time interval in **Frequency** to determine how long after an item is overdue the fee is applied and the notice is sent.
2. Enter **Fee** amount.
3. Choose a **Notice method**. **Email** will send an email to the address in the user record.
4. Select a fee/fine **Notice template**.
5. Select a **Block template** to determine if the user will be blocked from borrowing and/or renewing and/or requesting. Block templates are set up in [Settings > Users > Patron blocks > Templates]({{< ref "/settings_users/#settings--users--patron-block-templates.md" >}}).


### Duplicating an overdue fine policy

1. In the **Overdue fine policies** pane, select the overdue fine policy you want to duplicate.
2. In the **overdue fine policy details** pane, click **Actions > Duplicate**. A New overdue fine policy window appears with the same overdue fine policy information as the policy you chose to duplicate.
3. Edit any of the overdue fine policy information before saving the policy. Note that you must change the **Overdue fine policy name** to a unique name.
4. Click **Save & close**. The overdue fine policy is saved and appears in the Overdue fine policies pane.


### Editing an overdue fine policy

1. In the **Overdue fine policies** pane, select the overdue fine policy you want to edit.
2. In the **overdue fine policy details** pane, click **Actions > Edit**.
3. Edit the overdue fine policy.
4. Click **Save & close**. The overdue fine policy is updated.


### Deleting an overdue fine policy

1. In the **Overdue fine policies** pane, select the overdue fine policy you want to delete.
2. In the **overdue fine policy details** pane, click **Actions > Delete**.
3. In the **Delete Overdue fine policies** dialog, click **Delete**. The policy is deleted and a confirmation message appears. Note that you cannot delete an overdue fine policy that is being used in a circulation rule.


## Lost item fee policies

Lost item fee policies determine when overdue items automatically age to lost (their Item status changes from Overdue to Lost); it also determines the charges billed to patrons for lost items. Lost item fee policies are used in Circulation rules.


### Creating a lost item fee policy

1. In the **Lost item fee policies** pane, click **New**.
2. In the **New lost item fee policy** window, enter a **Lost item fee policy name** in the box.
3. Optional: Enter a **Description** in the box.
4. In the Lost item fee section, enter the amount of time in which **Items aged to lost after overdue**.
5. Enter the amount of time in which **Patron billed after aged to lost**.
6. Enter the amount of time in which **Recalled items aged to lost after overdue**. This setting allows libraries to set a shorter “aged to lost” period if the item has been recalled for use by other patrons. This setting **must have a value** in order for recalled items to age to lost.
7. Enter the amount of time in which **Patron billed for recall after aged to lost**. This setting **must have a value** in order for patrons to be billed when a recalled item ages to lost.
8. In the **Charge amount for item** section, choose **Actual cost** or **Set cost**. If you use Actual cost, you can use the **Lost items requiring actual cost** report in the Users app to find the aged to lost items and then apply a manual cost. If you use Set cost, then enter an amount in the box.
9. Enter a **Lost item processing fee**. This is an additional charge that will be added to the charge amount for the item when billed to the patron.
10. Select whether to **Charge lost item processing fee if item declared lost by patron**.
11. Select whether to **Charge lost item processing fee if item aged to lost by system**.
12. Enter an amount of time **For lost items not charged a fee/fine, close the loan after**. (This setting is required for Actual cost and does not apply to Set cost.)
13. Select whether **If lost item returned or renewed, remove lost item processing fee**.
14. Select whether to charge overdue fines **If lost item returned or renewed**.
15. Select whether **Replacement allowed**.
16. Select **If lost item replaced, remove lost item processing fee**.
17. Enter a **Replacement processing fee** amount in the box.
18. Enter an amount of time that **No fees/fines shall be refunded if a lost item is returned more than [amount] late**.
19. Click **Save & close**. The policy is saved and appears in the Lost item fee policies pane.


### Duplicating a lost item fee policy

1. In the **Lost item fee policies** pane, select the lost item fee policy you want to duplicate.
2. In the **lost item fee policy details** pane, click **Actions > Duplicate**. A Lost item fee policies window appears with the same lost item fee policy information as the policy you chose to duplicate.
3. Edit any of the lost item fee policy information before saving the policy. Note that you must change the Lost item fee policy name to a unique name.
4. Click **Save & close**. The lost item fee policy is saved and appears in the Lost item fee policy pane.


### Editing a lost item fee policy

1. In the **Lost item fee policies** pane, select the Lost item fee policy you want to edit.
2. In the **lost item fee policy details** pane, click **Actions > Edit**.
3. Edit the lost item fee policy.
4. Click **Save & close**. The policy is updated.


### Deleting a lost item fee policy

1. In the **Lost item fee policies** pane, select the lost item fee policy you want to delete.
2. In the **lost item fee policy details** pane, click **Actions > Delete**.
3. In the **Delete New Lost item fee policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears. Note that you cannot delete a lost item fee policy that is being used in a circulation rule.


## Patron notice policies

Patron notice policies determine which patron notice templates are sent out before, during, or after certain triggering events. Multiple notices can be set up in one policy. Patron notice policies are used in Circulation rules.


### Implementation considerations

Before you can set up your patron notice policies, you must first configure your Patron notice templates.

You can set up multiple notices in one policy. Libraries’ needs differ. Some will want to create several policies with one or few notices in each policy. Other libraries may find it advantageous to create few policies, each containing several notices. Additionally, patron notice policies can be associated with more than one circulation rule.


### Creating a patron notice policy

1. In the **Patron notice policies** pane, click **New**.
2. In the **New patron notice policy** window, enter a **Patron notice policy name**. Note: The policy name is what you will see in Circulation rules.
3. To make the policy available to Circulation rules, select **Active**. You may want to clear the checkbox if the policy is not in use but you do not want to delete it.
4. Optional: Enter a **Description**.
5. Determine the type of notices you want to set up, and click **Add notice** in the particular notice section that you want to set up. See Loan notices, Request notices, and Fee/fine notices for more information.
6. Select a notice **Template**. Depending on the type of notice you are setting up, different templates will appear. Templates are created in [Patron notice templates](#patron-notice-templates). Templates can be used more than once in a policy.
7. Select the **Format** the notice will be sent as. Currently, email is the only option.
8. Select the **Triggering event**. This event triggers the system to send a notice. Depending on the event, you might have the option to select a time period before or after.
9. If you select a time-based event, the **Send** drop-down list appears. Select to send the request Upon/At, Before, or After the event (settings variable on the Triggering event).
10. If you select Before or After in the previous step, you will see the **Frequency** drop-down list. Select whether to send the notice One Time or Recurring.
11. Click **Save & close**. The policy is saved and appears in the Patron notice policies pane.


#### Loan notices triggering events

**Check in.** The notice is sent when items are checked in. Additionally, the notice is always sent with multiples by patron by session. The template you select must be configured for multiple loans/items.

**Check out.** The notice is sent when items are checked out. Additionally, the notice is always sent with multiples by patron by session. The template you select must be configured for multiple loans/items.

**Item renewed.** The notice is sent when items are renewed.The template you select must not be configured for multiple loans/items.

**Loan due date/time.** The notice is sent before, after, or when an item is due. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the item is due, select **Upon/At**.
* To send the notice before the item is due, select **Before**. Then, determine the **Frequency** of the notice. To send the notice once, before it is due, select **One Time**. To send the notice multiple times before the item is due, select **Recurring** and enter how often the notice sends until the due date is reached.
* To send the notice after the item is due, select **After**. Then, determine the **Frequency** of the notice. To send the notice once, after the item is due, select **One Time**. To send the notice multiple times after the item is due, select **Recurring** and enter how often the notice sends until the item is returned or renewed.
* Additionally, select whether you want to **Send overnight with multiple loans/items by patron. Useful for long-term loans.** or **Send throughout the day without multiple loans/items. Useful for short-term loans.**

**Loan due date change.** The notice is sent when an item’s due date/time is manually changed.

**Item recalled.** The notice is sent when an item is recalled.

**Item aged to lost**. The notice is sent when or after an item is aged to lost. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the item ages to lost, select **Upon/At**.
* To send the notice after the item ages to lost, select **After**. Then, determine the **Frequency** of the notice. To send the notice once, after the item ages to lost, select **One Time**. To send the notice multiple times after the item ages to lost, select **Recurring** and enter how often the notice sends while the status remains aged to lost.


#### Request notices triggering events

For all request notices, the system is scanned every five minutes for triggering events and sent when a triggering event is detected.

**Awaiting pickup.** The notice is sent when a requested item is checked in at the pickup service point specified in the request.

**Page request.** The notice is sent when a page request is placed.

**Hold request.** The notice is sent when an item-level hold request is placed.

**Recall request.** The notice is sent when a recall request is placed.

**Cancel request.** The notice is sent when a request is cancelled. Note: Title level *hold* requests will send the notice selected in [Settings \> Circulation \> Title level requests](#notice-templates).

**Hold shelf expiration.** The notice is sent before or when the item is no longer available for pickup on the hold shelf. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the item’s time on the hold shelf expires, select **Upon/At**.
* To send the notice before the item’s time on the hold shelf expires, select **Before**. Then, determine the **Frequency** of the notice. To send the notice once, before its time on the hold shelf expires, select **One Time**. To send the notice multiple times, select **Recurring** and enter how often the notice sends until the hold shelf expiration is reached.

**Request expiration.** The notice is sent before or when the request expires. Select when the notice is sent from the **Send** drop-down list:



* To send the notice when the request expires, select **Upon/At**.
* To send the notice before the request expires, select **Before**. Then, determine the **Frequency** of the notice. To send the notice once, before the request expires, select **One Time**. To send the notice multiple times, select **Recurring** and enter how often the notice sends until the request expiration is reached.


#### Fee/fine notices triggering events

The system is scanned every five minutes for triggering events and fee/fine notices are sent when a triggering event is detected.

**Overdue fine, returned.** The notice is sent after or when an overdue fine is charged to a patron. The fine would be charged when the item is returned. **Overdue fine, returned** notices always bundle fees/fines. The template you select should be configured for multiple loans. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the overdue fine is charged, select **Upon/At**.
* To send the notice after the overdue fine is charged, select **After**. Then, determine the **Frequency** of the notice. To send the notice once, select **One Time**. To send the notice multiple times, select **Recurring** and enter how often the notice sends until the fee/fine is closed.

**Overdue fine, renewed.** The notice is sent after or when an overdue fine is charged to a patron. The fine would be charged when the item is renewed. **Overdue fine, renewed** notices always bundle fees/fines. The template you select should be configured for multiple loans. Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the overdue fine is charged, select **Upon/At**.
* To send the notice after the overdue fine is charged, select **After**. Then, determine the  **Frequency** of the notice. To send the notice once, select  **One Time**. To send the notice multiple times, select  **Recurring** and enter how often the notice sends until the fee/fine is closed.

**Lost item fee(s) charged.** The notice is sent after or when a lost item fine is charged to a patron.

Select when the notice is sent from the **Send** drop-down list:

* To send the notice when the lost item fee is charged, select **Upon/At**.
* To send the notice after the lost item fee is charged, select **After**. Then, determine the **Frequency** of the notice. To send the notice once, select **One Time**. To send the notice multiple times, select **Recurring** and enter how often the notice sends until the fee is closed.
  
Select whether multiple lost item fee notices are bundled together:

* To bunch all a patron’s open lost item fees together in one email (processed at 11:59pm) choose **Send overnight with multiple lost item fee charges by patron.** The template you select should be configured for multiple loans.
* To send notices throughout the day (typically processed every five minutes, with a separate notice for each fee/fine charged) choose **Send throughout the day with one lost item fee charge per notice.** The template you select should not be configured for multiple loans.
  
**Lost item returned - fee(s) adjusted.** The notice is sent when the event is triggered, i.e. when the lost item is checked in.


### Duplicating a patron notice policy

1. In the **Patron notice policies** pane, select the patron notice policy you want to duplicate.
2. In the **patron notice policy details** pane, click **Actions > Duplicate**. A New patron notice policy window appears with the same patron notice policy information as the policy you chose to duplicate.
3. Edit any of the patron notice policy information before saving the policy. You cannot have two patron notice policies with the same name.
4. Click **Save & close**. The patron notice policy is saved and appears in the Patron notice policies pane.


### Editing a patron notice policy

1. In the **Patron notice policies** pane, select the patron notice policy you want to edit.
2. In the **patron notice policy details** pane, click **Actions > Edit**.
3. Edit the patron notice policy.
4. Click **Save & close**. The policy is updated.


### Deleting a patron notice policy

1. In the **Patron notice policies** pane, select the patron notice policy you want to delete.
2. In the **patron notice policy details** pane, click **Actions > Delete**.
3. In the **Delete Patron notice policy** dialog, click **Delete**. The policy is deleted and a confirmation message appears. Note that you cannot delete a patron notice policy that is being used in a circulation rule.

## Patron notice templates

Patron notice templates are the templates used in your Patron notice policies. Currently, patron notices can only be sent via email.


### Creating a new patron notice template

1. In the **Patron notice templates** pane, click **New**.
2. In the **New patron notice template** window, enter a **Patron notice template name** for the notice.
3. Clear the **Active** checkbox if you do not want the notice to be available for use in notice policies.
4. Optional: Enter a **Description**.
5. Select a **Category** for the template. Categories determine which section of the notice policy the notice can be used in and which tokens are available to be used in the body of the email.
6. In the Email section, enter a **Subject** for the email sent to the patron.
7. Enter a **Body** for the email sent to the patron. Click **{ }** to add tokens to the notice. Tokens fill in the item, loan, request, or user information based on the selected variables related to the notice event.
8. Optional: Click **Preview** to view a preview of the notice.
9. Click **Save & close**. The notice is saved and appears in the Patron notice templates pane.


### Duplicating a patron notice template

1. In the **Patron notice templates** pane, select the patron notice template you want to duplicate.
2. In the **patron notice template details** pane, click **Actions > Duplicate**. A New patron notice template window appears with the same patron notice information as the notice you chose to duplicate.
3. Edit the notice name and any other details. You cannot have two notices with the same name.
4. Click **Save & close**. The patron notice template is saved and appears in the Patron notice templates pane.


### Editing a patron notice template

1. In the **Patron notice templates** pane, select the patron notice template you want to edit.
2. In the **Patron notice template details** pane, click **Actions > Edit**.
3. Edit the patron notice template.
4. Click **Save & close**. The template is updated.


### Deleting a patron notice template

1. In the **Patron notice templates** pane, select the patron notice template you want to delete.
2. In the **Patron notice template details** pane, click **Actions > Delete**.
3. In the **Delete Patron notice templates** dialog, click **Delete**. The template is deleted and a confirmation message appears. Note that you cannot delete a template that is being used in a Patron notice policy.


## Settings > Circulation > Request cancellation reasons

When  you cancel a request, you must select a cancellation reason. Use this setting to configure request cancellation reasons for your library.


### Creating a new request cancellation reason

1. Click **New**.
2. Enter a **Cancel Reason**, and optionally, internal and public descriptions of the reason into the boxes.
3. Click **Save**. The reason is saved and appears in the Request cancellation reasons table.


### Editing a request cancellation reason

1. Find the request cancellation reason you want to edit and click the **pencil icon**.
2. Edit the reason.
3. Click **Save**. The changes you made to the request cancellation reason are saved.


### Deleting a request cancellation reason

1. Find the request cancellation reason you want to delete and click the **trash can icon**.
2. In the **Delete cancel reason** dialog, click **Delete**. The reason is deleted and a confirmation message appears.


## Settings > Circulation > Request policies

Request policies determine the types of requests (pages, holds, and recalls) allowed. Request policies are used in Circulation rules.


### Creating a new request policy

1. Click **New** in the **Request policies** pane.
2. In the **New request policy** window, enter a **Request policy name**.
3. Optional: Enter a **Description**.
4. Select the **Request types allowed**.
5. **Allow all pickup service points** allows the item to be requested for pickup at any service point. Select **Allow some pickup service points** if you want to choose which service points are allowed to be chosen as pickup locations. This can be used, for example, to restrict valuable items from going to an unstaffed pickup service point.
6. Click **Save & close**. The policy saves and appears in the Request policies list.

### Duplicating a request policy

1. In the **Request policies** pane select the request policy you want to duplicate.
2. Select **Actions > Duplicate**.
3. Edit the policy name and any other details of the request. You cannot have two policies with the same name.
4. Click **Save & close**. The request policy is saved and appears in the Request policies list.

### Editing a request policy

1. In the **Request policies** pane select the request policy you want to edit.
2. Select **Actions > Edit**.
3. Edit the request policy.
4. Click **Save & close**. The request policy is updated and saved.


### Deleting a request policy

1. In the **Request policies** pane select the request policy you want to delete.
2. Select **Actions > Delete**.
3. In the **Delete Request policy** dialog, click **Delete**. A confirmation message appears confirming the request policy is deleted. You cannot delete a request policy that is being used in a circulation rule.

## Settings > Circulation > Title level requests

FOLIO provides functionality for both item-level and title-level requesting. Since title-level requesting is off by default, you need to enable and configure related settings in this section if your library wants to use it.

* **Allow title level requests**. If your library wants to use title-level requesting, check this box.
* **”Create title level request” selected by default.** If you are using title-level requesting, there will be a checkbox in the Requests app to toggle whether a request is title-level or item-level. If you’d like title-level request to be the default choice, check this box.
* **Fail to create title level hold when request is blocked by circulation rule**. Check this box if you want title level hold requests to follow the circulation rules. If you do not check this box, then title level hold requests will go through even when item level hold requests are blocked by the circulation rule.

Click **Save** at the bottom of the screen to save any changes.

Before allowing title level requesting, be aware that you will not be able to turn title-level requesting off if there are any open title level requests.

### Notice templates

Notices that are triggered by title-level requests are not yet included in FOLIO’s circulation rules system. If a title-level request is placed by a patron and immediately associated to an item, the item-level notices in the circulation rules will be sent. If a title-level request is placed and it is a hold - e.g., not immediately associated to an item - the title-level request templates selected here are used instead.

* **Confirmation notice**. Choose a notice template from the drop-down if you want to send a patron notice when a title-level request is created.
* **Cancellation notice**. Choose a notice template from the drop-down if you want to send a patron notice when a title-level request is canceled.
* **Expiration notice**. Choose a notice template from the drop-down if you want to send a patron notice when a title-level request expires without having been fulfilled.

Click **Save** at the bottom of the screen to save any changes.

