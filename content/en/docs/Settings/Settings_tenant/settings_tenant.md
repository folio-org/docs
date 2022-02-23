---
title: "Settings > Tenant"
linkTitle: "tenant"
date: 2022-02-23
weight: 40
---
<!-- written with Juniper release -->


The Tenant section of the Settings app is where you configure specific settings that apply to your entire FOLIO installation. Generally, settings in this area will be managed by your library’s FOLIO administrator.

## Permissions

The permissions listed below determine what you can do or not do with the individual parts of the Tenant section of Settings. If none of these permissions are assigned to a user, the user will not see this area of the Settings app.

* **Settings (tenant): Can create, edit and remove service points. This permission allows the user to create, read, update, and delete service points.**
* **Settings (tenant): Can create, edit and remove locations. This permission allows the user to create, read, update, and delete institutions, campuses, libraries, and locations.**
* **Settings (tenant): Can edit language, localization, and currency. This permission allows the user to change the locale, time zone, and primary currency.**
* **Settings (tenant): Can maintain preferred plugins. This permission allows the user to edit preferred plugins.**
* **Settings (tenant): Can maintain SSO settings. This permission allows the user to create, edit, and delete SSO configurations.**
* **Settings (tenant): Can manage tenant addresses. This permission allows the user to create, read, update, and delete addresses.**

## Settings > Tenant > Addresses

Use this setting to manage addresses used by your library within FOLIO. Currently these addresses are used in Acquisitions workflows. For example, you can add your library’s acquisitions address and then use this address within the Orders app for billing and shipping.

### Creating a new address

1. In the Addresses pane, click New.
2. Enter a Name for the address in the box.
3. In the Address box, enter the physical address. Press Enter to format your address with multiple lines.
4. Click Save. The address is added.

### Editing an address

1. Find the address you want to edit.
2. In the actions column, click the pencil icon.
3. Make your desired changes to the address.
4. Click Save. The address is updated.

### Deleting an address

Note: Before deleting an address, you should make sure it is not in use for any purchase orders. FOLIO doesn’t stop you from deleting an address that is assigned to an order record. If you delete an address that is in use, it is deleted from the Bill to or Ship to fields in the order record.

1. Find the address you want to delete.
2. In the actions column, click the trash can icon.
3. In the Delete Address dialog, click Delete. A confirmation message appears and the address is deleted.

## Settings > Tenant > Language and localization

Use this setting to change your location, timezone, and/or currency for all users of your FOLIO instance. 

To make temporary changes for your current session, click Change session locale. For more information, see Settings > Developer > Session locale.

### Update your library locale, time zone, or currency

* **Locale** Changing the locale adjusts FOLIO's language display, date format, and number format to the standard for the locale selected.
* **Time zone** Changing the time zone adjusts the display in the FOLIO user interface for dates and times. 
* **Primary currency**. Primary currency adjusts FOLIO's displayed currency symbol, using ISO 4217 standard codes.

To change these settings:

1. Select a Locale, Time zone, and/or Primary currency from the drop-down lists.
2. Click Save. A confirmation message appears and your changes are saved.

## Settings > Tenant > Preferred plugins

Use this setting to change your preferred plugins for different FOLIO actions.

Currently, FOLIO doesn’t have multiple plugins to choose from for each of the actions listed.  Leaving the values as the default --- allows the system to update plugin versions automatically.  Once changed from ---, only the specific plugin version or (none) are available as options.

Changing any of the preferred plugins to (none) disables the action for all FOLIO users, which may break app workflows.

## Settings > Tenant > SSO settings

Use this setting if your library wishes to implement Single Sign-On (SSO) for staff members to log into FOLIO. SSO allows library staff to use the same username and password they use for other services at their library, removing the need to maintain a separate username and password just for FOLIO.

Note: Enabling single sign-on generally requires coordination with your IT staff and/or your hosting provider. 

* **Identity Provider URL.** An Identity Provider URL is a URL where metadata about the identity provider can be accessed by FOLIO.
* **SAML binding.** Depending on your configuration, you can select **Redirect binding** to use an HTTP redirect to the identity provider's sign on page, or **POST binding** to send an HTTP POST request from the FOLIO login page.
* **SAML attribute.** The SAML attribute is the attribute the identity provider users to uniquely identify the user.
* **User property.** The **User property** is the attribute in the FOLIO user record where the SAML attribute can be found.

After selecting and saving all of your SSO settings, click **Download metadata** to download an XML file to send to your identity provider. This file will need to be re-downloaded if you make any changes to these settings.

## Settings > Tenant > Service Points

In FOLIO, a service point is a library staff work location. At least one service point is needed to support library workflows such as:

* Check in items.
* Check out items.
* Request items for patron delivery.
* Request items for patron pickup.
* Put items in transit to another location.
* Charge fines for library transactions

When creating service points, you should consider the following:

* In FOLIO, every configured location needs an associated primary service point in order to manage those materials. Therefore, you should create your desired service points before creating your location hierarchy.
* Staff who use the Check in, Check out, and Request apps must have a service point assigned to them in their user record.
* There is no requirement that a service point provide direct service to patrons. Libraries may find that it is helpful to establish internal service points for areas such as shelving, conservation, or collection development.

### Creating a service point

1. In the Service points pane, click **New**.
2. In the New service point window, enter a **Name** for the service point. The name must be unique to your FOLIO tenant.
3. Enter a **Code.** The code is the machine readable name of the service point and must be unique to your FOLIO tenant.
4. Enter a **Discovery display name.** This name is used in discovery services to identify the service point to patrons. It does not have to be unique.
5. Enter a **Description** of the service point (optional). The description only appears in Settings.
6. Enter the service point's **Shelving lag time (minutes).** As of Juniper, this is informational only, as items immediately appear as **Available** when checked in at their home service point.
7. Select whether the service point is a **Pickup location**. The default is **No**. If the service point is a pickup location for requests, it will appear as a pickup location option for patrons in the Requests and Users app(s). 
8. If the service point is a pickup location, enter a **Hold shelf expiration period**. This determines how long a request will remain in **Open-Awaiting Pickup** status for the patron when the item is available for them to pickup.
9. Check which types of staff slips should **Print by default** at the service point: Hold, Pick slip, Request delivery, and/or Transit.
10. Click **Save & close.** A confirmation message appears and the service point is created.

The Assigned locations accordion is updated when the service point is assigned to any locations in the location tree. 

### Editing a service point

1. In the Service points pane, find the service point you want to edit and select it.
2. In the service point details pane, click **Edit.**
3. In the Edit window, make your desired changes.
4. Click **Save & close.** A confirmation message appears and the service point is updated.

### Deleting a service point

You cannot delete a service point in the FOLIO user interface.


## Settings > Tenant > Location setup 

Use the settings under Location setup to configure the four parts of the item location tree. Locations must be configured in order to create holdings and items in Inventory, to circulate items using the Check in and Check out apps, and to request items using the Requests app.

The location setup has four hierarchical elements - each level of the hierarchy must have at least one value in order to create a value at the next, more specific level. 

* **Institution.** An institution is the highest level of the FOLIO location hierarchy. An institution typically represents entities such as the college or university, though that is not a FOLIO requirement. You can create one or more institutions.
* **Campus.** A campus is the second highest level of the FOLIO location hierarchy, A campus typically represents distinct parts of an institution, like a physical or branch campus, or online programs, though that is not a FOLIO requirement.
* **Library.** A library is the third level of the FOLIO Location hierarchy. A library typically represents physical buildings on a campus, or domains of service on a virtual campus, though that is not a FOLIO requirement. 
* **Location.** A location is the fourth and most detailed level of the FOLIO Location hierarchy. A location typically represents specific shelving areas, like the stacks, reserves, or specific language collections, though that is not a FOLIO requirement.

### Settings > Tenant > Institutions

#### Creating an institution

In the Institutions pane, click New. 
Enter a Name and Code. The name and code should be unique. FOLIO doesn’t stop you from making institutions with the same name and/or code, but it does cause problems for your staff in writing circulation rules.
Click Save. The institution is created

#### Editing an institution

In the Institutions pane, find the institution you want to edit.
In the actions column, click the pencil icon.
Make your desired changes.
Click Save. The institution is updated.

#### Deleting an institution

Note: If the institution has an associated campus, you cannot delete it. 

In the Institutions pane, find the institution you want to delete.
In the actions column, click the trash can icon.
In the Delete Institution dialog, click Delete. A confirmation message appears and the institution is deleted.

### Settings > Tenant > Campuses

#### Creating a campus

In the Campuses pane, select the Institution under which the campus should be created.
Click New.
Enter a Name and Code. The name and code should be unique. FOLIO doesn’t stop you from making campuses with the same name and/or code, but it does cause problems for your staff in writing circulation rules.
Click Save. The campus is created.

#### Editing a campus

In the Campuses pane, select the Institution under which the campus is located.
Find the campus you want to edit.
In the actions column, click the pencil icon.
Make your desired changes.
Click Save. The campus is updated.

#### Deleting a campus

Note: If the campus has an associated library, you cannot delete it.

In the Campuses pane, select the Institution under which the campus is located.
Find the campus you want to delete.
In the actions column, click the trash can icon.
In the Delete Campus dialog, click Delete. A confirmation message appears and the campus is deleted.

### Settings > Tenant > Libraries

#### Creating a library

In the Libraries pane, select the Institution under which the library should be created.
Select the Campus under which the library should be created.
Click New.
Enter a Name and Code. The name and code should be unique. FOLIO doesn’t stop you from making libraries with the same name and/or code, but it does cause problems for your staff in writing circulation rules.
Click Save. The library is created.

#### Editing a library

In the Libraries pane, select the Institution under which the library is located.
Select the Campus under which the library is located.
Find the library you want to edit.
In the actions column, click the pencil icon.
Make your desired changes.
Click Save. The library is updated.

#### Deleting a library

Note: If the library has an associated location, you cannot delete it.

In the Libraries pane, select the Institution under which the library is located.
Select the Campus under which the library is located.
Find the library you want to delete.
In the actions column, click the trash can icon.
In the Delete Library dialog, click Delete.
Click Save. A confirmation message appears and the library is deleted.

### Settings > Location setup > Locations

#### Locations and service points

Each location must have at least one service point associated with it and designated as primary. Locations may also have additional service points that are non-primary. Non-primary service points are not required. 

When an item is returned at a service point that is not associated with the location, it is put in transit to the primary service point. 

When an item is checked in at a location’s non-primary service point, it is not put in transit to the primary service point. 

The most common use case for a non-primary service point is if your library has multiple service points in the same building, or if your library has a service point for staff working “behind the scenes” in addition to a service point for a patron-facing service desk. In those cases, one service point can be the primary service point for locations in that building, and the other service points would be non-primary service points for those locations. This allows staff at non-primary service points to discharge and shelve items for that location without putting them in transit to the main service point.

#### Creating a location

In the Locations pane, select the Institution under which the location should be created.
Select the Campus under which the location should be created.
Select the Library under which the location should be created.
Click New.
Enter a FOLIO Name for the location. The name must be unique to your FOLIO tenant. The name and code appear in other locations like Inventory. 
Select whether the location is used for Remote storage. 
Enter a Code. The code is the machine readable name and must be unique to your FOLIO tenant.
Enter a Discovery display name. This name is used in discovery services to identify the location to patrons. It does not have to be unique.
Select a primary Service point for the location from the drop-down list.
Optional: To add a non-primary service point to the location, click Add service point and select the service point from the drop-down list. Repeat as needed. To remove a service point, click the trash can icon.
Optional: Select the location’s Status. By default, all locations are Active.
Optional: Enter a Description of the location.
Click Save & close. The location is created.

#### Editing a location

In the Locations pane, select the Institution under which the location is located.
Select the Campus under which the location is located.
Select the Library under which the location is located.
Find the location you want to edit and select it.
In the location details pane, click Actions > Edit.
Make your desired changes.
Click Save & close. The location is updated.

#### Duplicating a location

In the Locations pane, select the Institution under which the location is located.
Select the Campus under which the location is located.
Select the Library under which the location is located.
Find the location you want to duplicate and select it.
In the location details pane, click Actions > Duplicate.
Make your desired changes to the location.
Click Save & close. The location is created.

#### Deleting a location

Note: If the location is in use by at least one record in Inventory, you cannot delete the location. In those cases, it is recommended that you edit the location and make the status Inactive. It doesn’t remove the location from Inventory location dropdown menus, but it gives staff a dialog message if they select an inactive location.

In the Locations pane, select the Institution under which the location is located.
Select the Campus under which the location is located.
Select the Library under which the location is located.
Find the location you want to delete and select it.
In the location details pane, click Actions > Delete.
In the Delete location dialog, click Delete. A confirmation message appears and the location is deleted.




