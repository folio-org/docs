---
title: "Users"
linkTitle: "Users"
weight: 250
---

The Users app allows you to manage user information for patrons and library staff. Both patrons and library staff's user records are stored in the Users app. There is no separate directory or app for library staff users. The difference between a library staff user and a patron is that the library staff user record has FOLIO permissions assigned to it.

Definition of terms related to the Users app:

-   **User.** Any person who interacts with or performs tasks in FOLIO.
-   **User record.** Contains contact information and identifiers for an individual user. User records exist for both patrons and library staff. For a list of all information contained within a user record, see [Viewing a user record](#viewing-a-user-record).
-   **Permission.** Value assigned to a user, which grants them access to FOLIO records or allows them to carry out specific tasks in FOLIO.
-   **Permission set.** A group of permissions that allows a user to perform a specific set of tasks. For example, you may want to group certain permissions together to create job-specific permissions sets. Permission sets are defined by your library in [Settings \> Users \> Permission sets](../settings/settings_users/settings_users/#settings--users--permission-sets).

## Permissions

The permissions listed below allow you to interact with the Users app and determine what you can and cannot do within the app. If none of these permissions are assigned to a user, they are unable to see the User app or any related information.

Note: For information on assigning permissions to users, see [Assigning permissions to a user record](#assigning-permissions-to-a-user-record).

The following are all the User permissions:

-   **Users: Can assign and unassign permissions to users.** This permission allows the user to assign or unassign permissions to another user. 
-   **Users: Can assign and unassign service points to users.** This permission allows the user to view and edit service points assigned to users. The user can also view and edit basic user data elements.
-   **Users: Can create new user.** This permission allows the user to create a new user record and add User information, Extended information, and Contact Information to the user record. 
-   **Users: Can create, edit and remove fees/fines.** This permission allows the user to create, edit, remove, and view user fees/fines.
-   **Users: Can create, edit and remove patron blocks.** This permission allows the user to see the Patron blocks section on the user record, and view, edit, and create blocks.
-   **Users: Can create, edit and remove proxies.** This permission allows the user to view and edit proxies assigned to a user. The user can also view and edit basic user data elements.
-   **Users: Can edit user profile.** This permission allows the user to edit and view the following sections in a user record: User information, Extended information, and Contact information.
-   **Users: Can view permissions assigned to users.** This permission allows the user to view the permissions assigned to another user. 
-   **Users: Can view proxies assigned to users.** This permission allows the user to see the Proxies section but not edit proxies assigned to a user. This permission also includes the ability to search and view user records (basic user fields only).
-   **Users: Can view service points assigned to users.** This permission allows the user to see the Service points section but not edit service points assigned to a user. This permission also includes the ability to search and view user records (basic user fields only).
-   **Users: Can view user profile.** This permission allows the user to search for user records and view the following sections in a user record: User information, Extended information, and Contact information.
-   **Users: Create/reset password.** This permission allows the user to see another user's password and use the reset password functionality.
-   **Users: User loan edit.** This permission allows the user to edit a loan on another user's record. 
-   **Users: User loans claim returned.** This permission allows the user to change the status of loaned items to Claim returned.
-   **Users: User loans declare lost.** This permission allows the user to change the status of loaned items to Declared lost.
-   **Users: User loans mark claimed returned missing.** This permission allows the user to change the status of loaned, claim returned items to Missing.
-   **Users: User loans renew.** This permission allows the user to renew loans to the extent that is permitted by the loan policy.
-   **Users: User loans renew through override.** This permission allows the user to override failed renewals.
-   **Users: User loans view.** This permission allows the user to view the Loans section on a user record, view the loans page and loan details. However, the user cannot change due dates or renew loans.
-   **Users: User loans view, edit, renew (all).** This permission allows the user to change a due date on a loan and renew loans.
-   **Users: View requests.** This permission allows the user to view the Requests section on a user record. This permission also includes the ability to search and view user records (basic user fields only).

## Creating a user record manually

1.  In the **User Search Results** pane, click **Actions \> New**.
2.  In the **Create User** window, fill in the **User information**, **Extended information**, and **Contact information** sections. For more information on the fields and actions available in these sections, see the section descriptions below.
3.  Once you have included all the information you want about the user, click **Save & Close**. The user record is saved.

### User information

-   **Last name (required).** The surname of the user.
-   **First name.** The given name of the user.
-   **Middle name.** The middle name of the user.
-   **Preferred first name.** The name by which the user prefers to be called.
-   **Patron group (required).** Select a patron group to assign to the user. Patron groups are classes of library users configured by your library in the Settings app. See [Settings \> Users \> Patron Groups](../settings/settings_users/settings_users/#settings--users--patron-groups) for more information.
-   **Status (required).** Select a status for the user: **Active** or **Inactive.** A user's status is tied to the expiration date set on their user record. Active status indicates current affiliation, employment, or enrollment within the library's institution. Inactive status indicates that the expiration date on the user's record has passed and the user is no longer affiliated, employed, or enrolled.
-   **Expiration date.** The amount of time set before the user record lapses and the user no longer has active permissions or the ability to borrow items. The expiration date determines when a user's status changes from Active to Inactive. You are prompted to set the default expiration date when creating a user record. In the **Set expiration date** dialog, click **Set** to accept the default expiration date for the patron group. Otherwise, if you wish to customize the expiration date, click **Cancel** and enter the date in the **Expiration date** field, or click the **calendar icon** to select a date. You can also leave the field blank.
-   **Barcode.** The barcode number for the user's library card.

### Extended information

-   **Date enrolled.** The date a user is enrolled at the institution. This field is auto-populated if it is included in source data provided by an external system. 
-   **External system ID.** The external system ID for the user. This field is auto-populated if it is included in source data provided by an external system. 
-   **Birth date.** The date of birth of the user in YYYY-MM-DD format.
-   **Folio number.** A system-generated number for the user record.
-   **Username.** The name library staff use to log into FOLIO. Note: Patrons don't have a username because they don't need to log into FOLIO.
-   **Request preferences.** Select **Hold Shelf** and/or **Delivery** to indicate preference for receiving requested items.
-   **Default pickup service point.** All user records have at least one service point assigned to indicate the location for checking out or picking up requested items. Service points are configured by your library in the Settings app. See <!--ADD LINK HERE WHEN PAGE IS AVAILABLE-->Settings \> Tenant \> Service points for more information.
-   **Fulfillment preference.** This field only appears if **Delivery** is selected as a Request preference.
-   **Default delivery address (required).** This field only appears and is required if **Delivery** is selected as a Request preference.
-   **Department name.** Name of the user's department, if applicable. To associate the user with a department, click **Add Department** and select the department from the drop-down list. This action is repeatable, and departments can be deleted by clicking the **trash can icon**.Departments are configured by your library in the Settings app. See [Settings \> Users \> Departments](../settings/settings_users/settings_users/#settings--users--departments) for more information. 

### Contact information

-   **Email (required).** The email address of the user.
-   **Phone.** The phone number of the user.
-   **Mobile phone.** The mobile phone number of the user.
-   **Preferred contact (required).** Select the user's preferred method of contact: Email, Mail (Primary Address), or Text Message.
-   **Address.** The address of the user. You can add multiple addresses. To add an address, click **Add Address**. Select **Use as primary address** if address is to be considered the user's main address. 
-   **Address Type.** Select the appropriate address type for the user's address. Address Types are configured by your library in the Settings app. See [Settings \> Users \> Address Types](../settings/settings_users/settings_users/#settings--users--address-types) for more information.

## Searching for user records

You can search for user records in the **Search & filter** pane. To search for users, enter your search terms into the box and click **Enter**. The user search box searches through these fields: Name, Barcode, Email, Username, and External system ID.

You can also search for user records by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information on the filters.

### Status

In the **Search & filter** pane, click **Status** and select any applicable filters:

-   **Active.** Users with the Status of Active.
-   **Inactive.** User with the Status of Inactive.

### Patron group

To filter users by their patron group, in the **Search & filter** pane, select one of the listed options. Possible patron groups may include examples like these:

-   **Adult.** Patrons over the age of 18.
-   **Faculty.** Patrons with faculty status at your institution.
-   **Staff.** Patrons that are students at your institution.

Patron groups configured in [Settings \> Users \> Patron groups](../settings/settings_users/settings_users/#settings--users--patron-groups).

### Tags

To search for user records assigned with specific tags, follow these steps:

1.  In the **Search & filter** pane, click **Tags**.
2.  Select the tag(s) from the drop-down list. The search results appear in the User search results pane.

## Viewing a user record

Once you search for a user record, the following information appears in the User search results pane:

-   **Active.** The status of the user.
-   **Name.** The name of the user.
-   **Barcode.** The barcode number of the user.
-   **Patron group.** The patron group to which the user belongs.
-   **Username.** The username of the user.
-   **Email.** The email address of the user.

In the user search results, click on an user record to view it. The User record pane displays with additional information about the user record. See the sections below for more information on the accordions that appear in the user record.

### User information

For information about the fields displayed in the User information section, see [Creating a user record \> User information](#user-information). 

### Patron blocks

Within the Patron blocks section, you can view all blocks on the user record and create manual blocks. For more information on manual blocks, see [Creating a manual patron block](#creating-a-manual-patron-block).

Patron blocks appear in a table format with the most recent block listed first.

### Extended information

For information about the fields displayed in the Extended information section, see [Creating a user record \> Extended information](#extended-information). 

### Contact information

For information about the fields displayed in the Contact information section, see [Creating a user record \> Contact information](#contact-information).

### Proxy/sponsor

The Proxy/sponsor section displays any proxies or sponsors associated with the user record. For more information on adding a sponsor or proxy, see [Adding a sponsor to a user record](#adding-a-sponsor-to-a-user-record) and [Adding a proxy to a user record](#add-a-proxy-to-a-user-record).

### Fees/fines

The Fees/fines section displays the number of open and closed fees/fines. To view additional details about the open or closed fees/fines, click **open fees/fines** or **closed fees/fines**, respectively. To view all fees/fines, click **View all fees/fines**.  <!--ADD LINK HERE WHEN PAGE IS AVAILABLE For more information, see the Fee/Fines section.-->

You can also create manual fees/fines in the Fees/fines section. For more information, see [Creating a manual fee/fine](#creating-a-manual-feefine).

### Loans

The Loans section displays the number of open and closed loans. To view additional details about the open or closed loans, click **open loans** or **closed loans**, respectively.

### Requests

The Requests section displays the number of open and closed requests. To view additional details about the open or closed requests, click **open requests** or **closed requests**, respectively.

You can also create requests for the user in the Requests section. For more information, see [Creating requests](#creating-requests).

### User permissions

The User permissions section displays all permissions assigned to the user record. For more information on assigning permissions, see [Assigning permissions to a user record](#assigning-permissions-to-a-user-record).

### Service points

The Service points section displays all service points assigned to the user record, including the user's Service point preference, if applicable. 

### Notes

The Notes section displays any notes about the patron. For more information on notes, see [Adding a note to a user record](#adding-a-note-to-a-user-record).

## Editing a user record

To edit the User information, Extended information, or Contact information section in a user record, follow these steps: 

1.  [Find the user record](#searching-for-user-records) you want to edit and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, edit the appropriate information in the [User information](#user-information), [Extended information](#extended-information), or [Contact information](#contact-information) sections.
4.  Click **Save & Close**. The user record is updated.

### Editing an expiration date

To edit (or re-set) an **Expiration Date** in an existing user record, follow these steps:

1.  [Search for User Record](#searching-for-user-records). You can search for a user record by **Keyword** (name, email, identifier) and filter search by **Status, Patron Group,** and **Tags**.
2.  Select the user record from the **User Results** list.
3.  Click on the **Re-Set** button near the **Expiration Date** field to re-set the date to the default expiration date for that patron group.
4.  Customize the expiration date by typing the new date in the **Expiration Date** field using YYYY-MM-DD format. Or click on the **Calendar** icon in the **Expiration Date** field to select a date. 
5.  Delete the expiration date by clicking on the **x** in the **Expiration Date** field.
6.  Click **Save & Close**.

### Changing a user's status

A user's status can be changed between Active or Inactive based on changes in their employment status or enrollment status. 

1.  [Find the user record](#searching-for-user-records) you want to edit and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, in the **User Information** section, in the **Status** drop-down list, select **Active** or **Inactive**.
4.  Click **Save & Close**. 

## Sending a password reset email

This functionality is provided only after the user record has been saved for the first time. The library staff user created or changed is sent an email with a URL to the email address specified in the Contact information section. After accessing the URL, the user is taken to a form where the FOLIO password can be set or changed. Alternatively, the URL can be copied and manually sent to the user.

1.  [Find the user record](#searching-for-user-records) for which you want to send a password reset email and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, under **Folio password**, in the **Extended information** section, click **Send reset password email**. The reset password email is sent to the user.
4.  Optional: In the **Reset password email sent** dialog, click **Copy link** to copy the password reset link and manually send the link to the user.
5.  Click the **X** to close the dialog.

## Adding a sponsor to a user record

Users can authorize other users to borrow library materials on their behalf. Sponsors are users who authorize another user to borrow on their behalf. For example, if you are adding a sponsor to the user record of User One, then User One is the proxy and can borrow on behalf of User Two (the sponsor).

1.  [Find the user record](#searching-for-user-records) to which you want to add a sponsor and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, under **Proxy/sponsor**, in the **Sponsors** section, click **Add**.
4.  In the **Select User** dialog, search for the sponsor user and select them. The sponsor is added to the user record.
5.  Optional: In the **sponsor** box, select the **Relationship Status**: Active or Inactive.
6.  Optional: Enter or select an **Expiration date**. The Expiration date indicates the expiration of the proxy/sponsor relationship.
7.  Optional: Select whether the **Proxy can request for the sponsor**. If you select **Yes**, then the proxy can place requests on materials on behalf of the sponsor.
8.  Optional: Select to whom notifications from the library are sent in the **Notifications sent to** drop-down list: Proxy or Sponsor.
9.  Click **Save & Close**. The sponsor is added to the user record.

## Add a proxy to a user record

Users can authorize other patrons to borrow library materials on their behalf. Proxies are users who are authorized to borrow on the behalf of another user. For example, if you are adding a proxy to the user record of User One, then User Two is the proxy and can borrow on the behalf of User One (the sponsor).

1.  [Find the user record](#searching-for-user-records) to which you want to add a proxy and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, under **Proxy/sponsor**, in the **Proxies** section, click **Add**.
4.  In the **Select User** dialog, search for the proxy user and select them. The proxy is added to the user record.
5.  Optional: In the **proxy** box, select the **Relationship Status**: Active or Inactive.
6.  Optional: Enter or select an **Expiration date**. The Expiration date indicates the expiration of the proxy/sponsor relationship.
7.  Optional: Select whether the **Proxy can request for the sponsor**. If you select **Yes**, then the proxy can place requests on materials on behalf of the sponsor.
8.  Optional: Select to whom notifications from the library are sent in the **Notifications sent to** drop-down list: Proxy or Sponsor.
9.  Click **Save & Close**. The proxy is added to the user record.

## Assigning permissions to a user record

Library staff need to have permissions assigned to their user record in order to interact with the FOLIO staff interface. Permissions do not need to be assigned to patrons for standard patron services like borrowing books, requesting items, etc. For a list of permissions and their definitions, see the respective app's Permissions section in the documentation.

1.  [Find the user record](#searching-for-user-records) to which you want to add permissions and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, click **User permissions**.
4.  Click **Add permission**.
5.  In the **Select Permissions** dialog, search for the permission(s) or permissions set you want to assign to the user. 
6.  Optional: Filter by **Permission type** or **Permission assignment status** in the **Search & Filter** pane.
7.  Select the **checkbox** next to the permissions you want to assign to the user.
8.  Click **Save & close**. The permissions are added to the user record.
9.  Click **Save & close**. The user record is saved.

## Adding a service point to a user record

A service point in FOLIO is a setting that libraries configure to support circulation functions. Every FOLIO item must have a location, and every location must have an attached service point. You must set up at least one service point to be able to check items in and out; allow patrons to request items; charge and collect fines; and put items in transit between locations at your library. 

Staff who use the Check in, Check out, Users, or Requests apps must have a service point assigned to them in their user record. Service points are configured for your library in the Settings app. See <!--ADD LINK TO PAGE WHEN IT IS AVAILABLE-->Settings \> Tenant \> Service Points for more information. 

1.  [Find the user record](#searching-for-user-records) to which you want to add a service point and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, click **Service points**.
4.  Click **Add service points**. 
5.  In the **Add service points** dialog, select the **checkboxes** next to the service points you want to add to the user record.
6.  Click **Save & close**. The service points are added to the user record.
7.  Select a **Service point preference** from the drop-down list. If you select **None**, then the user is prompted to select a service point every time they sign in to FOLIO.
8.  Click **Save & Close**. The service points are added to the user record.

## Adding a tag to a user record

1.  [Find the user record](#searching-for-user-records) to which you want to add a tag and select it.
2.  In the **User record** pane, click the **tag icon**.
3.  In the **Tags** pane, either select a tag from the box or enter a tag.
4.  Click the **X** on the Tags pane to close the pane and save the tag. The tag number updates to the number of tags applied to the user record.

## Creating a manual patron block

Patron blocks allow libraries to manually prevent a patron from borrowing, renewing, and/or requesting materials until specified issues are resolved. Patron blocks can be edited to update any elements associated with them and deleted at any time. The block is displayed prominently on the user record so that staff members are aware that a patron is blocked and why. If an Expiration date is provided on the patron block, the block is automatically removed on that date.

1.  [Find the user record](#searching-for-user-records) of the patron you want to block and select it.
2.  In the **User record** pane, click **Patron blocks**.
3.  Click **Create block**.
4.  In the **New Block** window, enter a **Display Description**. This is the description that displays on the user record and in dialogs that appear when staff try to check out, renew, or request items on behalf of the patron, depending on their block.
5.  Optional: Enter **Staff only information**.
6.  Optional: Enter a **Message to Patron**.
7.  Optional: Enter an **Expiration date** on which the block expires.
8.  By default, all **Block actions** are selected. These are the actions that the user is barred from doing because of the block. To allow some of the actions, clear the **checkbox** next to **Borrowing**, **Renewals**, or **Requests**.
9.  Click **Save & Close**. The block is saved and added to the user record.

## Editing a patron block

1.  [Find the user record](#searching-for-user-records) of the patron with the block you want to edit and select it.
2.  In the **User record** pane, click **Patron blocks**.
3.  In the **block table**, select the **block** you want to edit.
4.  In the **user block** window, make your changes.
5.  Click **Save & Close**. The patron block is updated.

## Removing a patron block

Patron blocks with expiration dates are automatically deleted on that date. 

To delete a patron block with no assigned expiration date, follow these steps:

1.  [Find the user record](#searching-for-user-records) of the patron with the block you want to edit and select it.
2.  In the **User record** pane, click **Patron blocks**.
3.  In the **block table**, select the **block** you want to edit.
4.  In the **user block** window, click **Delete**.
5.  In the **Delete patron block** dialog, click **Delete**. The patron block is removed.

## Creating a manual fee/fine

1.  [Find the user record](#searching-for-user-records) to which you want to add a fee/fine and select it.
2.  In the **User record** pane, click **Fees/fines**.
3.  Click **Create fee/fine**.
4.  In the **New fee/fine** window, select the **Fee/fine owner**.
5.  Select the **Fee/fine type**.
6.  In the **Fee/fine amount** box, you can do one of three things:
    1.  Keep the default fee/fine amount, if one was populated for the fee/fine type.
    2.  Adjust the default fee/fine amount, if it was populated for the fee/fine type.
    3.  Provide a fee/fine amount, if one did not populate.
7.  Optional: To associate the fee/fine with an item, scan or enter the item barcode into the **Item information** box and click **Enter**.
8.  Optional: Enter any **Additional information for staff** in the box.
9.  Click either **Charge & pay now** to charge the patron and process the payment or **Charge Only** to only apply the charge to the user record.

## Creating requests

The procedure below details how to create requests from the user record in the Users app, but requests can also be created in the [Requests](../access/requests/requests) app or from the item record in the Inventory app.

Note: When creating a request, you should consider the following:

-   You cannot request an item if it has one of the following Item statuses: Aged to lost, Claimed returned, Declared lost, Lost and paid, Missing, or Withdrawn.
-   You can only recall an item if it has one of the following Item statuses: Awaiting delivery, Awaiting pickup, Checked out, In process, In transit, On order, or Paged.

1.  [Find the user record](#searching-for-user-records) to which you want to add a request and select it.
2.  In the **User record** pane, click **Requests**.
3.  Click **Create request**.
4.  In the **New request** window, in the **Item information** box, either scan or enter the barcode of the requested item and click **Enter**. The item is added to the request and its item information appears.
5.  Select a **Request type**. The options that appear depend on the Item status of the item you are requesting.
6.  Optional: Enter a **Request expiration date**. If the request is still open by the selected date, it closes and its status changes to Closed - Unfilled.
7.  Select the **Fulfilment preference**.
8.  Select the **Pickup service point** or **Delivery address**, depending on your selection in the previous step.
9.  Click **Save & close**. The request is saved and the Request Detail pane appears. The patron receives an email notification saying their request was received by the library, [if you have this notification configured](../settings/settings_circulation/settings_circulation/#patron-notice-policies).

## Adding a note to a user record

1.  [Find the user record](#searching-for-user-records) to which you want to add a note and select it.
2.  In the **User record** pane, click **Notes**.
3.  Click **New**.
4.  In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings \> Notes.
5.  Enter a **Note title** in the box.
6.  Optional: Enter any **Details** about the note in the box.
7.  Click **Save & close**. The note is saved.

## Overdue loans report

The Overdue loans report is a comma-separated values (CSV) file that displays all users with overdue materials.

-   In the **User search results** pane, click **Actions \> Overdue loans report (CSV)**. 	Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Claimed returned report

The Claimed returned report is a comma-separated values (CSV) file that displays all users with claimed returned materials.

-   In the **User search results** pane, click **Actions \> Claimed returned report (CSV)**. 	Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.
