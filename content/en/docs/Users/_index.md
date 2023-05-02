---
title: "Users"
linkTitle: "Users"
date: 2023-05-01	
weight: 250
---


The Users app allows you to manage user information for patrons and library staff. Both patrons and library staff's user records are stored in the Users app. There is no separate directory or app for library staff users. The difference between a library staff user and a patron is that the library staff user record has FOLIO permissions, username, and password assigned to it.

Definition of terms related to the Users app:

-  **User.** Any person who interacts with or performs tasks in FOLIO.
-  **User record.** Contains contact information and identifiers for an individual user. User records exist for both patrons and library staff. For a list of all information contained within a user record, see [View a user record](#view-a-user-record).
-  **Permission.** Value assigned to a user, which grants them access to FOLIO records or allows them to carry out specific tasks in FOLIO.
-  **Permission set.** A group of permissions that allows a user to perform a specific set of tasks. For example, you may want to group certain permissions together to create job-specific permissions sets. Permission sets are defined by your library in [Settings \> Users \> Permission sets](../settings/settings_users/settings_users/#settings--users--permission-sets).

## Permissions

The permissions listed below allow you to interact with the Users app and determine what you can and cannot do within the app. If none of these permissions are assigned to a user, they are unable to see the User app or any related information. For more information on permissions, see [Platform Essentials > Permissions](../platform-essentials/permissions/).

The following are all the User permissions:

-  **User import - All permissions.** This permission allows the user to import user records.  
-  **User: Can override item blocks.** This permission allows the user to override an item block in Check Out. 
-  **User: Can override patron blocks.** This permission allows the user to override a patron block for borrowing, requesting, or renewing an item in Check Out.
-  **Users: Can assign and unassign permissions to users.** This permission allows the user to assign or unassign permissions to another user. 
-  **Users: Can assign and unassign service points to users.** This permission allows the user to view and edit service points assigned to users. The user can also view and edit basic user data elements.
-  **Users: Can check open transactions.** This permission allows the user to check for open transactions on a user record. If there are no open transactions, the user record can be deleted.
-  **Users: Can create new user.** This permission allows the user to create a new user record and add User information, Extended information, and Contact Information to the user record. 
-  **Users: Can create, edit and remove fees/fines.** This permission allows the user to create, edit, remove, and view user fees/fines.
-  **Users: Can create, edit and remove patron blocks.** This permission allows the user to see the Patron blocks section on the user record, and view, edit, and create blocks.
-  **Users: Can create, edit and remove proxies.** This permission allows the user to view and edit proxies assigned to a user. The user can also view and edit basic user data elements.
-  **Users: Can delete user profile if user does not have any open transactions.** This permission allows a user profile to be deleted through the UI if the user has no open transactions. This permission must be used with **Users: Can check open transactions**.
-  **Users: Can edit user profile.** This permission allows the user to edit and view the following sections in a user record: User information, Extended information, and Contact information.
-  **Users: Can process lost items requiring actual cost.** This permission allows the user to use the “Lost items requiring actual cost processing” page to bill for lost items. Actual cost will not be fully implemented in Nolana. It is recommended to wait until Orchid to use actual cost processing. 
-  **Users: Can view fees/fines and loans.** This permission allows users to view fees/fines and loans of a user. 
-  **Users: Can view permissions assigned to users.** This permission allows the user to view the permissions assigned to another user. 
-  **Users: Can view proxies assigned to users.** This permission allows the user to see the Proxies section but not edit proxies assigned to a user. This permission also includes the ability to search and view user records (basic user fields only).
-  **Users: Can view service points assigned to users.** This permission allows the user to see the Service points section but not edit service points assigned to a user. This permission also includes the ability to search and view user records (basic user fields only).
-  **Users: Can view user profile.** This permission allows the user to search for user records and view the following sections in a user record: User information, Extended information, and Contact information.
-  **Users: Create and download Cash drawer reconciliation report.** This permission allows the user to create and download a Cash drawer reconciliation report.
-  **Users: Create and download Financial transaction detail report.** This permission allows the user to create and download a Financial transaction detail report. 
-  **Users: Create and download Refunds to process manually report.** This permission allows the user to create and download a report of refunds to process manually. 
-  **Users: Create/reset password.** This permission allows the user to send a password reset email to a user or copy the password reset link to share with a user to use the reset password functionality.
-  **Users: User loans anonymize.** This permission allows the user to remove all user details from a loan. 
-   **Users: User loans change due date.** This permission allows the user to change the due date of a loan on another user's record. 
-   **Users: User loans claim returned.** This permission allows the user to change the status of loaned items to Claim returned.
-  **Users: User loans declare lost.** This permission allows the user to change the status of loaned items to Declared lost.
-  **Users: User loans mark claimed returned missing.** This permission allows the user to change the status of loaned, claim returned items to Missing.
-  **Users: User loans renew.** This permission allows the user to renew loans to the extent that is permitted by the loan policy.
-  **Users: User loans renew through override.** This permission allows the user to override failed renewals.
-  **Users: User loans view.** This permission allows the user to view the Loans section on a user record, view the loans page and loan details. 
-  **Users: User loans view, change due date, renew.** This permission allows the user to view the Loans section on a user record, to change a due date on a loan, and renew loans.
-  **Users: View requests.** This permission allows the user to view the Requests section on a user record. This permission also includes the ability to search and view user records (basic user fields only).

## Keyboard shortcuts

Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform Essentials > Keyboard shortcuts](..platform-essentials/keyboard-shortcuts/keyboardshortcuts/) for more information.

## Creating a user record manually

1.  In the **User Search Results** pane, click **Actions \> New**.
2.  In the **Create User** window, fill in the **User information**, **Extended information**, and **Contact information** sections. Fill in the **Custom fields** sections, if configured by your institution. For more information on the fields and actions available in these sections, see the section descriptions below.
3.  Once you have included all the information you want about the user, click **Save & Close**. The user record is saved.

### User information

-   **Last name (required).** The surname of the user.
-   **First name.** The given name of the user.
-   **Middle name.** The middle name of the user.
-  **Preferred first name.** The name by which the user prefers to be called. If a preferred first name is provided, it will display in the user record in place of the first name. 
-  **Patron group (required).** Select a patron group to assign to the user. Patron groups are classes of library users configured by your library in the Settings app. Examples of patron groups include:
-   **Adult.** Patrons over the age of 18.
-   **Faculty.** Patrons with faculty status at your institution.
-   **Student.** Patrons that are students at your institution.

See [Settings \> Users \> Patron Groups](../settings/settings_users/settings_users/#settings--users--patron-groups) for more information.
-  **Status (required).** Select a status for the user: **Active** or **Inactive.** A user's status is tied to the expiration date set on their user record. Active status indicates current affiliation, employment, or enrollment within the library's institution. Inactive status indicates that the expiration date on the user's record has passed and the user is no longer affiliated, employed, or enrolled. When a **Patron Group** is selected, the **Status** automatically defaults to **Active**.
-  **Expiration date.** The amount of time set before the user record lapses and the user no longer has active permissions or the ability to borrow items. The expiration date determines when a user's status changes from Active to Inactive. Expiration date is optional and this field may be left blank. For information about editing an expiration date, see [Edit an expiration date](#edit-an-expiration-date).
-  **Barcode.** The barcode number for the user's library card.

### Extended information

-  **Date enrolled.** The date a user is enrolled at the institution. This field is auto-populated if it is included in source data provided by an external system. 
-  **External system ID.** The external system ID for the user. This field is auto-populated if it is included in source data provided by an external system. 
-  **Birth date.** The date of birth of the user in YYYY-MM-DD format.
-  **Folio number.** A system-generated number for the user record.
-  **Request preferences.** **Hold Shelf** is selected by default for all users. If **Delivery** is also checked, select **Fulfillment preference**. 
-  If **Delivery** is selected as the **Fulfillment preference**, select the **Default delivery address**. This field appears and is required only if **Delivery** is selected as a request preference. Addresses are added to the user record in the **Contact information** section. See [Users \> Contact information] (#contact-information) for more information.
-   If **Hold Shelf** is selected as the **Fulfillment preference**, select the **Default pickup service point.** All user records have at least one service point assigned to indicate the location for checking out or picking up requested items. Service points are configured by your library in the Settings app. See [Settings \> Tenant \> Service points](#../settings/settings_tenant/settings_tenant/#settings--tenant--service-points) for more information.
-  **Department name.** Name of the user's department, if applicable. The **Add Department** button appears only if **Departments** are configured in [Settings \> Users \> Departments](../settings/settings_users/settings_users/#settings--users--departments).
-  To associate the user with a department, click **Add Department** and select the department from the drop-down list. 
-  Delete **Department** from a user record by clicking the **trash can icon**.  
-  **Username.** The name library staff use to log into FOLIO. Note: Patrons don't have a username because they don't need to log into FOLIO.
-  **Password.** Users can be sent a reset password link via email. This link expires after 24 hours. The password must meet the following default validation rules:
	* Contain a minimum of 8 characters.
	* Contain both uppercase and lowercase letters.
	* Contain at least 1 numeric character.
	* Contain at least 1 special character.
	* Does not contain the username.
	* Does not contain a keyboard sequence.
	* Does not contain the same character.
	* Does not contain whitespace(s).
Note: The institution may decide to apply different password validation rules for their users. 

### Contact information

-   **Email (required).** The email address of the user.
-   **Phone.** The phone number of the user.
-   **Mobile phone.** The mobile phone number of the user.
-   **Preferred contact (required).** Select the user's preferred method of contact: Email, Mail (Primary Address), or Text Message.
-   **Address.** The address of the user. You can add multiple addresses. To add an address, click **Add Address**. Select **Use as primary address** if the address is considered the user's main address. 
-   **Address Type.** Select the appropriate address type for the user's address. Address Types are configured by your library in the Settings app. See [Settings \> Users \> Address Types](../settings/settings_users/settings_users/#settings--users--address-types) for more information.
-  Fill out the address information fields and click **Add Address** to save the address to the user’s record. 

### Custom fields
The **Custom fields** section appears only if it is configured in the **Settings>Users** app. For information on configuring the **Custom fields** section, see [Settings /> Users /> Custom fields](../settings/settings_users/settings_users/#settings--users--custom-fields).

## Search for user records

You can search for user records in the **User search** pane. To search for users, enter your search terms into the box and click **Search**. The user search box searches through these fields: Keyword (name, email, identifier), Barcode, Last Name, or Username. First name or Preferred first name can be used as name in the Keyword field. 

You can also search for user records by selecting any of the filters in the **User search** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information on the filters.

### Status

In the **User search** pane, expand the **Status** accordion if needed and select any applicable filters:

-   **Active.** Users with the Status of Active.
-   **Inactive.** User with the Status of Inactive.

### Patron group

To filter users by their patron group, in the **User search** pane, expand the **Patron Group** accordion if needed and select one of the listed options. 

Patron groups are configured in [Settings \> Users \> Patron groups](../settings/settings_users/settings_users/#settings--users--patron-groups).

### Tags

Tags must be enabled in the [Settings > Tags](../settings/settings_tags/settings_tags/) in order to appear as a filter. To search for user records assigned with specific tags, follow these steps:

1.  In the **User search** pane, expand the **Tags** accordion if needed. 
2.  Select the tag(s) from the drop-down list. The search results appear in the User search results pane. 

## View a user record

Once you search for a user record, the following information appears in the **User search results** pane:
-   **Name.** Name of the user. *Last Name, First Name* or *Last Name, Preferred first name (First name)*
-   **Active.** The status of the user.
-   **Barcode.** The barcode number of the user.
-   **Patron group.** The patron group to which the user belongs.
-   **Username.** The username of the user.
-   **Email.** The email address of the user.

In the **User search results** pane, click on a user record to view it. The User record pane displays additional information about the user record. See the sections below for more information on the accordions that appear in the user record.

### User information

For information about the fields displayed in the User information section, see [Create a user record > User information](#user-information). 

### Patron blocks

Within the Patron blocks section, you can view all blocks on the user record and create manual blocks. For more information on manual blocks, see [Creating a manual patron block](#creating-a-manual-patron-block).

Patron blocks appear in a table format with the most recent block listed first.

### Extended information

For information about the fields displayed in the Extended information section, see [Create a user record \> Extended information](#extended-information). 

### Contact information

For information about the fields displayed in the Contact information section, see [Create a user record \> Contact information](#contact-information).

### Custom fields

Custom fields are configured by your institution and allow additional information in the user record. For more information about custom fields see [Settings \> Users \> Custom fields](../settings/settings_users/settings_users/#settings--users--custom-fields). 

### Proxy/sponsor

The Proxy/sponsor section displays any proxies or sponsors associated with the user record. See [Adding a sponsor to a user record](#adding-a-sponsor-to-a-user-record) or [Adding a proxy to a user record](#add-a-proxy-to-a-user-record) for more information. 

### Fees/fines

The **Fees/fines** section displays the number of *open, closed, suspended claim returned,* and *refunded fees/fines*. For an overview on **Fees/fines**, see [Additional Topics > Fees and fines](..access/additional-topics/feesfines/feesfines/).

To view additional details about the user’s fees/fines, expand the **Fees/Fines** accordion and click on **open fees/fines** or **closed fees/fines**. 

To view all fees/fines, click **View all fees/fines**.  

You can also create manual fees/fines in the **Fees/fines** section. For more information about Manual fees/fines, see [Manual fee/fine notices](#creating-a-manual-feefine). 

### Loans

The Loans section displays the number of *open loans* and *closed loans* on a user’s record.

A patron has an open loan when they have borrowed an item and the item has not yet been returned. A loan is also considered open when the patron has returned the item but owes a fee/fine, or when a patron says they have returned an item and the library marks it as “claim returned” while they search the shelves.

Once an item is returned to the library and checked in, and any associated fee/fines are  resolved, the loan is closed. Once a loan is closed, it can be anonymized. To set up loan anonymization, see [Settings > Circulation > Loan anonymization](../settings/settings_circulation/settings_circulation/#settings--circulation--loan-anonymization). 

To view additional details about the user’s open loans or closed loans, expand the **Loans** accordion and click **open loans** or **closed loans**, respectively.

### Requests

The Requests section displays the number of *open requests* and *closed requests* on a user’s record.

A request is open when a patron has not yet received the item they requested. This can be the case when they are waiting for another patron to return the item, or when the item is being pulled from a shelf (*Open - Not yet filled*, *Open - Awaiting delivery*, or *Open - In transit*). The request is also open if the item has been brought to the requested service point and the patron has been notified to pick it up (*Open - Awaiting pickup*).

A request is closed when the patron picks up the item (*Closed - fulfilled*). It’s also closed if the patron or library staff cancels their request prior to pickup (*Closed - Cancelled*), if the patron didn’t pick up the item before their hold expired (Closed - Pickup expired), or if the library was unable to fill the request before the request itself expired (*Closed - Unfilled*).

To view additional details about the users’ open or closed requests, expand the **Requests** accordion and click **open requests** or **closed requests**, respectively.

You can create requests for the user in the user record or in the **Requests** app. Click the **Create request** button in the **Requests** section of the user record or go to the **Requests** app by selecting **Create request** in the **Actions** menu. For more information about requests, see [Requests](..access/requests/requests/).

### User permissions

The User permissions section displays all permissions assigned to the user record. For more information, see [Assign permissions](#assign-permissions) or [Remove permissions](#remove-permissions) as appropriate.

### Service points

The Service points section displays all service points assigned to the user record, including the user's Service point preference, if applicable. For more information, see [Add a service point](#add-a-service-point) or [Remove a service point](#remove-a-service-point) as appropriate.

### Notes

The Notes section displays any notes about the patron. For more information, see [Add a note](#add-a-note).

## Edit a user record

To edit the User information, Extended information, or Contact information section in a user record, follow these steps: 

1.  [Find the user record](#search-for-user-a-record) you want to edit and select it.
2.  In the **User record** pane, click **Actions \> Edit**.
3.  In the **Edit** window, edit the appropriate information in the [User information](#user-information), [Extended information](#extended-information), or [Contact information](#contact-information) sections.
4.  Click **Save & Close**. The user record is updated.

### Edit an expiration date

To edit (or re-set) an **Expiration Date** in an existing user record:

1.  [Find the User Record](#search-for-a-user-record) you want to edit and select it.
2.  Select the user record from the **User search results** list. Click **Actions \> Edit**.
Customize the expiration date by typing the new date in the **Expiration Date** field using YYYY-MM-DD format. Or click on the **Calendar** icon in the **Expiration Date** field to select a date. 
Reset the date to the default expiration date for the assigned patron group by clicking on the **Re-Set** button in the **Expiration Date** field.
Delete the expiration date by clicking on the **x** in the **Expiration Date** field.
3.  Click **Save & Close**.

### Change a user's status

A user's status can be changed between Active or Inactive based on changes in their employment status or enrollment status. 

1.  [Find the user record](#search-for-a-user-record) you want to edit and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, in the **User Information** section, in the **Status** drop-down list, select **Active** or **Inactive**.
4.  Click **Save & Close**. 

### Send a password reset email

Once a user record is created, a reset password link can be emailed to the user. To send a password reset link:

1.  [Find the user record](#search-for-a-user-record) for which you want to send a password reset email and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, in the **Extended information**, click the **Send reset password email** link under **Folio password**. The reset password email is sent to the email address listed in the user’s **Contact information**.
4.  Optional: In the **Reset password email sent** pop-up window, click **Copy link** to copy the password reset link and manually send the link to the user in a different email application.
5.  Click the **X** to close the pop-up window.

### Add a sponsor 

A **sponsor** is a user who authorizes another user to borrow library materials on their behalf. For example, if you are adding a sponsor to the user record of User One, then User One is the proxy and can borrow on behalf of User Two (the sponsor).

1.  [Find the user record](#search-for-a-user-record) to which you want to add a sponsor and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **Proxy/sponsor** accordion and click **Add** in the **Sponsors** section.
4.  In the **Select User** pop-up window, search for the sponsor user and select them. 
* Optional: In the **sponsor** box, select the **Relationship Status**: **Active** or **Inactive**.
* Optional: Enter or select an **Expiration date**. The Expiration date indicates the expiration of the proxy/sponsor relationship.
* Optional: Select whether the **Proxy can request for the sponsor**. If you select **Yes**, then the proxy can place requests for materials on behalf of the sponsor.
* Optional: Select to whom notifications from the library are sent in the **Notifications sent to** drop-down list: **Proxy** or **Sponsor**.
5.  Click **Add**.
6.  Click **Save & Close**. The **sponsor** is added to the user record.

### Add a proxy

A **proxy** is a user who is authorized to borrow library materials on another user’s behalf. For example, if you are adding a proxy to the user record of User One, then User Two is the proxy and can borrow on the behalf of User One (the sponsor).

1.  [Find the user record](#search-for-a-user-record) to which you want to add a proxy and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **Proxy/sponsor** accordion and click **Add** in the **Proxies** section.
4.  In the **User search** pop-up window, search for the proxy user and select them. 
* Optional: In the **proxy** box, select the **Relationship Status**: **Active** or **Inactive**.
* Optional: Enter or select an **Expiration date**. The Expiration date indicates the expiration of the proxy/sponsor relationship.
* Optional: Select whether the **Proxy can request for the sponsor**. If you select **Yes**, then the proxy can place requests for materials on behalf of the sponsor.
* Optional: Select to whom notifications from the library are sent in the **Notifications sent to** drop-down list: Proxy or Sponsor.
9.  Click **Add**. 
10.  Click **Save & Close**. The **proxy** is added to the user record.

### Assign permissions

Library staff must have permissions assigned to their user record in order to interact with the FOLIO staff interface. Permissions do not need to be assigned to patrons for library services such as borrowing books, requesting items, etc. For a list of permissions and their definitions, see the respective app's Permissions section in the documentation.

To assign permissions to a user’s record:

1.  [Find the user record](#search-for-a-user-record) to which you want to add permissions and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **User permissions** accordion if needed. 
4.  Click **Add permission**.
5.  In the **Select Permissions** pop-up window, search for the permission(s) or permissions set you want to assign to the user. 
Optional: Filter by **Permission type** or **Permission assignment status** in the **Search & Filter** pane.
7.  Select the checkbox(es) next to the permission(s) you want to assign to the user.
8.  Click **Save & close**. The permissions are assigned to the user record.
9.  Click **Save & close**. The user record is saved.

### Remove assigned permission(s)

Permissions can be removed from a user’s record either individually or all at once with one click.

To remove assigned permissions: 
1.  [Find the user record](#search-for-a-user-record) for which you want to remove permissions and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **User permissions** accordion if needed. 
4.  Click the “x” next to the individual permission(s) you want to remove. The permission(s) are removed from the user record.
5.  Click **Save & close**. The user record is saved.

Permissions can also be removed by following a modified version of the process for adding them:

1.  [Find the user record](#search-for-a-user-record) to which you want to remove permissions and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **User permissions** accordion if needed. 
4.  Click **Add permission**.
5.  In the **Select Permissions** pop-up window, search for the permission(s) or permissions set you want to remove from the user. 
Optional: Filter by **Permission type** or **Permission assignment status** in the **Search & Filter** pane.
7.  Deselect the **checkbox** next to the permission(s) you want to remove from the user.
8.  Click **Save & close**. The permission(s) are removed from the user record.
9.  Click **Save & close**. The user record is saved.

To remove all assigned permissions from the user’s record in one click: 
1.  [Find the user record](#search-for-a-user-record) to which you want to remove permissions and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **User permissions** accordion if needed. 
4.  Click the **Unassign all permissions** button.
5.  In the **Unassign all permissions** pop-up window, click **Yes** to confirm that you want to unassign all permissions. All assigned permissions will be removed from the user’s record.  

### Add or remove a service point 

A service point in FOLIO is a setting that libraries configure to support circulation functions. Every FOLIO item must have a location, and every location must have an attached service point. You must set up at least one service point to be able to check items in and out; allow patrons to request items; charge and collect fines; and put items in transit between locations at your library. 

Staff who use the Check in, Check out, Users, or Requests apps must have at least one service point assigned to them in their user record. Service points are configured for your library in the Settings app. See [Settings \> Tenant \> Service Points](../settings/settings_tenant/settings_tenant/#settings--tenant--service-points) for more information. 

To add one or more service points to a user record:

1.  [Find the user record](#search-for-user-records) to which you want to add a service point and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **Service points** accordion if needed. 
4.  Click **Add service points**. 
5.  In the **Add service points** pop-up window, select the **checkboxes** next to the service point(s) you want to assign to the user record.
*  If more than one service point is assigned to the user record, select a service point from the **Service point preference** drop-down menu. This is optional but if left empty, the user will have to select the service point every time they log in to FOLIO. 
6.  Click **Save & close**. The service point(s) are assigned to the user record.
7.  Select a **Service point preference** from the drop-down list. If you select **None**, then the user is prompted to select a service point every time they sign in to FOLIO.
8.  Click **Save & Close**. The service point(s) are added to the user record.

To remove one or more service points from a user record:

1.  [Find the user record](#search-for-a-user-record) to which you want to remove a service point and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **Service points** accordion if needed. 
4.  Click the “x” next to the service point(s) you want to remove. The service point(s) are removed from the user record.
5. Click **Save & close**. The user record is saved.

Service points can also be removed by following a modified version of the process for adding them:

1.  [Find the user record](#search-for-a-user-record) to which you want to remove a service point and select it.
2.  In the **User record** pane, click **Edit**.
3.  In the **Edit** window, expand the **Service points** accordion if needed. 
4.  Click **Add service points**. 
5.  In the **Add service points** pop-up window, deselect the **checkboxes** next to the service point(s) you want to remove from the user record.
6.  Click **Save & Close**. The service point(s) are removed from the user record.

### Add or remove a tag

Note that tags must be enabled for your FOLIO instance in order to use tags in the Users app. See [Settings > Tags](../settings/settings_tags/settings_tags/) for more information. 

To add a tag to a user record:

1.  [Find the user record](#search-for-a-user-record) to which you want to add a tag and select it.
2.  In the **User record** pane, click the **tag icon** next to the **Actions** button.
3.   If you want to use an existing tag, select it from the drop-down list. If you want to create a new tag, type the tag into the box and select **Add tag for** the new tag name in the drop-down. 4.  Click the **X** on the **Tags** pane to close the pane and save the tag. The tag number updates to the number of tags applied to the user record.

To remove a tag from a user record:

1.  [Find the user record](#search-for-a-user-record) to which you want to add a tag and select it.
2.  In the **User record** pane, click the **tag icon** next to the **Actions** button.
3.  Click the **X** next to the tag to be removed.  
4.  Click the **X** on the **Tags** pane to close the pane. The tag number updates to the number of tags applied to the user record.

### Create a manual patron block

Patron blocks allow libraries to manually prevent a patron from borrowing, renewing, and/or requesting materials until specified issues are resolved. Users with appropriate permissions can edit manual blocks on a patron’s record to update block information, actions, or remove the block. The block is displayed prominently on the user record so that staff members are aware that a patron is blocked and why. If an expiration date is provided on the patron block, the block is automatically removed on that date.

A patron block can be added to a user record by either selecting a patron block template or by creating a patron block. 

To create a patron block using a patron block template, follow these steps:
1.  [Find the user record](#search-for-a-user-record) of the patron you want to block and select it. 
2. In the **User record** pane, expand the **Patron blocks** accordion if needed. 
3. Click **Create block**.  
4. Select a patron block template from the **Template name** menu. Template values will be applied to the block.
5. Add any additional information to the block and select an expiration date if needed.
6. Click **Save & close.** The block is saved and added to the user record.

To create a patron block and add it to a user record, follow these steps:
1.  [Find the user record](#search-for-a-user-record) of the patron you want to block and select it.
2. In the **User record** pane, expand the **Patron blocks** accordion.
3.  Click **Create block**.
4.  In the **New Block** window, expand the **Block information** accordion if needed. Enter a **Display Description**. This is the description that displays on the user record and in pop-up windows that appear when staff try to check out, renew, or request items on behalf of the patron, depending on their block.
5.  Optional: Enter **Staff only information**.
6.  Optional: Enter a **Message to Patron**.
7.  Optional: Enter an **Expiration date** on which the block expires.
8.  By default, all **Block actions** are selected. These are the actions that the user is barred from doing because of the block. To allow some of the actions, clear the **checkbox** next to **Borrowing**, **Renewals**, or **Requests**.
9.  Click **Save & close**. The block is saved and added to the user record.

### Edit a patron block

1.  [Find the user record](#search-for-a-user-record) of the patron with the block you want to edit and select it.
2.  In the **User record** pane, expand the **Patron blocks** accordion.
3.  In the **block table**, select the **block** you want to edit.
4.  In the **user block** window, make your changes.
5.  Click **Save & Close**. The patron block is updated.

### Remove a patron block

Patron blocks with expiration dates are automatically removed on that date. 

To remove a patron block with no assigned expiration date, follow these steps:

1.  [Find the user record](#search-for-a-user-record) of the patron with the block you want to edit and select it.
2.  In the **User record** pane, expand the **Patron blocks** accordion.
3.  Select the block you want to remove
4.  In the user record window, click **Delete**.
5.  In the **Delete patron block?** pop-up window, click **Delete**. The patron block is removed.

### Create a request

Requests can be created in three ways: In the Requests app; in the user record in the Users app; or from the item record in the Inventory app. For information on creating requests, see [Creating a request](../access/requests/requests/#creating-a-request)

### Add a note 

To add a note to a user record: 

1.  [Find the user record](#search-for-user-records) to which you want to add a note and select it.
2.  In the **User record** pane, expand the **Notes** accordion if needed. 
3.  Click **New**.
4.  In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information about note types, see [Settings > Notes > General](../settings/settings_notes/settings_notes/#settings--notes--general).
5.  Enter a **Note title** in the box.
6.  Optional: Enter any **Details** about the note in the box.
7. If this note should appear as a pop-up whenever the user record is opened in the Check Out and/or Users app, check the **Check Out app** box and/or the **User app** box under the **Display note as a pop-up**. 
8.  Click **Save & close**. The note is saved.

## Deleting A User Record in the UI 

A user record can be deleted only if the user has no open transactions. To delete a user record, first check for open transactions. Once it’s confirmed that the user has no open transactions, the user record can be deleted.

Follow these steps to check for open transactions and delete a user record in the UI:

[Find the user record](#search-for-a-user-record) for which you want to check for open transactions and select it.
In the **Actions** menu, select **Check for open transactions/delete user**. 
If there are no open transactions for this user, the message *No open transactions for user (Last Name, First Name). Are you sure you want to delete this user?* will appear in the **Check for open transactions/delete user** window.  
Click **Yes** to delete the user record. A *User (Last Name, First Name) deleted successfully* message will confirm deletion of the user record. 
Or click **No** to cancel the deletion and return to the user record. 
If there are one or more open transactions for the user, the message *User (Last Name, First Name) has the following open transactions. Please resolve the transactions to proceed to delete this user.* Click **OK** to return to the user record. 

If the deleted user had permissions to edit records, the Source on the metadata history becomes listed as "Unknown user".

## Create a report

### Overdue loans report

The Overdue loans report is a comma-separated values (CSV) file that displays all users with overdue materials.

To create an overdue loans report: 
In the **User search results** pane, click **Actions \> Overdue loans report (CSV)**. 	
Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no overdue loans to report, a *No items found* message appears and no file is generated. 

### Claimed returned report

The Claimed returned report is a comma-separated values (CSV) file that displays all users with claimed returned materials.

To create a Claimed returned report:

In the **User search results** pane, click **Actions \> Claimed returned report (CSV)**.
Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no claimed return items to report, a *No items found* message will appear and no file is generated.

### Cash drawer reconciliation report

The Cash drawer reconciliation report is used by library staff to balance their cash drawer at the end of a shift. The cash drawer reconciliation report shows forms of payments received (cash, check, credit card, and other forms of payment allowed by the library unit) for fees and fines and identifies the fee/fine owner so that the appropriate library unit receives payment. The cash drawer reconciliation report is available for download as a comma-separated values (CSV) file and/or printable document format (PDF).

To create a Cash drawer reconciliation report: 

In the **User search results** pane, click **Actions \>Cash drawer reconciliation report (CSV, PDF)**. 
In the **Cash drawer reconciliation report** modal, enter a **Start Date* (required) and an **End Date**. Select **Service Point** and **Sources** (optional). 
Select **Report format**. You may select *CSV*, *PDF (Read Only)*, or *Both*.
Click **Save & close**.
Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no transactions to report, a *No items found* message appears and no file is generated.

### Financial transaction detail report

The Financial transaction detail report allows libraries to review transactions in a specified time period at the fee/fine owner level. 

To create a Financial transaction detail report: 

In the **User search results** pane, click **Actions \>Financial transaction detail report (CSV)**. 
In the **Financial transaction detail report** modal, specify a date range by entering a **Start date** and an **End date**. Select the **Fee/fine owner**. Select the **Associated service points** (optional). 
Click on **Save & close**. 
Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no transactions to report, a *No items found* message appears and no file is generated.

### Refunds to process manually report

The Refunds to process manually report is a report that provides library administration with a list of patrons requiring refunds. It is available for download as a comma-separated values (CSV) file. 

To create a Refunds to process manually report: 

In the **User search results** pane, click **Actions \>Refunds to process manually report (CSV)**. 
In the **Refunds to process manually** modal, specify a date range by entering a **Start Date** and an **End Date**. Select the **Fee/Fine Owner**.
Click **Save & close**. 
Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If no there are no refunds to process manually, a *No items found* message appears and no file is generated. 

## Managing loans and fee/fines for patrons

From the loans section on a patron’s record, a FOLIO user with appropriate permissions can renew a loan for a patron; change the due date; mark the item claim returned; or declare the item lost. For more information about loans, see [Additional Topics \> Loans](../access/additional-topics/loans/loans/).

FOLIO users with appropriate permissions can manage fee/fines on patron accounts. This includes viewing fee/fine information, creating manual charges, accepting payment, waiving a fine, refunding a fine, and canceling a fine. For more information about fee/fines, see [Additional Topics \> Fees and fines](../access/additional-topics/feesfines/feesfines/). 

### Renew a loan

To renew one or more loans for a patron:
1. In the user record pane, expand the **Loans** accordion if needed.  
2. Click on **Open loans**. 
3. Use the check boxes on the left of the **Loans** window to select the appropriate loan(s).
4. Click the **Renew** button located in the top right corner of the **Loans** window.

If the renewal was successful, you will see a green success message in the bottom right corner. The new due date may be sooner than expected if the normal due date would be after a patron’s account has expired.
If the renewal was not successful, a pop-up message will appear. If you have the correct permissions, you can click **Override** from the pop-up window to override the error and renew the loan.

Alternatively, you can renew a loan by clicking on **Renew** in the **Actions** column. 

### Change a due date

To change due dates on one or more loans for a patron:
1. In the user record pane, open the **Loans** accordion if needed. 
2. Click on **open loans**.
3. Select the check boxes on the left of the **Loans** window to select the appropriate loan(s).
4. Click the **Change due date** button located in the top right corner of the **Loans** window. 
5. In the pop-up window that appears, enter a new due date and time or select one from the calendar drop-down.
6. Click **Save and close**.

Note that if you have permissions to change a loan’s due date, you can change the due date/time to one in the past; FOLIO will give you a warning message but allow the change to go through.

### Mark an item claim returned

Occasionally, patrons may tell libraries that they have returned items that are still listed as checked out to them. The library has the option to mark the item as “claim returned.” This will place any associated fines in a suspended state while libraries can carry out workflows to search for the item on their shelves.

To mark an item claim returned:
1. In the user record pane, expand the **Loans** accordion if needed.
2. Use the check boxes on the left of the **Loans** window to select the appropriate loan(s).
3. Click the **Claim returned** button located in the top right corner of the **Loans** window.
4. In the pop-up window that appears, enter additional information about the patron’s claim 
5. Click **Confirm**.

The loan will remain in the patron’s list of open loans, but the item status will show that the item is claimed returned.

If the library cannot locate the claimed returned item, it will need to decide whether to bill the patron for the item or mark the item missing without charging fines. In FOLIO, this action is referred to as resolving a claim.

To resolve a claim on an item:
1. Click the appropriate loan to open the *Loan details* window.
2. Click the button marked **Resolve claim** on the top row.
3. If you are going to bill the patron for the item, choose **Declare lost**. If you will not be billing the patron for the item, choose **Mark as missing**.
4. In the pop-up window that appears, FOLIO will show a message to confirm the action you wish to take. Enter any additional information about the patron’s claim (required).
5. Click **Confirm**.

If you choose to declare the item lost, FOLIO will check the associated lost item fee policy for the loan and charge fees/fines as configured in that policy.

### Mark an item declared lost

FOLIO has two options to show that an item has been borrowed and not returned - “aged to lost” and “declared lost.” Aged to lost is an automated status that FOLIO gives to an item when the item is not returned by the date specified in the lost item policy. Declared lost is a manual status that library staff can use when a patron tells the library that they cannot return the item because they can no longer find it or because it had been inadvertently damaged.

Library staff can only mark one loan declared lost at a time.

To mark a loan declared lost:
1. Click the appropriate loan to open the *Loan details* window.
2. Click *Declare lost* at the top of the window.
3. In the pop-up window that appears, enter additional information about the circumstances of the loan (required)
4. Click **Confirm**.

When an item is declared lost, FOLIO will check the associated lost item fee policy for the loan and charge fees/fines as configured in that policy.

### Creating a manual fee/fine

Note that your library must configure fee/fine settings prior to charging fee/fines to patrons. See [Settings > Users > Owners](../settings/settings_users/settings_users/#settings--users--owners) and [Settings > Users> Manual Charges](../settings/settings_users/settings_users/#settings--users--manual-charges) for more information.

1.  [Find the user record](#searching-for-user-records) to which you want to add a fee/fine and select it.
2.  In the **User record** pane, expand the **Fees/fines** accordion if needed.
3.  Click **Create fee/fine**.
4.  In the **New fee/fine** window, select the **Fee/fine owner**.
5.  Select the **Fee/fine type**.
6.  In the **Fee/fine amount** box, you can do one of three things:
Keep the default fee/fine amount, if one is populated for the fee/fine type.
Adjust the default fee/fine amount, if it is populated for the fee/fine type.
Provide a fee/fine amount, if one did not populate.
7.  Optional: To associate the fee/fine with an item, scan or enter the item barcode into the **Item information** box and click **Enter**.
8.  Optional: Enter any **Additional information for staff** in the box.
9. Click **Charge only** to apply the charge to the patron record. FOLIO users with appropriate permissions may be able to create the fine and immediately accept payment by clicking **Charge & pay now**.
10.  Click either **Charge & pay now** to charge the patron and process the payment or **Charge Only** to only apply the charge to the user record.

### Accepting payment for a fee/fine

1.  [Find the user record](#searching-for-user-records) to which you want to accept payment for a fee/fine and select it.
2.  In the **User record** pane, expand the **Fees/fines** accordion if needed.
3. Select **(number of) open fee/fine** to view the patron’s open fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to accept payment for.
5. The **Fee/fine details** modal will open. Click **Actions \> Pay **.
6. The **Pay fee/fine** modal opens. Enter the Payment amount (required). FOLIO can handle full and partial payment. If you are accepting partial payment, the modal will calculate the remaining amount.
7. Select **Payment method** (required).
8. Input **Transaction information** and **Additional information for staff**. The **Additional information for staff** box may be required if your library has configured that option.
9. Click **Pay**, then **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the payment transaction. 

### Waiving a fee/fine

Staff with appropriate permissions can apply a partial or full waive to a fee/fine.

1.  [Find the user record](#searching-for-user-records) to which you want to accept payment for a fee/fine and select it.
2.  In the **User record** pane, expand the **Fees/fines** accordion if needed.
3. Select **(number of) open fee/fine** to view the patron’s open fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to waive.
5. The **Fee/fine details** modal will open. Click **Actions \> Waive**.
6. The **Waive fee/fine** modal will open. Enter the amount to waive (required). You can waive some or all of the fine amount.  If you are only waiving part of the fine, FOLIO will automatically calculate the remaining amount. 
7. Select the **Waive reason** (required) and enter **Additional information for staff**. The **Additional information for staff** box may be required if your library has configured that option.
8. Click **Waive**, then **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the payment transaction.

### Refund a fee/fine

Staff with appropriate permissions can partially or fully refund a fee/fine. The payment method must allow refunds. 

1.  [Find the user record](#searching-for-user-records) to which you want to refund a payment and click it.
2.  In the **User record** pane, expand the **Fees/fines** accordion if needed.
3. Select **View all fees/fines** to view the patron’s fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to refund a payment for. It may be **Open** or **Closed**.
5. The **Fee/fine details** modal will open. Click **Actions \>Refund**.
6. The **Refund fee/fine** modal will open. Enter the amount to refund (required). You can refund some or all of the fine amount.  If you are only refunding part of the fine, FOLIO will automatically calculate the remaining amount. 
7. Select the **Refund reason** (required) and enter **Additional information for staff**. The **Additional information for staff** box may be required if your library has configured that option.
8. Click **Refund**, then **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the payment transaction.

### Mark a fee/fine as error (Cancel fee/fine)

Staff with appropriate permissions can mark a fee/fine as an error; this has the effect of canceling the fee/fine.

Note that an error can only be applied to a fine in an **Outstanding** payment status. Marking a fine as an error is intended to be used when the fine is charged as a result of a staff or system/error and as such none of it should be paid.

1.  [Find the user record](#searching-for-user-records) to which you want to refund a payment and click it.
2.  In the **User record** pane, expand the **Fees/fines** accordion if needed.
3. Select **View all fees/fines** to view the patron’s fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to refund a payment for. It may be **Open** or **Closed**.
5. The **Fee/fine details** modal will open. Click **Actions \> Error**.
6. The **Confirm fee/fine cancellation** modal will open. Enter **Additional information for staff** (required).
7. Click **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the cancellation transaction.


## Processing lost items requiring actual cost

Libraries may choose to use **Actual cost** for some or all of the fines that they charge patrons. With the actual cost model, libraries review each loan after it ages to lost in order to charge the patron a specific amount for the item, rather than a flat amount based on the associated loan policy.

### View Lost items requiring actual cost

In the Users app, select **Actions \> Lost items requiring actual cost.** A new full-window pane will open.

### Search & filter for lost items 

You can search for lost item charges by patron name or instance title.

You can filter your search results by
- **Loss type**. You can filter to see just loans that were aged to lost, or just loans that were declared lost.
- **Date of loss range**. You can specify a start date or end date for when the item became lost.
- **Fee/fine owner**. You can filter on one or more fee/fine owners to see their specific actual cost items.

### Applying a bill for an actual cost list item

In order to bill a patron the actual cost for a lost item, you first search for the loss record. Once you have located the record you want to apply the bill for:

1. Find the loss record for the item you wish to bill. Click **Actions \> Bill actual cost**.
2. On the **Actual cost to bill** modal, input the amount to bill. Include **Additional information for staff** and **Additional information for patron** if desired. Click **Continue**.
3. A confirmation modal will appear. If you wish to change anything, click **Keep editing** to return to the previous modal. To proceed and bill the patron, click **Confirm**.

Once you confirm billing the patron, you will see **Billed** appear in the actions column with the amount charged. If you refresh the page or close your browser tab, the next time you open the **Lost items regarding actual cost** modal, the lost item record will no longer appear in the list of items to review.

### Processing an actual cost item without billing the patron

There will be cases when libraries will decide not to bill a patron for the lost item, but still need to process and close the charge.

To mark a lost item record as “Do not bill”:

1. Find the loss record for the item you wish to mark “Do not bill.” Click **Actions \> Do not bill**.
2. On the **Do not bill** modal, input **Additional information for staff** if desired. Click **Continue**.
3. A confirmation modal will appear. Review the information. If you wish to change anything, click **Keep editing** to return to the previous modal. To proceed with not billing the patron, click **Confirm**.

If you proceed with not billing the patron, you will see Not billed appear in the Actions column for that record. If you refresh the page or close your browser tab, the next time you open the **Lost items regarding actual cost** modal, the charge that you decided not to bill will no longer be visible in the Users app.

Note that if you choose **Do not bill** and the patron did not also have a lost item processing fee, that marking the lost item record as **Do not bill** will close the loan and change the item status to **Lost and paid**. FOLIO does not currently differentiate item statuses to indicate if an item was lost and the patron paid for it, or if the item was lost and the patron did not pay for it.
