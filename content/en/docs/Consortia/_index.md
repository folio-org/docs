---
title: "Consortium manager"
linkTitle: "Consortium manager"
date: 2023-12-13        
weight: 275
---


**This section of the documentation contains links to external sites. Please be advised that these external sites are not maintained by the FOLIO Documentation Group and may be aligned with a different FOLIO release.**


The Consortium manager app allows libraries to share data and settings between multiple FOLIO tenants. A FOLIO tenant must be implemented with **Enhanced Consortial Support (ECS)** enabled in order to use Consortium manager. For more information about setting up an ECS-enabled tenant, see [Steps to setup Consortia environment](https://wiki.folio.org/display/FOLIJET/Steps+to+setup+Consortia+env).


Definitions of terms related to Consortium manager:


* **Affiliation**: Association with a given tenant (e.g. a user’s “active affiliation” is the tenant in which they are currently working) 
* **Central tenant**: The administrative tenant in a multi-tenant system. 
* **Client**: A library or a branch library. 
* **Consortium**: An association of independent libraries and/or library systems established by formal agreement, usually for the purpose of resource sharing. Membership may be restricted to a specific geographic region, type of library (public, academic, special), or subject specialization.
* **Enhanced Consortial Support (ECS)**: The underlying architecture that defines the relationship and interactions among multiple tenants.
* **Member**: An independent library’s or library system’s FOLIO tenant affiliated with a consortium in Consortium manager.
* **Permission**: A setting that allows users to perform specific functions in FOLIO. 
* **Permission set**: A set of individual permissions. 
* **Primary tenant**: A user’s home tenant; the tenant in which the user’s record was initially created in FOLIO. 
* **Shadow account**: A user record existing outside of a member’s primary tenant. A shadow account is automatically created when a user record is affiliated with a member library in the consortium that is not that user’s primary affiliation.
* **Shared**: Settings that are shared between member libraries and managed at the central consortium level (e.g. shared settings, shared Instances) 
* **Service Point**: A setting that libraries configure to support circulation functions. Each library must set up at least one service point. 
* **Tenant**: A FOLIO client whose data are stored separately and are accessible and visible separately from other FOLIO clients. 


## Permissions


The permissions listed below allow the user to interact with the Consortium manager app and determine what the user can and cannot do within the app. If none of these permissions are assigned to a user, they are unable to see the Consortium manager app or any related consortial information. For more information on permissions, see [Platform Essentials > Permissions](../platform-essentials/permissions/).


The following are the permissions for Consortium manager:


* **Consortia manager: Consortia API module all permissions.** This permission allows the user to use the Consortia API module to add or remove members in Consortium manager. 
* **Consortia: Assign and unassign affiliations.** This permission allows the user to add or remove affiliations of other users.
* **Consortia: View affiliations.** This permission allows the user to view the affiliations of other users.
* **Consortium manager: Can create, edit and remove settings.** This permission allows the user to perform build, create, edit and delete actions via the Consortia manager BUT the user must have the correct permissions in individual tenants to carry out these actions.
* **Consortium manager: Can share settings to all members.** This permission allows a user to create settings that will be shared by all members and is only editable in the central tenant.
* **Consortium manager: Can view existing settings.** This permission allows a user to view all the settings of members they are affiliated with via the consortia manager.


## Members


To view membership in **Consortium manager**, the user must be affiliated with the primary tenant of the consortium. To view membership, follow these steps: 


1. Select the primary tenant as the **active affiliation** in the top right corner if it is not already selected. 
    - To switch the **active affiliation**, click on the service point menu in the top right corner of the screen.
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Click on the **Select members**. 
3. In the **Select members** window, the list of members in the consortia is displayed. 


Members cannot currently be added or removed in Consortium manager, but membership details can be edited. For more information about editing membership, see [Settings > Consortium manager](../settings/settings_consortium-manager/settings_consortium-manager/#edit-member-details). 


## User type


User records include the same fields in all FOLIO tenants. However, **user type** is a required field for user records in an ECS-enabled environment. 


In Consortium manager, **user types** include: 


* **Staff**: Users who are employed by a library and must log into FOLIO to conduct library work. Staff accounts are assigned a primary tenant and a unique username. If the staff account is affiliated with multiple tenants, the username is used to log in at a single service point.
* **Patron**: Users who borrow library items. Patrons have user records in the Users app but do not log into FOLIO to manage their library accounts. They are assigned a primary tenant only and do not have any assigned affiliations or user permissions for other tenants in the consortium.
* **Shadow**: Shadow accounts serve as a representation of a user record and are automatically created by the FOLIO system in the central tenant whenever a staff user record is created. Shadow accounts display a user’s assigned permissions for a member tenant and allow management of permissions for the user record outside of the central tenant. If an affiliation is removed, the shadow account becomes inactive. If the staff user is deleted from their primary tenant, all of the user’s shadow accounts are also deleted from the member tenants.
* **System**: At least one system-level account must be in place in order to assign other roles and permissions. 


For more information about creating a new user record manually, see [Users \> Creating a user record manually](../users/#creating-a-user-record-manually). 


For more information about editing user records, see [User \> Edit a user record](../users/#edit-a-user-record). 


## Affiliations 


In an ECS-enabled tenant, each user must have at least one affiliation with a member library. The tenant in which the user record is initially created serves as the primary affiliation. When a user logs into FOLIO, the primary affiliation is set to active and displays in the top right corner of the screen. 


When working in an active affiliation, the local data in that tenant is displayed as well as any data shared across the consortium. 


### Assign an affiliation


When a user record is created in an ECS-enabled environment, the user is automatically affiliated with the tenant in which the user record was created. This affiliation is the user’s **primary affiliation**.


To assign an additional affiliation to a user record, follow these steps:


1. Search for the user record. For more information, see [Users \> Search for user records](../users/#search-for-user-records). Select the user record. It will open in a new pane.
2. Click **Actions \> Edit** to edit the user record.
3. Open the **Affiliations** accordion. 
4. Click the **Assign/unassign** button.
5. Check the box next to the **Name** of the member to assign the affiliation. One or more affiliations can be assigned in this step. 
6. Click **Save & close**.


### Unassign an affiliation


A user's **primary affiliation** and affiliation with the central tenant cannot be removed or changed, but affiliation with other members can be unassigned. Doing so sets the user’s status to **Inactive** for that member.


To unassign an affiliation with a member, follow these steps:


1. Search for the user record. For more information, see [Users > Search for user records](../users/#search-for-user-records). Select the user record. It will open in a new pane.
2. Click **Actions \> Edit** to edit the user record.
3. Open the **Affiliations** accordion. The user’s primary affiliation appears in bold type.  
4. Click the **Assign/unassign** button. 
5. Find the member in the **Affiliations** window or use the **Search & filter** pane to search for a member or filter the list by **Affiliation assignment status**. 
6. Uncheck the box next to the **Name** of the member to unassign, or remove, the affiliation. One or more affiliations to member libraries, excluding the primary affiliation and affiliation with central tenant, can be unassigned in this step. 
7. Click **Save & close**.


### Assign or unassign user permissions for an affiliation


Users may be assigned permissions for any assigned affiliations. To manage user permissions for an affiliation, the process is similar to doing so for a user record in an individual tenant, except the **Affiliation** option is displayed in the **Permissions** accordion of the user record and the appropriate affiliation must be selected. For more information on assigning or removing permissions, see [Users \> Assign or unassign permissions](../users/#assign-or-unassign-permissions).


To assign affiliation permissions to a user record, go to the **Users** app and follow these steps:


1. Search for the user record. For more information, see [Users \> Search for user records](../users/#search-for-user-records). Select the user record. It will open in a new pane.
2. Click **Actions \> Edit** to edit the user record.
3. Expand the **User permissions** accordion.
4. Select the **Affiliation** from the drop-down menu. 
5. Click on **Add permissions**. 
6. Select the permission(s) to assign by checking the box next to the permission or permission set name. You can also search and filter for a permission or permission set in the **Search & filter** pane and check the box next to its name in the **Permissions** pane. 
7. Click **Save & close** to save the permissions to the user record. 


To remove affiliation permissions from a user’s record, go to the **Users** app and follow these steps: 


1. Search for the user record. For more information, see [Users \> Search for user records](../users/#search-for-user-records) for user records. 
2. Select the user record. It will open in a new pane.
3. Click **Actions \> Edit**.
4. Expand the **User permissions** accordion.
5. Select the **Affiliation** in the Affiliation drop-down menu. 
6. Unassign permissions by any of these methods: 
* Click on the **X icon** next to a permission to remove the permission for that affiliation.
*  Or click on **Add permission** and uncheck the box next to **Name** in the **Permissions** window to unassign all of the permissions for that affiliation with one click.
* To remove all permissions for an affiliation, click on the **Unassign all permissions** button or [unassign the affiliation](#unassign-an-affiliation). All permissions are removed for that user in that member’s tenant.
7. Click **Save & close** to save the changes to the user record.


## Shared Settings


In **Consortium manager**, some settings can be modified and centrally managed for all member libraries through the **Share** option. By sharing settings, member libraries apply a controlled vocabulary to ensure consistency in library records and transactions across the consortium. 


The sharing option cannot be edited once the setting is initially created and saved. To change the sharing option in a setting, each of the relevant settings must first be deleted and then a new setting created with the appropriate sharing option. The **Share** option must be set when the setting is created and saved, and cannot be edited after the setting is initially saved. If **Share** is selected, the data fields, **Source**,  **Member libraries**, and **Update** display as **consortium**,  **ALL**, and **SystemConsortia**, respectively, indicating the setting can be managed in Consortium manager. 


If a setting is not shared, it serves as a local setting for a specific member library in the consortium regardless of which member tenant was used to create it. 


Shared settings are available in Consortium manager for these FOLIO apps:


* [**Circulation**](#circulation)
* [**Data Import**](#data-import)
* [**Data Export**](#data-export)
* [**Inventory**](#inventory)
* [**Users**](#users)


### Circulation


For resource sharing purposes, shared settings allow the same **Request cancellation reasons** to be used by all members.


To create a shared setting for **Circulation**, follow these steps:


1. In the **Settings** pane, select **Circulation**
2. In the **Circulation** pane, select **Request cancellation reasons**. 
3. Click the **New** button in the **Request cancellation reasons** pane. 
4. Fill out the **Cancel reason**, **Description (internal)**, and **Description (public)** fields. 
5. Check the box next to **Share**. 
6. Click on **Save** in the **Actions** column. 
7. A **Confirm share to all** window appears with the message, *Are you sure you want to share (Name of Note) with **ALL** members?*
8. Click **Confirm** to save the shared Circulation note.


To create a local (unshared) setting for **Circulation**, follow these steps: 


1. In the **Settings** pane, select **Circulation**
2. In the **Circulation** pane, select **Request cancellation reasons**. 
3. Click on the **Select members** button in the **Request cancellation reasons** pane. Check the box in the **Name** column next to the member’s name to select the member for whom the local (unshared) setting will be created.
4. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected will display at the top of the window. 
5. Click the **New** button in the **Request cancellation reasons** pane. 
6. Fill out the **Cancel reason**, **Description (internal)**, and **Description (public)** fields. 
7. Do not check the box next to **Share**. 
8. Click on **Save** in the **Actions** column. 
9. A **Confirm member libraries** window appears with the message, *(Name of Note) will be saved for the member libraries* with an accompanying list of members. 
10. Click **Confirm** to save the local Circulation note. 


### Data Export 


For troubleshooting purposes, the central tenant can view data export logs in another member’s tenant.


To view a data export log for a member library, follow these steps: 


1. Select the central, or primary, tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected: 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. In **Consortium manager**, select **Data export** in the **Settings** pane. 
3. In the **Data export** pane, select the **Member** for which you wish to view the logs. 
4. The **Data export** logs are listed in the **Data export** pane with these identifiers:
    - **File name**: File name assigned by the FOLIO system. 
    - **Status**: Completed, Fail, or Completed with errors
    - **Total**: Number of records requested for export
    - **Exported**: Number of records exported
    - **Failed**: Number of records not exported successfully
    - **Job profile**: Description of data export job
    - **Ended running**: Date and time the data export job finished
    - **Run by**: FOLIO username of user who ran the data export job
    - **ID**: Number assigned to the data export log by the FOLIO system


### Data Import


For troubleshooting purposes, the central tenant can view imported records in another member’s tenant.


To view a data import log for a member library, follow these steps: 


1. Select the central, or primary, tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected: 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. In **Consortium manager**, select **Data import** in the **Settings** pane. 
3. In the **Data import** pane, select the **Member** for which you wish to view the logs. 
4. The **Data import** logs are listed in the **Data import** pane with these identifiers:
    - **File name**: File name assigned by the FOLIO system. 
    - **Status**: Completed, Fail, or Completed with errors
    - **Records**: Number of records imported
    - **Job profile**: Description of data import job
    - **Started running**: Date and time the data import job started
    - **Ended running**: Date and time the data import job finished
    - **Run by**: FOLIO username of user who ran the data import job
    - **ID**: Number assigned to the data import log by the FOLIO system


### Inventory


For Inventory purposes, shared settings allow the same **Instance notes** to be used by all member libraries. 


To create a shared **Instance note** setting for Inventory, follow these steps:


1. In the **Settings** pane, select **Inventory**
2. In the **Inventory** pane, select the appropriate setting in the **Instances**, **Holdings**, **Items**, **Instances, Holdings, Items** or **Holdings, Items** sections. 
3. Click on the **Select members** button in the **Request cancellation reasons** pane. Check the box in the **Name** column next to the member’s name to select the member for whom the local (unshared) setting will be created.
4. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected will display at the top of the window. 
5. Click the **New** button. 
6. Fill out the **Name** field for the new setting.
7. Check the box next to **Share**. 
8. Click on **Save** in the **Actions** column. 
9. A **Confirm member libraries** window appears with the message, *(Name of Note) will be saved for the member libraries* with an accompanying list of members. 
10. Click **Confirm** to save the shared Inventory note. 


To create a local (unshared) **Instance note** for Inventory, follow these steps: 


1. In the **Settings** pane, select **Inventory**
2. In the **Inventory** pane, select the appropriate setting in the **Instances**, **Holdings**, **Items**, **Instances, Holdings, Items** or **Holdings, Items** sections. 
3. Click on the **Select members** button in the **Request cancellation reasons** pane. Check the box next to the **Name** to select the member for whom the local (unshared) **Instance note** will be created.
4. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected will display at the top of the window.
5. Click the **New** button. 
6. Fill out the **Name** field for the new **Instance note**..
7. Leave the box next to **Share** empty.
8. Click on **Save** in the **Actions** column. 
9. A **Confirm member libraries** window appears with the message, *(Name of Note) will be saved for the member libraries* with an accompanying list of members. 
10. Click **Confirm** to save the local Inventory note.


### Users


For user management and consortium management purposes, shared settings allow members to view, edit, and compare **Permission sets**, **Patron groups**, and **Departments** for all member libraries. 


#### Permission sets


To view shared permissions, follow these steps:


1. Select the central, or primary, tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. In **Consortium manager**, select **Users** in the **Settings** pane. 
3. In the **Users** pane, select **Permission sets**. 
4. In the **Permission sets** pane, select the **Member** for which you wish to view the assigned permission set(s) from the drop-down menu. If the member is not displayed as an option, click on the **Select members** button and check the box next to the member’s **Name** in the **Select members** window.
5. Select the **Permission set** to view its **General information**, including **Permission set name** and **Description**, **Assigned permissions**, and **Assigned users** in a new pane.
6. Expand the **Assigned permissions** accordion to view the list of **permissions** included in the **permission set**. 


To create a shared permission, follow these steps: 


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. In **Consortium manager**, select **Users** in the **Settings** pane. 
3. In the **Users** pane, select **Permission sets**. 
4. In the **Permission sets** pane, click ** the **Select members** button and check the box next to the name of each member for which the new permission will be created. 
5. Click **Actions \> New**.
6. In the **New permission set** window, add the **Permission set name** and a **Description**. 
7. Click the **Add permission** button. The new permission is added for each member in the consortium. 


To compare shared user permission sets between two members, follow these steps: 


1. Select the central, or primary, tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane. 
3. In the **Users** pane, select **Permission sets**. 
4. In the **Permission sets** pane, click the **Actions** button and select **Compare**.
5. The **Compare** window is divided into 2 panes, one for each member. Select the **Member** and **Permission set** for each member as appropriate.
6. The lists of assigned permissions are compared side-by-side in the **Assigned permissions** accordion. Any assigned permissions that are unique to a member tenant are highlighted in yellow. Any assigned permissions that are common between member tenants are not highlighted. 


To edit permissions assigned to a shared user permission set, follow these steps:


1. Select the central, or primary, tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
1. In **Consortium manager**, select **Users** in the **Settings** pane. 
2. In the **Users** pane, select **Permission sets**. 
3. In the **Permission sets** pane, select the **Member** for which you wish to view the assigned permission set(s). 
4. Select the **Permission set** to view its **General information**, including **Permission set name** and **Description**, **Assigned permissions**, and **Assigned users**. 
5. Expand the **Assigned permissions** accordion to view the list of **permissions** included in the **permission set**. 
6. Select the **permission set**. The **permission set** will open in a new pane. 
7. Click on the **Edit** button in the top right corner of the permission set pane. A new **Edit: [Permission name]** window opens. 
    - To add, or assign, a permission to a permission set:
        - Expand the **Assigned permissions** accordion and click on the **Add permission** button. In the new window, select the appropriate permissions to add to the permission set by searching and filtering or checking the box by the permission’s name. More than one permission may be added to the permission set in this step. 
        - Click **Save & close**.


    - To remove, or unassign, a permission from a permission set: 
        - Expand the **Assigned permissions** accordion and click on the **Add permission** button. In the new window, uncheck the box next to the name of the permission to remove it from the permission set. More than one permission may be removed from the permission set in this step. 
        - Click **Save & close**.


    - To remove or unassign all permissions in the permission set: 
        - Click on the **Unassign all permissions** button. 
        - Click **Save & close**.


For more information about creating, editing, assigning, and unassigning permissions, see [User > Permissions](../users/#user-permissions).


To assign or unassign shared permissions to a user: 


1. Select the central, or primary, tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. In **Consortium manager**, select **Users** in the **Settings** pane. 
3. In the **Users** pane, select **Permission sets**. 
4. In the **Permission sets** pane, select the **Member** for which you wish to view the assigned permission set(s). 
5. Select the **Permission set** to view its **General information**, including **Permission set name** and **Description**, **Assigned permissions**, and **Assigned users**. 
6. Expand the **Assigned users** accordion to view the list of users who have the permission set assigned to them. 
7. Click the **Assign/unassign** button.
8. In the **Select user** window, search for the user by name or filter by **Status** or ***Patron group** and select. For more information about searching for users, see [Users \> Search for user records](../users/#search-for-user-records).
9. To add or assign a user to the shared permission, check the box next to the user’s name. To remove or unassign the user from the shared permission, uncheck the box next to the user’s name. 
10. Click **Save**.


#### Patron Groups


To view the shared **Patron groups**, follow these steps:


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane.
3. Select **Patron groups** in the **User** pane. 
4. The list of **Patron groups** displays in the **Patron groups** pane. The identifiers,  **Description**, **Expiration date offset (number of days)**, **Last updated**, and **Member libraries** display in separate columns. 


To create a shared **Patron group** for the consortium, follow these steps:


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane.
3. Select **Patron groups** in the **User** pane. 
4. In the **Patron groups** pane, click the **Select members** button to select the member(s) for which you wish to create the shared setting. To select all members, check the box next to **Name**. 
5. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected displays at the top of the window.
6. Click **Save & close**.
7. Click the **New** button in the **Patron groups** pane. 
8. Fill out the **Patron group**, **Description**, **Expiration date offset (number of days)** fields.
9. Check the **Share** box in the **Member libraries** column. 
10. Click **Actions \> Save**. 


To create a local (unshared) **Patron group** for the consortium, follow these steps:


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane.
3. Select **Patron groups** in the **User** pane. 
4. In the **Patron groups** pane, click the **Select members** button to select the member(s) for which you wish to create the local, or unshared, setting. 
5. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected displays at the top of the window.
6. Click **Save & close**.
7. Click the **New** button in the **Patron groups** pane. 
8. Fill out the **Patron group**, **Description**, **Expiration date offset (number of days)** fields.
9. Leave the **Share** box in the **Member libraries** column unchecked. 
10. Click **Actions \>Save**. 


To edit a **Patron group**, follow these steps:


1. Click on the **pencil icon** in the **Actions** column. 
2. Make edits to the **Patron group**, **Description**, or **Expiration Offset Date (number of days)** fields. 
3. The **Share** box is grayed out because the sharing option cannot be edited once the setting is created and initially saved. For more information about changing sharing options in a shared setting, see [Shared Settings](#shared-settings).
4. Click **Actions \> Save**. 


To delete a **Patron group**, follow these steps:


1. Click on the **trash can icon** in the **Actions** column. 
2. A **Delete patron group _name of patron group_]** pop-up window appears with the message, *The patron group (Patron Group Name) will be **deleted**.*
3. Click the **Delete** button to delete the patron group or click the **Cancel** to cancel the deletion. 


#### Departments


To view the shared **Departments**, follow these steps:


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane.
3. Select **Departments** in the **User** pane. 
4. The list of **Departments** displays in the **Departments** pane. The identifiers,  **Name**, **Code**, **Last updated**, **# of users**, and **Member libraries** display in separate columns. 


To create a shared **Department** for the consortium, follow these steps:


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane.
3. Select **Departments** in the **User** pane. 
4. In the **Departments** pane, click the **Select members** button to select the member(s) for which you wish to create the shared setting. To select all members, check the box next to **Name**. 
5. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected displays at the top of the window.
6. Click **Save & close**.
7. Click the **New** button in the **Departments** pane. 
8. Fill out the **Name** and **Code** fields.
9. Check the **Share** box in the **Member libraries** column. 
10. Click **Actions \> Save**. 


To create a local (unshared) **Department** for the consortium, follow these steps:


1. Select the central tenant as the **active affiliation** in the top right corner if it is not already selected. If the central tenant is not selected, switch the active affiliation. 
    - Click on the user profile icon in the top right corner of the screen to switch the **active affiliation**. 
    - Select **switch active affiliation** in the drop-down menu. 
    - Select the primary member from the **Consortium members** menu. 
    - Click **Save & close**. 
2. Select **Users** in the **Settings** pane.
3. Select **Departments** in the **User** pane. 
4. In the **Departments** pane, click the **Select members** button to select the member(s) for which you wish to create the local, or unshared, setting. 
5. Confirm the number of selected members. In the **Settings for selected members can be modified at the same time** window, the number of members selected displays at the top of the window.
6. Click **Save & close**.
7. Click the **New** button in the **Departments** pane. 
8. Fill out the **Name** and **Code** fields.
9. Leave the **Share** box in the **Member libraries** column unchecked. 
10. Click **Actions \> Save**. 


To edit a **Departments**, follow these steps:


1. Click on the **pencil icon** in the **Actions** column. 
2. Make edits to the **Name** and **Code** fields. 
3. The **Share** box is grayed out because the sharing option cannot be edited once the setting is created and initially saved. For more information about changing sharing options in a shared setting, see [Shared Settings](/#shared-settings).
4. Click **Actions \> Save**. 


To delete a **Department**, follow these steps:


1. Click on the **trash can icon** in the **Actions** column. 
2. A **Delete Departments [name of Department]** pop-up window appears with the message, *The Departments (Department Name) will be **deleted**.
3. Click **Delete** to delete the Department or click **Cancel** to cancel the deletion.

