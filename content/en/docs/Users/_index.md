---
title: "Users"
linkTitle: "Users"
date: 2025-05-08     
weight: 250
---

**This section of the documentation contains links to external sites. Please be advised that these sites are not maintained by the FOLIO Documentation Group and may not be aligned with the current release of FOLIO.**

The Users app allows you to manage user information for patrons and library staff. Both patrons and library staff's user records are stored in the Users app. There is no separate directory or app for library staff users. The difference between a library staff user and a patron is that the library staff user record has FOLIO permission(s), username, and  assigned to it. 

Definition of terms related to the Users app:

- **applicationId**. Also referred to as **Application**. An attribute of a capability or capability set that identifies the platform for a FOLIO application.
- **Application**. See **applicationID**. For Users capabilities and capability sets, the Application is *app-platform-complete*.
- **Authorization role**. See **User role**.
- **Capabilities**. Ability assigned to a user to perform an action in a FOLIO application.  
- **Capability Sets**. A set of individual capabilities.
- **permissionDisplayName (OKAPI)**. The permission set name displayed in the Okapi platform (pre-Sunflower release). 
-  **Resource (EUREKA)**. An operation that can be performed in a FOLIO application.
- **Type (Data)**. Capabilities that allow the user to directly manage resources in FOLIO.
- **Type (Procedural)**. Capabilities that allow the user to initiate and control processes in FOLIO.
- **Type (Settings)**. Capabilities that allow the user to manage FOLIO configurations administratively.
-  **User.** Any person who interacts with or performs tasks in FOLIO.
-  **User record.** Contains contact information and identifiers for an individual user. User records exist for both patrons and library staff. For a list of all information contained within a user record, see [View a user record](#view-a-user-record).
-  **User role.** Also known as **Authorization role**. Comprised of capabilities or capability sets, allows a user to perform role-based actions in a FOLIO application.


## Capabilities and Capability Sets

The Eureka platform, adopted in the Sunflower release, replaces permission sets with **Capabilities** and **Capability sets** for role-based management of user accounts. For more information about **Capabilities** and **Capability sets**, see [Roles Management with Eureka](https://folio-org.atlassian.net/wiki/x/BIATLw).

The following **Capabilities** allow interaction with the Users app. 

For all Users capabilities:

- **Application** is *app-platform-complete*. 

| permissionDisplayName (OKAPI) | Resource (EUREKA) | Type | Action | 
| :----- | :----- | :-----: | :-----: | 
| *User import - all permissions* | *User-Import* | Data | Manage |
| *User: Can override item blocks* | *UI-Users Override-Item-Block* | Procedural | Execute |
| *User: Can override patron blocks* | *UI-Users Override-Patron-Block* | Procedural | Execute |
| *Users: Can assign and unassign permissions to users* | *UI-Users Perms* | Data | Edit |
| *Users: Can assign and unassign service points to users* | *UI-Users User-Service-Points* | Data | Edit |
| *Users: Can check open transactions* | *UI-Users Open-Transactions* | Data | View |
| *Users: Can create and edit users* | *UI-Users* | Data | Create |
| *Users: Can create, edit and remove fees/fines* | *UI-Users Feesfines Actions* | Data | Manage |
| *Users: Can create, edit and remove patron blocks* | *UI-Users Patron-Blocks* | Data | Manage |
| *Users: Can create, edit and remove proxies* | *UI-Users Proxies* | Data | Manage |
| *Users: Can delete user profile if user does not have any open transactions* | *UI-Users* | Data | Delete |
| *Users: Can edit user profile* | *UI-Users* | Data | Edit | 
| *Users: Can process lost items requiring actual cost* | *UI-Users Lost-Items-Requiring-Actual-Cost* | Procedural | Execute |
| *Users: Can view fees/fines and loans* | *UI-Users Feesfines* | Data | View |
| *Users: Can view permissions assigned to users* | *UI-Users Perms* | Data | View |
| *Users: Can view profile pictures* | *UI-Users Profile-Pictures* | Data | View | 
| *Users: Can view proxies assigned to users* | *UI-Users Proxies* | Data | View |
| *Users: Can view reading room access* | *UI-Users Reading-Room-Access* | Data | View | 
| *Users: Can view service points assigned to users* | *UI-Users User-Service-Points* | Data | View |
| *Users: Can view and edit reading room access* | *UI-Users Reading-Room-Access* | Data | Edit |
| *Users: Can view, edit, and delete profile pictures* | *UI-Users Profile-Pictures* | Data | Manage |
| *Users: Create and download Cash drawer reconciliation report* | *UI-Users Cash-Drawer-Report* | Procedural | Execute |
| *Users: Create and download Financial transaction detail report* | *UI-Users Financial-Transaction-Report* | Procedural | Execute |
| *Users: Create and download Refunds to process manually report* | *UI-Users Manual-Process-Refunds-Report* | Procedural | Execute |
| *Users: Create/reset password* | *UI-Users Reset Password* | Procedural | Execute |
| *Users: User loans anonymize* | *UI-Users Loans-Anonymize* | Procedural | Execute |
| *Users: User loans change due date* | *UI-Users Loans-Due-Date* | Data | Edit |
| *Users: User loans claim returned* | *UI-Users Loans-Claim-Item-Returned* | Procedural | Execute |
| *Users: User loans declare lost* | *UI-Users Loans-Declare-Item-Lost* | Procedural | Execute |
| *Users: User loans mark claimed returned missing* | *UI-Users Loans-Declare-Claimed-Returned-Item-As-Missing* | Procedural | Execute |
| *Users: User loans renew* | *UI-Users Loans-Renew* | Data | Create |
| *Users: User loans renew through override* | *UI-Users Loans-Renew-Override* | Data | Create |
| *Users: User loans view* | *UI-Users Loans* | Data | View |
| *Users: User loans view, change due date, renew* | *UI-Users Loans* | Data | Manage |
| *Users: User loans: add staff or patron information* | *UI-Users Loans-Add-Info* | Data | Create |
| *Users: View and remove patron notice print jobs* | *UI-Users Patron-Notice-Print-Jobs* | Data | Delete |
| *Users: View patron notice print jobs* | *UI-Users Patron-Notice-Print-Jobs* | Data | View |
| *Users: Can view user profile* | *UI-Users* | Data | View |
| *Users: Can view, edit, and delete profile pictures* | *UI-Users Profile-Pictures* | Data | Manage |
| *Users: View requests* | *UI-Users Requests* | Data | Manage |


## Keyboard shortcuts


Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform Essentials \> Keyboard shortcuts](../platform-essentials/keyboard-shortcuts/keyboardshortcuts/) for more information.


## Creating a user record manually


1. In the **User Search Results** pane, click **Actions \> New**.
2. In the **Create User** window, fill in the [**User information**](#user-information), [**Extended information**](#extended-information), and [**Contact information**](#contact-information) sections. For more information, see the section descriptions below.
3. Fill in the fields in the **Custom fields** sections, if configured by your institution.
4. Click **Save & Close**. The user record is saved.


### User information


-   **Last name (required).** The surname of the user.
-   **First name.** The given name of the user.
-   **Middle name.** The middle name of the user.
-  **Preferred first name.** The name by which the user prefers to be called. If a preferred first name is provided, it will display in the user record in place of the first name. 
-  **Patron group (required).** Select a patron group to assign to the user. Patron groups are classes of library users configured in [Settings \> Users \> Patron Groups](../settings/settings_users/settings_users/#settings--users--patron-groups).
-  **Status (required).** Select a status for the user: **Active** or **Inactive.** A user's status is tied to the expiration date set on their user record. When a **Patron Group** is selected, the **Status** automatically defaults to **Active**.
    -  **Active** status indicates current affiliation, employment, or enrollment at the library's institution. 
    -  **Inactive** status indicates that the expiration date on the user's record has passed or the user is no longer affiliated, employed, or enrolled at the library's institution. An inactive user cannot log in to FOLIO, checkout or renew an item, or place a request. Patron notices continue to be sent to inactive patrons, and open fines continue to be included in transfer reports.
-  **Expiration date.** The expiration date determines when a user's status is scheduled to change from **Active** to **Inactive**. Expiration date is optional and this field may be left blank. For information on editing an expiration date, see [Edit an expiration date](#edit-an-expiration-date).
-  **Barcode.** The barcode number for the user's library card. Type the barcode number in the **Barcode** field. If your institution has enabled the number generator for the Users app and your user has the applicable capabilities, you may use the number generator to generate the barcode. For more information, see [Using Number Generators Within Apps](../settings/settings_service_interaction/settings_service_interaction/#using-number-generators-within-apps).
-  **User Type.** Select the user type: **Patron** or **Staff**. This field is required in [ECS-enabled tenants](../consortia/). This field is also required for non-ECS-enabled tenants using [Reading Room Access](../access/reading-room/reading_room/). Otherwise, use of the **User type** field is optional.
    -  **Patrons.** Users who may borrow library materials but have no FOLIO permissions assigned to their User record and do not log in to FOLIO to manage their library accounts.
    -  **Staff.** Users who are employed by the library, have FOLIO permissions assigned to their User record for the purpose of performing their library work, and may borrow library materials.
-  **Pronouns.** Type the preferred pronouns for the user. 
-  **Profile picture.** If profile pictures are enabled in the FOLIO tenant, the patron’s profile picture (100px x 100px) is displayed in the user record. For more information, see [Configuration setting for Profile-Picture Feature](https://github.com/folio-org/mod-users?tab=readme-ov-file#configuration-setting-for-profile-picture-feature).


### Extended information


-  **Date enrolled.** The date a user is enrolled at the institution. This field is auto-populated if it is included in source data provided by an external system. 
-  **External system ID.** The external system ID for the user. This field is auto-populated if it is included in source data provided by an external system. 
-  **Birth date.** The date of birth of the user in YYYY-MM-DD format.
-  **Folio number.** A system-generated number for the user record.
-  **Request preferences.** The user’s preference for picking up requested items.
    - **Hold Shelf** is selected by default for all user records. Select the **Default pickup service point.** All user records have at least one service point assigned to indicate the location for checking out or picking up requested items. Service points are configured in [Settings \> Tenant \> Service points](../settings/settings_tenant/settings_tenant/#settings--tenant--service-points).
    - If **Delivery** is also selected as a **Request preference**, select the **Fulfillment preference**.
    - If Delivery is selected as a **Fulfillment preference**, select the **Default delivery address**. This field appears and is required only if **Delivery** is selected as a fulfillment preference. Addresses are stored in the **Contact information** section of the User record. See [Users \> Contact information](#contact-information) for more information.
-  **Department name.** Name of the user's department, if applicable. To associate the user with a department, click **Add Department** and select the department from the drop-down list. The **Add Department** button appears only if **Departments** are configured in [Settings \> Users \> Departments](../settings/settings_users/settings_users/#settings--users--departments).
-  **Default pickup service point.** Select the default pickup service point for the user from the drop-down menu. Service points are configured in [Settings \> Tenant \> Service points](../settings/settings_tenant/settings_tenant/#settings--tenant--service-points).
-  **Username.** If the **User Type** is set to Staff, **Username** is used by the user to log into FOLIO to perform library work. If the **User Type** is set to Patron, the **Username** is not required, but may be assigned for the purpose of connecting a user's library account in FOLIO with an external system, such as a discovery interface or a self-checkout system. However, patrons will not log into FOLIO to manage their library accounts.
-  **Password.** -  Once the user record is created and saved, a reset password link can be sent via email. See [Send reset password email](#send-reset-password-email) for more information.


### Contact information

-   **Email (required).** The email address of the user.
-   **Phone.** The phone number of the user.
-   **Mobile phone.** The mobile phone number of the user.
-   **Preferred contact (required).** Select the user's preferred method of contact: Email, Mail (Primary Address), or Text Message.
-   **Preferred email communications**. Select the user’s preferred email communications: Programs, Services, or Support. More than one option may be selected.
-   **Address.** The address of the user. To add an address, click **Add Address**. If more than one address is entered, select **Use as primary address** for the user’s main address. Select the appropriate **Address type** and fill out the address information fields. Click **Add Address** to save the address to the user’s record. **Address Types** are configured in [Settings \> Users \> Address Types](../settings/settings_users/settings_users/#settings--users--address-types).


### Custom fields

The **Custom fields** section appears only if it is configured in [Settings \> Users \> Custom fields](../settings/settings_users/settings_users/#settings--users--custom-fields).

Note: on Trillium, if a custom field is created using non-Roman characters, an error toast will appear (in the User record and while on the Custom Fields settings page) that a "required attribute is missing". A fix is coming but the workaround is to create a new custom field with a valid title, and the invalid field will be removed.

## Search for user records


You can search for user records in the **Search & Filter** pane. To search for users, select **Keyword (name, email, identifier)** to search any of these fields: 

    - Username
    - First Name
    - Preferred First Name
    - Last Name
    - Middle Name
    - Email
    - Barcode
    - User UUID
    - External System Id
    - Custom Fields with the "Text Field" or "Text Area" custom field types (if Custom fields are configured)

Or search by **Barcode**, **Last Name**, or **Username** fields.

You can also select a search filter in the **User search** pane. To apply a filter, open the appropriate accordion and select an option for that filter. The filters available include:

-  **Status**: **Active** or **Inactive**
-  **Patron group**: Patron groups are configured in [Settings \> Users \> Patron groups](../settings/settings_users/settings_users/#settings--users--patron-groups).
-  **Departments**. Departments are configured in [Settings \> Users \> Departments](../settings/settings_users/settings_users/#settings--users--departments).
-  **Tags**: Tags must be enabled in the [Settings \> Tags](../settings/settings_tags/settings_tags/) in order to appear as a filter. 


## View a user record


Once you search for a user record, the following information [User information](#user-information) appears as column headings in the **User search results** pane:


-   **Name.** Name of the user. *Last Name, First Name* or *Last Name, Preferred first name (First name)*
-   **Active.** The status of the user.
-   **Barcode.** The barcode number assigned to the user.
-   **Patron group.** The patron group assigned to user.
-   **Username.** The username of the user.
-   **Email.** The email address of the user.


In the **User search results** pane, click on a user record to view it. The **User details** pane displays details in the user record. 


### User information


See [User information](#user-information). 


### Patron blocks


See [Create block](#create-block).


### Extended information


See [Extended information](#extended-information). 


### Contact information


See [Contact information](#contact-information).


### Custom fields


See [Settings \> Users \> Custom fields](../settings/settings_users/settings_users/#settings--users--custom-fields). 


### Reading room access

If configured, the **Reading room access** section displays which reading rooms a user is allowed to access within the library. For more information, see [Reading room access](../access/reading-room/reading_room/).


### Proxy/sponsor


The Proxy/sponsor section displays any proxies or sponsors associated with the user record. See [Add a sponsor](#add-a-sponsor) or [Add a proxy](#add-a-proxy) for more information. 


### Fees/fines


The **Fees/fines** section displays the number and monetary amount of open, closed, suspended claim returned, and refunded fees/fines. To view additional details about the user’s fees/fines, expand the **Fees/fines** accordion and click on **open fees/fines** or **closed fees/fines**. To view all fees/fines, click **View all fees/fines**. 


For more information on **Fees/fines**, see [Additional Topics \> Fees and fines](../access/additional-topics/feesfines/feesfines/).  


### Loans


The **Loans** section displays the number of open loans and closed loans on a user’s record. To view additional details about the user’s open loans or closed loans, expand the **Loans** accordion and click **open loans** or **closed loans**, accordingly.
-  **Open loans**. A patron has an **open loan** when they have borrowed an item and the item has not yet been returned. A loan is also considered open when the patron has returned the item but owes a fee/fine, or when a patron says they have returned an item and the library marks it as *claim returned* while they search the shelves.
-  **Closed loans**. Once an item is returned to the library and checked in, and any associated fees/fines are  resolved, the loan is closed. Once a loan is closed, it can be anonymized if **loan anonymization** is set up. For more information, see [Anonymizing a loan that has been checked in](../access/check-in/checkin/#anonymizing-a-loan-that-has-been-checked-in).


### Requests


The **Requests** section displays the number of **open requests** and **closed requests** on a user’s record. 

-  **Open requests**. A request is open when the user has not yet picked up the requested item. This can be the case when the user is waiting for another patron to return the item, or when the item is being pulled from a shelf (*Open - Not yet filled*, *Open - Awaiting delivery*, or *Open - In transit*). The request is also open if the item has been brought to the requested service point and the patron has been notified to pick it up (*Open - Awaiting pickup*).

-  **Closed requests**. A request is closed when the user picks up the requested item (*Closed - Filled*). A request is also closed if the user or library staff cancels the request prior to pickup (*Closed - Cancelled*), if the user did not pick up the item before the hold expired (*Closed - Pickup expired*), or if the library was unable to fill the request before the request itself expired (*Closed - Unfilled*).


To view additional details, expand the **Requests** accordion and click **open requests** or **closed requests**, accordingly. For more information, see [Requests](../access/requests/requests/).


### User roles

The Eureka platform, adopted in the Sunflower release, replaces permission sets with **Capabilities** and **Capability sets** for role-based management of user accounts. See [Roles Management in Eureka](https://folio-org.atlassian.net/wiki/x/BIATLw).

User roles can be added or unassigned to users in the Users app. See [Add or unassign user roles](#add-or-unassign-user-roles).


### Service points


The **Service points** section displays all service points assigned to the user record, including the user's service point preference, if applicable. For more information on service points, see [Settings \> Tenant \> Service Points](../settings/settings_tenant/settings_tenant/#settings--tenant--service-points).


### Notes


The Notes section displays any notes about the user. For more information, see [Settings \> Notes](../settings/settings_notes/settings_notes).


## Edit a user record


1. [Find the user record](#search-for-user-records) you want to edit and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. In the **Edit** window, open the appropriate accordion, if necessary, and make the desired edits.
5. Click **Save & Close**. 

### Change a user's status


A user's status can be changed between **Active** or **Inactive** based on changes in their employment status or enrollment status. 


1. [Find the user record](#search-for-user-records) you want to edit and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. In the **Edit** window, open the **User Information** accordion, if necessary. In the **Status** drop-down list, select **Active** or **Inactive**.
4. Click **Save & Close**. 


### Edit an expiration date


To edit (or re-set) an **Expiration date** in an existing user record:


1. [Find the user record](#search-for-user-records) you want to edit and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Open the **User information** section accordion, if necessary. 
4. Edit, reset, or remove the expiration date.
   
    - Type the new expiration date in the **Expiration date** field using the YYYY-MM-DD format. or click on the **Calendar** icon to select a new date. 
    - Reset the date to the default **Expiration date** for the user’s assigned patron group by clicking on the **Re-set** button. 
    - Remove the expiration date by clicking on the **x** in the **Expiration Date** field.
      
5. Click **Save & Close**.


### Update a Profile picture


If Profile pictures are enabled in the FOLIO tenant, then library staff with appropriate assigned capabilities can upload, update, or delete profile pictures in a user record. Supported file formats include .jpg, .jpeg, and .png. For more information about configuring Profile pictures, see [Configuration setting for Profile-Picture Feature](https://github.com/folio-org/mod-users?tab=readme-ov-file#configuration-setting-for-profile-picture-feature).


To upload a **Profile picture** to a user record:
1. [Find the user record](#search-for-user-records) you want to edit and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Click the **Update** button under the profile picture placeholder. 
    - **Local file**: Choose this option to select an image file from your computer. 
        - In the **Preview and Edit** modal, use the **Zoom** or **Rotate** sliders to adjust the image, if necessary. 
        - Click **Save** to finish the upload. The Profile picture is now attached to the user record. 
    - **External URL**: Choose this option to link to an externally hosted image. 
        - In the **Update profile picture** modal, add the URL for the image in the **External URL** text box. 
        - Click **Save** to save the URL and link the image to the user record. Note that if the URL is not valid, or is a non-image URL, the message, *The provided URL is valid but does not point to an image file* displays below the External URL text box and the modal does not close.

To update or delete a **Profile picture** in a user record:

1. [Find the user record](#search-for-user-records) you want to edit and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Click the **Update** button under the profile picture placeholder. 
    - **Local file**: Choose this option to select an image file from your computer. 
        - In the **Preview and Edit** modal, use the **Zoom** or **Rotate** sliders to adjust the image, if necessary. 
        - Click **Save** to finish the upload. The Profile picture is now attached to the user record. 
    - **External URL**: Choose this option to link to an externally hosted image. 
        - In the **Update profile picture** modal, add the URL for the image in the **External URL** text box. 
        - Click **Save** to save the URL and link the image to the user record. Note that if the URL is not valid, a red error text displays below the External URL text box that reads "Invalid image URL" and the modal does not close.
    - **Delete**: This option displays only if a Profile picture is currently attached to the user record. Choose this option if you wish to remove the Profile picture from the user record. 


### Send reset password email


Once a user record is created, a reset password link can be emailed to the user. However, this feature should be used only for staff users since patrons will not and should not log into FOLIO to manage their library accounts. The default password reset expiration time is 24 hours.

The password must meet the following default validation rules:

    	* Contain a minimum of 8 characters.
    	* Contain both uppercase and lowercase letters.
    	* Contain at least 1 numeric character.
    	* Contain at least 1 special character.
    	* Does not contain the username.
    	* Does not contain a keyboard sequence.
    	* Does not contain the same character.
    	* Does not contain whitespace(s).

An institution may apply different password validation rules or configure password reset times.  

To send a password reset email:


1. [Find the user record](#search-for-user-records) for which you want to send a password reset email and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. In **Extended information** section, click the **Send reset password email** link under **Folio password**. The reset password email is sent to the email address listed in the user’s **Contact information**.
4. Optional: Copy the link displayed in the **Reset password email sent** modal and manually send the link to the user using a different email application. 
5. Click the **X** to close the pop-up window.


### Edit Reading room access


A user's **Reading room access** can be edited in the Users app. A **User type** must be assigned to the user in order to view or edit the **Reading room access** section of the User record.  


1. [Find the user record](#search-for-user-records) you want to edit and select it.
2. In the **User details** pane, click **Actions > Edit.**
3. Expand the **Reading room access** accordion. A **User type** must be assigned in order to view and edit the **Reading room access** section of the User record. 
4. In the **Access** column, select **Allowed** or **Not allowed.** This setting can be overridden in the Reading room app.
5. Optionally, add a **note.**
6. Click **Save & Close.**


### Add a sponsor 


A **sponsor** is a user who authorizes another user to borrow library materials on their behalf. 


1. [Find the user record](#search-for-user-records) to which you want to add a sponsor and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **Proxy/sponsor** accordion and click **Add** in the **Sponsors (...can borrow on behalf of these people)** section.
4. In the **Select User** pop-up window, search for the sponsor and select them.
5. Optionally, include additional information about the Proxy/sponsor relationship:
   
    -  **Relationship Status**: **Active** or **Inactive**.
    -  **Expiration date**. Indicates the date when the **Relationship status** will change to Inactive. Type a date using the YYYY-MM-DD format or select a date using the calendar picker. 
    -  **Proxy can request for the sponsor**.
        - *Yes*: The **Proxy** can place requests for materials on behalf of the **Sponsor**.
        - *No*: The **Proxy** cannot place requests for material on behalf of the **Sponsor**.
    -  **Notifications sent to**. Select whether **Proxy** or **Sponsor** should receive notifications from the library. (Functionality to send notifications to the proxy is pending [UXPROD-3937](https://folio-org.atlassian.net/browse/UXPROD-3937).)
 
6. Click **Add**.
7. Click **Save & Close**. The **Sponsor** is added to the user record.


### Add a proxy


A **Proxy** is a user who is authorized to borrow library materials on another user’s behalf. 


1. [Find the user record](#search-for-user-records) to which you want to add a proxy and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **Proxy/sponsor** accordion and click **Add** in the **Proxies (these people can borrow on behalf of…)** section.
4. In the **User search** pane, search for the proxy and select them. 
5. Optionally, include additional information:

    -  **Relationship Status**: **Active** or **Inactive**.
    -  **Expiration date**. The expiration date indicates the date when the **Relationship status** will become inactive. Type a date using the YYYY-MM-DD format or select a date using the calendar icon. 
    -  **Proxy can request for sponsor**. 
        -  *Yes*: The **Proxy** can place requests for materials on behalf of the **Sponsor**.
        -  *No*: The **Proxy** cannot place requests for material on behalf of the **Sponsor**.
    -  **Notifications sent to**. Select whether **Proxy** or **Sponsor** should receive notifications from the library. (Functionality to send notifications to the proxy is pending UXPROD-3937.

6. Click **Add.**
7. Click **Save & Close**. The **Proxy** is added to the user record.


### Add or unassign user roles

To add one or more user roles to a user: 

1. [Find the user record](#search-for-user-records) to which you want to add a user role and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **User roles** accordion and click the **Add user roles** button.
4. In the **Select User roles** modal, search for the user role and/or filter by **Role assignment status**.
5. Check the box(es) next to the desired **User role(s)** to select them.  
6. Click **Save & close** to assign the selected user role(s) to the user record.

To unassign one, multiple, or all user roles: 

1. [Find the user record](#search-for-user-records) to which you want to unassign a user role and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **User roles** accordion.

    - To unassign a user role, click the *x* icon next to the assigned user role. One or more user roles may be selected for unassignment.
    - To unassign all user roles, click the **Unassign all user roles** button. A *You are unassigning all user roles _ username _. Are you sure?* message displays in the **Unassign user roles** modal. Click **Yes** to confirm and remove all user roles from the user record.
    
4. In the **Select User roles** modal, search for the user role and/or filter by **Role assignment status**.
5. Check the box(es) next to the desired **User role(s)** to select them.
6. Click **Save & close** to assign the selected user role(s) to the user record.

See [Settings/Authorization roles: Users App](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Users-App) for more information.


 ### Add or remove a service point 


A **Service point** in FOLIO is a setting that libraries configure to support circulation functions. Staff who use the Check in, Check out, Users, or Requests apps must have at least one service point assigned to their user record. Service points are configured for your library in the Settings app. See [Settings \> Tenant \> Service Points](../settings/settings_tenant/settings_tenant/#settings--tenant--service-points) for more information. 


To add one or more service points to a user record:


1. [Find the user record](#search-for-user-records) to which you want to add a service point and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **Service points** accordion if needed. 
4. Click **Add service points**. 
5. In the **Add service points** modal, select the checkbox(es) next to the service point(s) you want to assign to the user record.
6. Click **Save & close**. The service point(s) are assigned to the user record.
7. Select a **Service point preference** from the drop-down list. This is optional but if left empty or **None** is selected, the user will have to select a service point every time they log in to FOLIO. 
8. Click **Save & Close**. The service point(s) are added to the user record.


To remove one or more service points from a user record:


1. [Find the user record](#search-for-user-records) to which you want to remove a service point and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **Service points** accordion if needed. 
4. Click the “x” next to the service point(s) to remove them from the user record.
5. Click **Save & close.** The service point(s) are removed from the user record.
6. Click **Save & close**. The user record is saved.


Service points can also be removed by following a modified version of the process for adding them:


1. [Find the user record](#search-for-user-records) to which you want to remove a service point and select it.
2. In the **User details** pane, click **Actions \> Edit**.
3. Expand the **Service points** accordion, if needed. 
4. Click **Add service points**. 
5. In the **Add service points** pop-up window, deselect the checkboxes next to the service point(s) you want to remove from the user record.
6. Click **Save & Close**. The service point(s) are removed from the user record.
7. Click **Save & close**. The user record is saved.


### Add a note 

Note types are created in the Settings app. For more information, see [Settings \> Notes \> General](../settings/settings_notes/settings_notes/#settings--notes--general).

To add a note to a user record: 

1. [Find the user record](#search-for-user-records) to which you want to add a note and select it.
2. In the **User details** pane, expand the **Notes** accordion, if needed.
3. Click **New**.
4. In the **New note** window, select the **Note type** from the drop-down list.
5. Enter a **Note title** in the box.
6. Optional: Enter any **Details** about the note in the box.
7. If this note should appear as a pop-up whenever the user record is opened in the Check Out and/or Users app, check the **Check Out app** box and/or the **User app** box under the **Display note as a pop-up** as appropriate.
8. Click **Save & close**. The note is saved to the user record.

### Add or remove a tag


**Tags** must be enabled in your FOLIO tenant in order to use tags in the Users app. See [Settings \> Tags](../settings/settings_tags/settings_tags/) for more information. 


To add a tag to a user record:


1. [Find the user record](#search-for-user-records) to which you want to add a tag and select it.
2. In the **User details** pane, click the **tag icon** next to the **Actions** button.
3. If you want to use an existing tag, select it from the drop-down list. If you want to create a new tag, type the tag into the box and select **Add tag for**.
4. Click the **X** on the **Tags** pane to close the pane and save the tag. The tag number updates to the number of tags applied to the user record.


To remove a tag from a user record:


1. [Find the user record](#search-for-user-records) to which you want to add a tag and select it.
2. In the **User details** pane, click the **tag icon** next to the **Actions** button.
3. Click the **X** next to the tag to be removed.  
4. Click the **X** on the **Tags** pane to close the pane. The tag number updates to the number of tags applied to the user record.


### Create request

**Requests** can be created in three ways: 1) In the **Requests** app; 2) in the user record in the **Users** app; or 3) in the item record in the **Inventory** app. For more information, see [Creating a request](../access/requests/requests/#creating-a-request).


### Create fee/fine
A **Fee/fine** can be manually created after checking in a returned item. For more information, see [Creating a new fee/fine](../access/check-in/checkin/#creating-a-new-feefine). 


### Create block

**Blocks** can be manually added to a user’s record to prevent them from borrowing, renewing, and/or requesting library materials until the specified issues are resolved. The **Block** is displayed prominently on the user’s record so that library staff member are aware of the block and can conduct transactions accordingly. If an expiration date is provided, the **Block** is automatically removed from the user’s record on that date.

Users with appropriate permissions can update block information, actions, or remove the block from the user’s record.
 
Patron block templates must be set up in your FOLIO tenant before using them to create a patron block. See [Settings \> Users \> Patron Block Templates](../settings/settings_users/settings_users/#settings--users--templates) for more information.


To create a Block using a patron block template:


1. [Find the user record](#search-for-user-records) of the patron you want to block and select it.
2. In the **User details** pane, click **Actions \> Create block** or expand the **Patron blocks** accordion, if needed, and click **Create block**.
3. Select a patron block template from the **Template name** menu. Template values will be applied to the block.
4. Add any additional information to the block and select an expiration date if needed.
5. Click **Save & close.** The patron block is saved and added to the user record. 


To create a Block without a patron block template: 


1. [Find the user record](#search-for-user-records) of the patron you want to block and select it.
2. In the **User details** pane, click **Actions \> Create block** or expand the **Patron blocks** accordion, if needed, and click **Create block**.
3. In the **New Block** window, expand the **Block information** accordion, if needed. 
    - **Display Description**. This is the message that displays when library staff open the user’s record in the Check out, Requests, and Users apps.
    - **Staff only information**. Optional. This is a note for library staff. 
    - **Message to Patron**. Optional. This is a message to the patron. 
    - **Expiration date**. Optional. Date upon which the **Block** expires.
    - **Block actions**. By default, all **Block actions** are selected and indicate which actions the user is unable to do because of the Block. To allow some of the actions, clear the checkbox(es) next to **Borrowing**, **Renewals**, or **Requests** as appropriate.
4. Click **Save & close**. The **Block** is saved and added to the user record.


### Edit a block


1. [Find the user record](#search-for-user-records) of the patron with the block you want to edit and select it.
2. In the **User details** pane, expand the **Patron blocks** accordion.
3. In the block table, select the block you want to edit.
4. Make your changes in the user record window.
5. Click **Save & Close**. The Block is updated.


### Remove a block


**Blocks** with expiration dates are automatically removed from the user record on that date. 


To remove a **Block** with no assigned expiration date, follow these steps:


1. [Find the user record](#search-for-user-records) of the patron with the block you want to edit and select it.
2. In the **User details** pane, expand the **Patron blocks** accordion.
3. Select the block you want to remove.
4. In the user record window, click **Delete**.
5. In the **Delete patron block?** modal, click **Delete** to confirm the action. The patron block is removed from the user record.


## Check for open transactions/delete user


To delete a user record, first check for open transactions. Once it’s confirmed that the user has no open transactions, the user record can be deleted.


To check for open transactions and delete user:


1. [Find the user record](#search-for-user-records) for which you want to check for open transactions and select it.
2. In the **Actions** menu, select **Check for open transactions/delete user**. 
3. If there are no open transactions for this user, the message *No open transactions for user (Last Name, First Name). Are you sure you want to delete this user?* will appear in the **Check for open transactions/delete user** modal.  
    -  Click **Yes** to delete the user record. A *User (Last Name, First Name) deleted successfully* message will confirm deletion of the user record. 
    -  Click **No** to cancel the deletion and return to the user record. 
4. If there are one or more open transactions for the user, the message *User (Last Name, First Name) has the following open transactions. Please resolve the transactions to proceed to delete this user.* Click **OK** to return to the user record. 


If the deleted user had permissions to edit records, the **Source** on the metadata history becomes listed as *Unknown user*.


## Reports

Reports may be generated and viewed from the **Actions** menu in the **User search results** pane of the Users landing page or the **User details** pane of a user record.


### Lost items requiring actual cost

The **Lost items requiring actual cost** report is a list that displays in the UI and contains information about open loan items with **Aged to lost** status. To use this report to manage billings for lost items, **Actual cost** must be set up in at least one **Lost item fee policy**. For more information about using actual cost for lost items, see [Creating a lost item fee policy](../settings/settings_circulation/settings_circulation/#creating-a-lost-item-fee-policy).


To view a **Lost items requiring actual cost** report: 
1. In the **User search results** pane, click **Actions \> Lost items requiring actual cost**.
2. In the **Actions** column of the report, click on the ellipse in the appropriate row to view the options for billing the patron: 
    - **Bill actual cost**: This option creates a bill for the patron. To bill for actual cost, a manual fee/fine is applied. If this option is selected, an **Actual cost to bill [patron’s name]** dialog displays with the **Fee/fine type** and **Fee/fine owner** information. Enter the actual cost of the item in the **Actual cost to bill patron** box. Add **Additional information for staff** or **Additional information for patron** as appropriate. Click **Continue**. An **Confirm actual cost** dialog appears to warn you that the patron will be billed. Click **Confirm** to proceed with billing.
    - **Do not bill**: This option allows the library to waive the bill for the lost item. If this option is selected, a **Do not bill** dialog displays with the **Fee/fine type** and **Fee/fine owner** information. The **Actual cost to bill patron** is automatically assigned to zero. Library staff can add information in the **Additional information for staff** if desired. Click **Continue** to waive the bill.
    - **Patron details**: This option opens the patron’s user record in a separate pane. 
    - **Loan details**: This option opens the Loan details in a separate window. Library staff can change the loan status of the item, add **New patron info** or **New staff info** as appropriate. 
    - **Item details**: This option displays the Item record in a new window.  

### View patron notice print jobs

If a library is required to send print overdue notices to their patrons, the **View patron notice print jobs (PDF)** provides a daily report of patron notices. This PDF file is automatically generated overnight every 24 hours using the assigned patron notice template(s). In this release, this option appears in the Actions menu, but the PDF file is actually generated only for libraries that have set up reminder fees in their overdue fine policies. For more information about reminder fees, see [Reminder fees](../access/additional-topics/feesfines/feesfines/#reminder-fees). 

To view patron notice print jobs: 
1. In the **User search results** pane, click **Actions \> View patron notice print jobs (PDF)**.
2. In the **Patron notice print jobs** window, click on the link for the report you wish to view. 

To delete a patron notice print job: 

1. In the **Patron notice print jobs** window, check the box next to the print job you wish to delete. To select all of the print jobs for deletion, check the box next to **Created**.
2. Click **Actions \> Delete selected print jobs**. Note that no warning or confirmation message appears before deleting the selected print job.


### Overdue loans report


The Overdue loans report is a comma-separated values (CSV) file that displays all users with overdue materials.


To create an **Overdue loans report**: 
1. In the **User search results** pane, click **Actions \> Overdue loans report (CSV)**.         
2. Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no overdue loans to report, a *No items found* message appears and no file is generated. 


### Claimed returned report


The Claimed returned report is a comma-separated values (CSV) file that displays all users with claimed returned materials.


To create a **Claimed returned report**:


1. In the **User search results** pane, click **Actions \> Claimed returned report (CSV)**.
2. Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no claimed return items to report, a *No items found* message will appear and no file is generated.


### Cash drawer reconciliation report


The Cash drawer reconciliation report is used by library staff to balance their cash drawer at the end of a shift. The cash drawer reconciliation report shows forms of payments received (cash, check, credit card, and other forms of payment allowed by the library unit) for fees and fines and identifies the fee/fine owner so that the appropriate library unit receives payment. The cash drawer reconciliation report is available for download as a comma-separated values (CSV) file and/or printable document format (PDF).


To create a **Cash drawer reconciliation report**: 


1. In the **User search results** pane, click **Actions \> Cash drawer reconciliation report (CSV, PDF)**. 
2. In the **Cash drawer reconciliation report** modal, enter a **Start Date* (required) and an **End Date**. Select **Service Point** and **Sources**. 
3. Select **Report format**. You may select *CSV*, *PDF (Read Only)*, or *Both*.
4. Click **Save & close**.
5. Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no transactions to report, a *No items found* message appears and no file is generated.


### Financial transaction detail report


The Financial transaction detail report allows libraries to review transactions in a specified time period at the fee/fine owner level. Fee/fine owners must be set up in your FOLIO tenant in order to create a Financial transaction detail report. See [Settings \> Users \> Owners](../settings/settings_users/settings_users/#settings--users--owners) for more information.


To create a **Financial transaction detail report**: 


1. In the **User search results** pane, click **Actions \> Financial transaction detail report (CSV)**. 
2. In the **Financial transaction detail report** modal, specify a date range by entering a **Start date** and an **End date**. Select the **Fee/fine owner** (required). Select the **Associated service points**.
3. Click on **Save & close**. 
4. Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If there are no transactions to report, a *No items found* message appears and no file is generated.


### Refunds to process manually report


The Refunds to process manually report is a report that provides library administration with a list of patrons requiring refunds. It is available for download as a comma-separated values (CSV) file. Fee/fine owners must be set up in your FOLIO instance in order to create a **Refunds to process manually report**. See [Settings \> Users \> Owners](../settings/settings_users/settings_users/#settings--users--owners) for more information.


To create a **Refunds to process manually report**: 


1. In the **User search results** pane, click **Actions \> Refunds to process manually report (CSV)**. 
2. In the **Refunds to process manually** modal, specify a date range by entering a **Start Date** and an **End Date**. Select the **Fee/Fine Owner**.
3. Click **Save & close**. 
4. Depending on your browser and its configurations, an *Export in progress* message appears and the file automatically downloads or you are prompted to save it. If no there are no refunds to process manually, a *No items found* message appears and no file is generated. 


## Managing loans


In the **Loans** section of a user’s record, a user with appropriate permissions can print due date receipts, renew a loan for a patron, change a due date, mark an item claim returned, or declare an item lost. For more information, see [Additional Topics \> Loans](../access/additional-topics/loans/loans/).

### Due date receipts

Due date receipts can be printed from the **Loan details** in the Users or Check out apps.

To print a **Due date receipt** from the **Loan details** page in the Users app:

1. In the Users app, [find the user record](#search-for-user-records) and select it.
2. Expand the **Loans** accordion and click on **Open loan**.
3. In the **Loan details** modal, click on the open loan to select it. If the user has more than one open loan, check the boxes next to the **Item title** column to print the due date receipt.
4. Click the **Print due date receipt** button.


To print a **Due date receipt** from the **Loan details** page in the Check out app:

1. In the Check out app, check an item out to the user.
2. In the **Scan items** pane, click on the ellipse in the **Action** column.
3. Select **Loan details**.
4. Click on the **Print due date receipt** button. 


### Renew a loan


To renew one or more loans for a patron:


1. In the user record pane, expand the **Loans** accordion if needed.  
2. Click on **Open loans**. 
3. Use the check boxes on the left of the **Loans** window to select the appropriate loan(s).
4. Click the **Renew** button located in the top right corner of the **Loans** window.


If the renewal is successful, a green success message appears in the bottom right corner of the screen. The new due date may be sooner than expected if the normal due date would be after a patron’s account has expired.


If the renewal is not successful, a pop-up message will appear. If you have the correct permissions, you can click **Override** from the pop-up window to override the error and renew the loan.


### Mark an item claim returned


Occasionally, patrons may claim that they have returned items that are still listed as checked out to them. The library has the option to mark the item as “claim returned.” This will place any associated fines in a suspended state while libraries carry out workflows to search for the item on their shelves.


To mark an item claim returned:


1. In the user record pane, expand the **Loans** accordion if needed.
2. Use the check boxes on the left of the **Loans** window to select the appropriate loan(s).
3. Click the **Claim returned** button located in the top right corner of the **Loans** window.
4. In the **Confirm claim returned** modal, enter additional information about the patron’s claim (required).
5. Click **Confirm**.


The loan will remain in the patron’s list of open loans, but the item status will change to **Claim returned**.


If the library cannot locate the claimed returned item, it will decide whether to bill the patron for the item or mark the item missing without charging fines. In FOLIO, this action is referred to as resolving a claim.


To resolve a claim on an item:


1. Click the appropriate loan to open the *Loan details* window.
2. Click the button marked **Resolve claim** on the top row.
3. If you are going to bill the patron for the item, choose **Declare lost**. If you will not be billing the patron for the item, choose **Mark as missing**.
4. In the pop-up window that appears, FOLIO will show a message to confirm the action you wish to take. Enter any additional information about the patron’s claim (required).
5. Click **Confirm**.


If you choose to declare the item lost, FOLIO will check the associated lost item fee policy for the loan and charge fees/fines as configured in that policy.


### Change a due date


To change the due date on one or more loans for a patron:


1. In the user record pane, open the **Loans** accordion if needed. 
2. Click on **open loans**.
3. Select the check boxes on the left of the **Loans** window to select the appropriate loan(s).
4. Click the **Change due date** button located in the top right corner of the **Loans** window. 
5. In the **Change due date** modal, enter a new Date by using the MM/DD/YYYY format or select one from the calendar picker. Select a Time by clicking on the clock icon, choosing a time, and clicking on the **Set time** button.
6. Click **Save and close**.


Note that if you have permissions to change a loan’s due date, you can change the due date/time to one in the past. FOLIO will give you a warning message but allow the change to go through.


### Mark an item Declared lost


FOLIO has two options to show that an item has been borrowed and not returned - “aged to lost” and “declared lost.” Aged to lost is an automated status that FOLIO gives to an item when the item is not returned by the date specified in the lost item policy. Declared lost is a manual status that library staff can use when a patron tells the library that they cannot return the item because they can no longer find it or because it had been inadvertently damaged.


Library staff can only mark one loan declared lost at a time.


To mark a loan declared lost:


1. Click the appropriate loan to open the *Loan details* window.
2. Click *Declare lost* at the top of the window.
3. In the **Confirm item status: Declared lost** modal, enter additional information about the circumstances of the loan (required)
4. Click **Confirm**.


When an item is declared lost, FOLIO will check the associated lost item fee policy for the loan and charge fees/fines as configured in that policy.


### Add patron info to an open loan


A note can be added to an open loan. This note can be set to display for the patron and staff. To add patron info to an open loan on a user’s record:

To add patron information to an open loan on a user’s record:
1. [Find the user record](#search-for-user-records) and select it.
2. In the **User details** pane, expand the **Loans** accordion and click on **Open loan(s)** and select the open loan you wish to add the patron info to.
3. In the **Loans** modal, click on the **New patron info** button.
4. In the **Add new patron information** modal, type in the **Additional information**. Note that this new information will supersede any patron information added previously.
5. Click **Save & close** to save the patron information to the open loan. 


### Add staff info to an open loan


A note can be added to an open loan. The note can be viewed by staff with proper assigned permissions only. 


To add staff information to an open loan on a user’s record:
1. [Find the user record](#search-for-user-records) to which you want to add **New staff information** and select it.
2. In the **User record** pane, expand the **Loans** accordion and click on **Open loan(s)**. 
3. Click on the Loan you wish to add staff info to. The **Loan details** window appears. 
4. Click on the **New staff info** button. 
5. In the **Add new staff information** modal, type in the **Additional information**. 
6. Click **Save & close** to save the staff information in the open loan.


### View staff info or patron info on a closed loan

Whenever an open loan is checked in, the loan becomes closed and the staff info or patron info is retained in the loan details. To view **Patron info** or **Staff info** on a closed loan: 

1. [Find the user record](#search-for-user-records) to which you want to view **Staff info** or **Patron info** and select it.
2. In the **User details** pane, expand the **Loans** accordion and click on **Closed  loan(s)**.
3. Click on the closed loan to select it. The **Loan details** window appears and displays *Staff info only* and *Patron info only* for the closed loan. 


## Managing fees/fines

In the **Fees/fines** section, users with appropriate permissions can manage fee/fines in user records. This includes viewing fee/fine information, creating manual charges, accepting payment, waiving a fine, refunding a fine, and canceling a fine. For more information, see [Additional Topics \> Fees and fines](../access/additional-topics/feesfines/feesfines/). 

### View fees/fines

See [Fees/fines](#feesfines).

### Export fees/fines

If the user has open fines, the fee/fine information can be exported into a .csv file and downloaded onto your computer. 

To export fees/fines:

1. [Find the user record](#search-for-user-records) to which you want to add a fee/fine and select it.
2. In the **User record** pane, expand the **Fees/fines** accordion if needed.
3. Click **Actions \> Export fees/fines**.
4. A .csv file containing the user’s fee/fine information is downloaded to your computer. 

### Create a fee/fine


To create a manual fee/fine, **Fee/fine types** and other fee/fine settings must be configured in the FOLIO tenant. See [Settings \> Users \> Manual Charges](../settings/settings_users/settings_users/#settings--users--manual-charges) for more information.

To manually create a fee/fine in a user record:
1. [Find the user record](#search-for-user-records) to which you want to add a fee/fine and select it.
2. In the **User details** pane, expand the **Fees/fines** accordion if needed.
3. Click **Create fee/fine**.
4. In the **New fee/fine** window, select the **Fee/fine owner**.
5. Select the **Fee/fine type**.
6. In the **Fee/fine amount** box, you can do one of three things:
    - Keep the default fee/fine amount, if one is populated for the fee/fine type.
    - Adjust the default fee/fine amount, if it is populated for the fee/fine type.
    - Provide a fee/fine amount, if one did not populate. See [Lost items requiring actual cost](#lost-items-requiring-actual-cost).
7. Optional: To associate the fee/fine with an item, scan or enter the item barcode into the **Item information** box and click **Enter**.
8. Optional: Enter any **Additional information for staff** in the box.
9. Click **Charge only** to apply the charge to the patron record. FOLIO users with appropriate permissions may be able to create the fine and immediately accept payment by clicking **Charge & pay now**.
10. Click either **Charge & pay now** to charge the patron and process the payment or **Charge Only** to only apply the charge to the user record.


### Accepting payment for a fee/fine


To accept payment for a fee/fine, **Fee/fine owner** and other fee/fine settings must be configured in the FOLIO tenant. For more information, see [Settings \> Users \> Payment Methods](../settings/settings_users/settings_users/#settings--users--payment-methods). 

To accept payment for a fee/fine:

1. [Find the user record](#search-for-user-records) to which you want to accept payment for a fee/fine and select it.
2. In the **User details** pane, expand the **Fees/fines** accordion if needed.
3. Select **(number of) open fee/fine** to view the patron’s open fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to accept payment for.
5. The **Fee/fine details** modal will open. Click **Actions \> Pay**.
6. The **Pay fee/fine** modal opens. Enter the payment amount. FOLIO can handle full and partial payment. If you are accepting partial payment, the modal will calculate the remaining amount.
7. Select **Payment method** (required).
8. Input **Transaction information** and **Additional information for staff**. The **Additional information for staff** box may be required if your library has configured that option.
9. Click **Pay**, then **Confirm**.

The modal will close and the **Fee/fine details** page will update with the payment transaction. 


### Waiving a fee/fine


Staff with appropriate permissions can apply a partial or full waive to a fee/fine. To waive fines, **Fee/fine: Waive reasons** and other fee/fine settings must be configured in the FOLIO tenant. For more information, see [Settings \> Users \> Waive reasons](../settings/settings_users/settings_users/#settings--users--waive-reasons).


1. [Find the user record](#search-for-user-records) to which you want to accept payment for a fee/fine and select it.
2. In the **User details** pane, expand the **Fees/fines** accordion if needed.
3. Select **(number of) open fee/fine** to view the patron’s open fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to waive.
5. The **Fee/fine details** modal will open. Click **Actions \> Waive**.
6. The **Waive fee/fine** modal will open. Enter the amount to waive (required). You can waive some or all of the fine amount.  If you are only waiving part of the fine, FOLIO will automatically calculate the remaining amount. 
7. Select the **Waive reason** (required) and enter **Additional information for staff**. The **Additional information for staff** box may be required if your library has configured that option.
8. Click **Waive**, then **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the payment transaction.


### Refund a fee/fine


Staff with appropriate permissions can partially or fully refund a fee/fine. The payment method must allow refunds and **Fee/fine: Refund reasons** must be configured in the FOLIO tenant. See [Settings \> Users \> Fee/fine: Refund reasons](../settings/settings_users/settings_users/#settings--users--refund-reasons). 


1. [Find the user record](#search-for-user-records) to which you want to refund a payment and click it.
2. In the **User details** pane, expand the **Fees/fines** accordion if needed.
3. Select **View all fees/fines** to view the patron’s fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to refund a payment for. It may be **Open** or **Closed**.
5. The **Fee/fine details** modal will open. Click **Actions \> Refund**.
6. The **Refund fee/fine** modal will open. Enter the amount to refund (required). You can refund some or all of the fine amount.  If you are only refunding part of the fine, FOLIO will automatically calculate the remaining amount. 
7. Select the **Refund reason** (required) and enter **Additional information for staff**. The **Additional information for staff** box may be required if your library has configured that option.
8. Click **Refund**, then **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the payment transaction.


### Mark a fee/fine as error (Cancel fee/fine)


Staff with appropriate permissions can mark a fee/fine as an error which has the effect of canceling the fee/fine.


Note that an error can only be applied to a fine in an **Outstanding** payment status. Marking a fine as an error is intended to be used when the fine is charged as a result of a staff or system error and as such none of it should be paid.


1. [Find the user record](#search-for-user-records) to which you want to refund a payment and click it.
2. In the **User details** pane, expand the **Fees/fines** accordion if needed.
3. Select **View all fees/fines** to view the patron’s fines.
4. The **Fees/fines** modal will open. Click the fee/fine you wish to refund a payment for. It may be **Open** or **Closed**.
5. The **Fee/fine details** modal will open. Click **Actions \> Error**.
6. The **Confirm fee/fine cancellation** modal will open. Enter **Additional information for staff** (required).
7. Click **Confirm**.

The modal will close, and the **Fee/fine details** page will update with the cancellation transaction.


## Processing lost items requiring actual cost


Libraries may choose to use **Actual cost** for some or all of the fines that they charge patrons. With the actual cost model, libraries review each loan after it ages to lost in order to charge the patron a specific amount for the item, rather than a flat amount based on the associated loan policy. For more information, see [Lost items - charging set cost versus actual cost](../access/additional-topics/feesfines/feesfines/#lost-items---charging-set-cost-versus-actual-cost
).


### View Lost items requiring actual cost


See [Lost items requiring actual cost](#lost-items-requiring-actual-cost).


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


If you proceed with not billing the patron, you will see **Not billed** appear in the **Actions** column for that record. If you refresh the page or close your browser tab, the next time you open the **Lost items regarding actual cost** modal, the charge that you decided not to bill will no longer be visible in the Users app.


Note that if you choose **Do not bill** and the patron did not also have a lost item processing fee, that marking the lost item record as **Do not bill** will close the loan and change the item status to **Lost and paid**. FOLIO does not currently differentiate item statuses to indicate if an item was lost and the patron paid for it, or if the item was lost and the patron did not pay for it.
