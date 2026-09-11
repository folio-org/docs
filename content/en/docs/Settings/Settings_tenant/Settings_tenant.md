---
title: "Settings > Tenant"
linkTitle: "Tenant"
date: 2025-04-14
weight: 240
tags: ["subtopic"]
---

The Tenant section of the Settings app is where you configure specific settings that apply to your entire FOLIO installation. Generally, settings in this area will be managed by your library’s FOLIO administrator.


## Authorization Roles

The roles listed below determine what you can do or not do with the individual parts of the Tenant section of Settings. If none of these roles are assigned to a user, the user will not see this area of the Settings app.



* **UI-Tenant-Settings Settings Servicepoints** This role allows the user to create, read, update, and delete service points.
* **UI-Tenant-Settings Settings Location** This permission allows the user to create, read, update, and delete institutions, campuses, libraries, and locations.
* **UI-Tenant-Settings Settings Location View** This permission allows the user to view institutions, campuses, libraries and locations.
* **UI-Tenant-Settings Settings Location Floating** This permission allows the user to view and edit the check mark that designates a location as a floating collection
* **UI-Tenant-Settings Settings Reading-Room-Access** This permission allows the user to view, create, edit, and delete reading rooms. 
* **UI-Tenant-Settings Settings Locale** This permission allows the user to change the locale, numbering system, time zone, and primary currency.
* **UI-Tenant-Settings Settings Plugins** This permission allows the user to edit preferred plugins.
* **UI-Tenant-Settings Settings SSO** This permission allows the user to create, edit, and delete SSO configurations.
* **UI-Tenant-Settings Settings Addresses** This permission allows the user to create, read, update, and delete addresses.
* **UI-Tenant-Settings Settings Reading-Room-Access** This permission allows the user to view, create, edit and delete Reading room access entries in tenant settings.


## Settings \> Tenant \> Addresses

Use this setting to manage addresses used by your library within FOLIO. For example, you can add your library’s acquisitions address and then use this address within the Orders app for billing and shipping.


### Creating a new address



1. In the Addresses pane, click **New.**
2. Enter a **Name** for the address in the box.
3. In the **Address** box, enter the physical address. Press **Enter** to format your address with multiple lines.
4. Click **Save**. The address is added to the created.


### Editing an address



1. Find the address you want to edit.
2. In the **actions** column, click the **pencil icon**.
3. Make your desired changes to the address.
4. Click **Save**. The address is updated.


### Deleting an address

Note: Before deleting an address, you should make sure it is not in use for any purchase orders. FOLIO doesn’t stop you from deleting an address that is assigned to an order record. If you delete an address that is in use, it is deleted from the Bill to or Ship to fields in the order record.



1. Find the address you want to delete.
2. In the **actions** column, click the **trash can icon**.
3. In the **Delete Address** dialog, click **Delete**. A confirmation message appears and the address is deleted.


## Settings \> Tenant \> Language and localization

Use this setting to change your location, numbering system, timezone, and/or currency for all users of your FOLIO instance. To make temporary changes for your current session, click **Change session locale**. For more information, see Settings > Developer > Session locale.


### Update your library locale, time zone, or currency



* **Locale (for language display, date format, etc.).** Locale adjusts FOLIO's language display, date format, and number format to the standard for the locality selected.
* **Numbering system**.  Numbering system specifies whether Latin or Arabic numbering is used.
* **Time zone (time zone used when showing date time information).** Time zone adjusts FOLIO's time zone for when dates are displayed. Time zones are based on the standard tz database time zone names.
* **Primary currency (for currency symbol to display).** Primary currency adjusts FOLIO's currency symbol, using ISO 4217 standard codes.
1. Select a **Locale**, **Time zone**, and/or **Primary currency** from the drop-down lists.
2. Click **Save**. A confirmation message appears and your changes are saved.



## Settings \> Tenant \> Preferred plugins

Use this setting to change your preferred plugins for different FOLIO actions.

Currently, FOLIO doesn’t have multiple plugins to choose from for each of the actions listed.  Leaving the values as the default **---** allows the system to update plugin versions automatically.  Once changed from **---**, only the specific plugin version or **(none)** are available as options.

Changing any of the preferred plugins to **(none)** disables the action for all FOLIO users, which may break app workflows.


## Settings \> Tenant \> Reading room access

Use this setting to create, edit and delete reading rooms. A reading room enables patrons to use items that are typically stored in closed or restricted stacks within the library.  Users can assign reading rooms to patrons in the Reading room access app.

### Creating a new Reading room access entry
1. In the Reading room access pane, click the "+New" button
2. (Required) Create a name for the Room name. This will appear to users in the Reading room access app
3. Uncheck the "Public" box if the Reading room access is not public.
4. (Required) Assign one or more service points to the Reading room access entry from the dropdown menu.  A user will need to be using the the selected service point to assign the Reading room access to a patron. Multiple service points can be assigned to one entry, but once a service point is assigned to a Reading room access entry, it cannot be assigned to another Reading room access entry.  Once a service point has been assigned to an entry, it will no longer appear in the dropdown menu.
5. Select "Save"

### Editing a Reading room access entry
1. In the Reading room access pane, select the pencil icon in the "Actions" column on the row of the entry you wish to edit
2. Make the desired changes to Room name, Public checkbox and Associated service point.  An entry must still have a name and one or more unique Associated service points
3. To make the changes, select "Save" from the Actions column.  Select "Cancel" to discard changes

### Deleting a Reading room access entry
1. In the Reading room access pane, select the trashcan icon in the "Actions" column you wish to delete
2. A prompt will open. Confirm you wish to delete the reading room entry.
3. The Reading room access entry is deleted.  


## Settings \> Tenant \> SSO settings

Use this setting if your library wishes to implement Single Sign-On (SSO) for staff members to log into FOLIO. SSO allows library staff to use the same username and password they use for other services at their library, removing the need to maintain a separate username and password just for FOLIO.

Note: Enabling single sign-on generally requires coordination with your IT staff and/or your identity provider. 



* **Identity Provider URL**. A URL where metadata about the identity provider can be accessed by FOLIO.
* **Download metadata**. After selecting all of your SSO settings, click Download metadata to download an XML, which you should send to your identity provider. This file will need to be re-downloaded if you make any changes to these settings.
* **SAML binding**. Depending on your configuration, select **Redirect binding** to use an HTTP redirect to the identity provider's sign on page, or **POST binding** to send an HTTP POST from the FOLIO login page.
* **SAML attribute**. The attribute in the identity provider that uniquely identifies the user.
* **User property**. The attribution in FOLIO where the SAML attribute can be found.


## Settings \> Tenant \> Service Points

Use this setting to configure your library’s service points. In FOLIO, a service point is a library staff work location. 

A service point is needed when you want to have at least one of the following services at that location: 


* Check in items.
* Check out items.
* Request items for patron delivery.
* Request items for patron pickup.
* Put items in transit to another location.
* Charge fines for transactions, which occurred at that location.

Every location that has physical materials needs an associated primary service point in order to manage those materials. Therefore, you should create your desired service points before creating your location hierarchy.

Staff who use the Check in, Check out, Requests, and Users apps must have a service point assigned to them in their user record.

There is no requirement that a service point be a place that is providing service to patrons. Libraries may find that it is helpful to establish internal service points for areas such as shelving, conservation, or collection development.

All service points should be associated to a fee/fine owner in Settings\>Users, even if you do not expect to charge fines to patrons. Setting up the connection will ensure that fine transactions do not unexpectedly fail in the future if your library begins to use fines (manual or automatically charged.)


### Creating a service point

1. In the **Service points** pane, click **New**.
2. In the **New service point** window, enter a **Name** for the service point. The name must be unique to your FOLIO tenant.
3. Enter a **Code**. The code is the machine readable name of the service point and must be unique to your FOLIO tenant.
4. Enter a **Discovery display name**. This name is used in discovery services to identify the service point to patrons. It does not have to be unique.
5. (Optional): Enter a **Description** of the service point. The description only appears in Settings.
6. (Optional): Enter the location’s **Shelving lag time (minutes)**. This number is used to set expectations for how long until materials returned to this service point are reshelved.
7. (Optional): Select whether the service point is a **Pickup location**. If the service point is a pickup location, it appears as a Pickup location option for patrons in the Requests and Users app. 
8. (Required if your service point is a **Pickup location**): Enter a **Hold shelf expiration period**, which determines how long the request remains in **Open - Awaiting pickup** status. 
9. (Required if your service point is a **Pickup location**): Specify the **Closed library date management for hold shelf expiration date calculation**. This tells FOLIO what to do with the hold shelf expiration date if it lands in a time when the service point is closed. 
* If the hold shelf expiration period is calculated in **minutes** or **hours**, then you can choose to keep the original expiration date/time, move the expiration date/time to when the service point is closing, or move the expiration date/time to the beginning of the next open set of hours.
* If the hold shelf expiration period is calculated in **days**, **weeks**, or **months**, you can choose to keep the original expiration date, move the expiration date to the end of the previous open day, or move the expiration date to the end of the next open day.  
10. (Optional): Select a **Default check-in action for use at location**.  This will determine which check in action will be selected by default in the Check in application when a user begins a check in session. A user can select a different Check in action from the Check In app. Refer to [Resource Access > Check in > For use at location check in](../../../access/check-in/checkin/#for-use-at-location-check-in) for checkin action for use at location definitions.    
11. (Optional): Select the **Due date receipt**,  **Hold**, **Pick slip**, **Request delivery**, **Search slip (Hold Requests)**, and/or **Transit** checkboxes to determine which staff slips print by default for this service point.
12. Click **Save & close**. A confirmation message appears and the service point is created.

The **Assigned locations** accordion is updated when the service point is assigned to any locations in the location tree. 


### Editing a service point



1. In the **Service points** pane, find the service point you want to edit and select it.
2. In the **service point details** pane, click **Edit**.
3. In the **Edit** window, make your desired changes.
4. Click **Save & close**. A confirmation message appears and the service point is updated.


### Deleting a service point

You cannot delete a service point in the FOLIO user interface.


## Settings \> Tenant \> Location setup 

Use the settings under Location setup to configure the four parts of the item location tree. Locations must be configured in order to create holdings and items in Inventory, to circulate items using the Check in and Check out apps, and to request items using the Requests app.

The location setup has four elements that are hierarchical in relationship, from the top down the hierarchy is: Institutions \> Campuses \> Libraries \> Locations.


## Effective location

In FOLIO, items have an _effective location_ that is computed according to location values in the holdings and items record. Circulation rules use an item’s effective location when applying business logic to circulation transactions. 

Holdings must have a permanent location value. A holding may also have a temporary location value. Items may also have a permanent location value and/or a temporary location value. The item’s effective location value is the first value that it finds, in this order:



1. Item Temporary Location
2. Item Permanent Location
3. Holdings Temporary Location
4. Holdings Permanent Location

 


## Tips for implementers



* There is nothing in FOLIO that requires that elements of the location tree correspond to the geography of your campus. You may find it helpful to consider whether a specific library or libraries in your system are better modeled as a campus, or whether a particular workflow means you need additional campuses or institutions.
* Because the location tree has a hierarchy, you should create your values in the hierarchy order: institutions, campuses, libraries, and then locations.
* Locations must have at least one associated service point. You should create service points before you create your location tree. 
* The four pieces of the location tree can be elements in circulation rules, along with patron groups, material types, and loan types. You may wish to consider your circulation rule strategy while setting up your locations. 


## Settings \> Tenant \> Institutions

Use this setting to configure your institutions. An institution is the highest level of the FOLIO location hierarchy, and typically represents legal entities such as the college or university.
The institutions table displays the name of the institution, code, last updated date/user and the number of campuses assigned to an institution.  
FOLIO libraries need at least one institution created to be able to populate elements down the hierarchy.


### Creating an institution



1. In the Institutions pane, click **New**. 
2. Enter a **Name** and **Code**. The name must be unique. FOLIO doesn’t stop you from making institutions with the same code, but it does cause problems for your staff in writing circulation rules.
3. Click **Save**. The institution is created


### Editing an institution



1. In the **Institutions** pane, find the institution you want to edit.
2. In the **actions** column, click the **pencil icon**.
3. Make your desired changes.
4. Click **Save**. The institution is updated.


### Deleting an institution

Note: If the institution has an associated campus, you cannot delete it. 



1. In the **Institutions** pane, find the institution you want to delete.
2. In the **actions **column, click the **trash can icon**.
3. In the **Delete Institution** dialog, click **Delete**. A confirmation message appears and the institution is deleted.


## Settings > Tenant > Campuses

Use this setting to configure your campuses. A campus is the second highest level of the FOLIO location hierarchy, and typically represents distinct spaces or domains within an institution, like a downtown campus or online program.
To view campuses, select an Institution from the dropdown menu. When you select an institution, you will see the campus name, code, last updated by date/user, and number of assigned libraries for each campus assigned to the selected institution.  

FOLIO libraries need at least one institution and one campus to create elements further down the location hierarchy.


### Creating a campus



1. In the **Campuses** pane, select the **Institution** under which the campus should be created.
2. Click **New**.
3. Enter a **Name** and **Code**. The name must be unique. FOLIO doesn’t stop you from making campuses with the same code, but it does cause problems for your staff in writing circulation rules.
4. Click **Save**. The campus is created.


### Editing a campus



1. In the **Campuses** pane, select the **Institution** under which the campus is located.
2. Find the campus you want to edit.
3. In the **actions** column, click the **pencil icon**.
4. Make your desired changes.
5. Click **Save**. The campus is updated.


### Deleting a campus

Note: If the campus has an associated library, you cannot delete it.



1. In the **Campuses** pane, select the **Institution** under which the campus is located.
2. Find the campus you want to delete.
3. In the **actions **column, click the **trash can icon**.
4. In the **Delete Campus** dialog, click **Delete**. A confirmation message appears and the campus is deleted.


## Settings \> Tenant \> Libraries

Use this setting to configure your libraries. A **library** is the third level of the FOLIO Location hierarchy, and typically represents physical buildings on a physical campus, or domains of service in a virtual campus, like a subject-specific library or an annex.
To view libraries select an institution and a campus from the drop down menus.  When you select a campus, you will see the campus name, code, last updated by date/user, and number of assigned locations for each library assigned to the selected campus.  

FOLIO libraries need at least one institution, campus, and library to be able to create the final element of the location tree.


### Creating a library



1. In the **Libraries** pane, select the **Institution** under which the library should be created.
2. Select the **Campus** under which the library should be created.
3. Click **New**.
4. Enter a **Name** and **Code**. The name must be unique. FOLIO doesn’t stop you from making libraries with the same code, but it does cause problems for your staff in writing circulation rules.
5. Click **Save**. The library is created.


### Editing a library



1. In the **Libraries** pane, select the **Institution** under which the library is located.
2. Select the **Campus** under which the library is located.
3. Find the library you want to edit.
4. In the **actions** column, click the **pencil icon**.
5. Make your desired changes.
6. Click **Save**. The library is updated.


### Deleting a library

Note: If the library has an associated location, you cannot delete it.



1. In the **Libraries** pane, select the **Institution** under which the library is located.
2. Select the **Campus** under which the library is located.
3. Find the library you want to delete.
4. In the **actions** column, click the **trash can icon**.
5. In the **Delete Library** dialog, click **Delete**.
6. Click **Save**. A confirmation message appears and the library is deleted.


## Settings \> Location setup \> Locations

Use this setting to configure your locations. A location is the fourth and most detailed level of the FOLIO Location hierarchy, and typically represents specific shelving areas, like the stacks, reserves, or specific language collections.


### Locations and service points

Each location must have at least one service point associated with it and designated as primary. Locations may also have additional service points that are non-primary. Non-primary service points are not required. 

When an item is returned at another service point that is not associated with the location, it is put in transit to the primary service point. When an item is checked in at a location’s non-primary service point, it is not put in transit to the primary service point. 

The most common use case for a non-primary service point is if your library has multiple service desks in the same building, or decides to create a service point for staff working “behind the scenes” in addition to a service point for a patron-facing service desk. In those cases, one service point can be the primary service point for locations in that building, and the other service points would be non-primary service points for those locations. This allows staff at those non-primary service points to discharge and shelve items for the library without putting them in transit to the main service point.


### Creating a location



1. In the **Locations** pane, select the **Institution** under which the location should be created.
2. Select the **Campus** under which the location should be created.
3. Select the **Library** under which the location should be created.
4. Click **New**.
5. Enter a **FOLIO Name** for the location. The name must be unique to your FOLIO tenant. The name and code appear in other applications like Inventory. 
6. Select whether the location is used for **Remote storage**. 
7. Enter a **Code**. The code is the machine readable name and must be unique to your FOLIO tenant.
8. Enter a **Discovery display name**. This name is used in discovery services to identify the location to patrons. It does not have to be unique.
9. Select a primary **Service point** for the location from the drop-down list.
10. Optional: To add a non-primary service point to the location, click **Add service point** and select the **service point** from the drop-down list. Repeat as needed. To remove a service point, click the **trash can icon**.
11. Optional: Select the location’s **Status**. By default, all locations are Active.
12. Optional: Enter a **Description** of the location.
13. Optional: Enter a Location detail **Name** and **Value**. Repeat as needed. This has no function outside Locations.
14. Click **Save & close**. The location is created.


### Editing a location



1. In the **Locations** pane, select the **Institution** under which the location is located.
2. Select the **Campus** under which the location is located.
3. Select the **Library** under which the location is located.
4. Find the location you want to edit and select it.
5. In the **location details** pane, click **Actions > Edit**.
6. Make your desired changes.
7. Click **Save & close**. The location is updated.


### Duplicating a location



1. In the **Locations** pane, select the **Institution** under which the location is located.
2. Select the **Campus** under which the location is located.
3. Select the **Library** under which the location is located.
4. Find the location you want to duplicate and select it.
5. In the **location details** pane, click **Actions > Duplicate**.
6. Make your desired changes to the location.
7. Click **Save & close**. The location is created.


### Deleting a location

Note: If the location is in use by at least one holding record in Inventory, you cannot delete the location. In those cases, it is recommended that you edit the location and make the status **Inactive**. It doesn’t remove the location from Inventory location dropdown menus, but it gives staff a dialog message if they select an inactive location.



1. In the **Locations** pane, select the **Institution** under which the location is located.
2. Select the **Campus** under which the location is located.
3. Select the **Library** under which the location is located.
4. Find the location you want to delete and select it.
5. In the **location details** pane, click **Actions > Delete**.
6. In the **Delete location** dialog, click **Delete**. A confirmation message appears and the location is deleted.


### Enable a floating collection


A Floating collection is defined as a group of items that are not housed permanently at a specific library, but are shelved at the library where they were most recently checked in. Floating collections are used to decrease transportation of items between libraries and to reduce manual handling, transit time, shipping expenses and/or traffic emissions. Support for floating collections is enabled by designating a location as a floating collection.  NOTE: For circulation to use floating collections the environment variable ENABLE_FLOATING_COLLECTIONS must be set to TRUE when the circulation module (mod-circulation) is deployed. Otherwise floating collections will not function.

To enable a location as a floating collection

1. In the **Locations** pane, select the **Institution** under which the location is located.
2. Select the **Campus** under which the location is located.
3. Select the **Library** under which the location is located.
4. Create or edit a location as above
5. Under **Floating Collection** check the "Enable floating collection" box
6. Click **Save & close**.

### Make a location inactive

When a location is marked as inactive, "Inactive" will be prepended to the location name in Inventory, and users will be given a prompt warning them the location is inactive if adding a new holding to the location. It will not prevent a user from adding a new holding or item.  

1. In the **Locations** pane, select the **Institution** under which the location is located.
2. Select the **Campus** under which the location is located.
3. Select the **Library** under which the location is located.
4. Find the location you want to edit and select it.
5. In the **location details** pane, click **Actions > Edit**.
6. Under **Status** select "Inactive"
7. Click **Save & close**.
