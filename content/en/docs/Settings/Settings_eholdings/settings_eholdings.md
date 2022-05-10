---
title: "Settings > eHoldings"
linkTitle: "eHoldings"
date: 2022-03-21
weight: 90
tags: ["subtopic"]   
---

The eHoldings section of the Settings app is where you establish your root proxy server, create access status types and custom labels, assign users, and enter API credentials to call the EBSCO KB API (Holdings IQ). Note: Assign users is only applicable to multiple libraries in a single tenant (e.g. Five Colleges).


## Permissions

In order to interact with eHoldings settings, a user needs to be assigned the following permissions:



* **Settings (eHoldings): Can create, edit, and view knowledge base credentials.** This permission allows the user to create, view, and edit knowledge base API credentials.
* **Settings (eHoldings): Can delete knowledge base credentials.** This permission allows the user to delete knowledge base API credentials. This action should only be done if the library is no longer subscribed to EBSCO KB.
* **Settings (eholdings): Can create, edit, view, and delete custom labels.** This permission allows the user to create, view, edit, and delete custom labels that display on a title-package (aka resource) record.  
* **Settings (eholdings): Can view custom labels.** This permission allows the user to view custom labels in settings.
* **Settings (eholdings): Can create, edit, view, and delete access status types.** This permission allows the user to create, view, edit, and delete a list of access status types that display on a selected package and title-package (aka resource) record.
* **Settings (eholdings): Can create, edit, and view access status types.** This permission allows the user to create, view, and edit a list of access status types that display on a selected package and title-package (aka resource) record.  
* **Settings (eholdings): Can view access status types.** This permission allows the user to view a list of access status types that display on a selected package and title-package (aka resource) record.
* **Settings (eHoldings): Configure root proxy setting.** This permission allows the user to edit the root proxy selection.
* **Settings (eholdings): Create, edit, and view Usage Consolidation API credentials.** This permission allows the user to update and view usage consolidation settings. For libraries that subscribe to EBSCO's Usage Consolidation service.
* **Settings (eHoldings): Display list of settings pages.** This permission allows the user to view Settings (eholdings) pages.


## Settings > eHoldings > Root proxy

The root proxy server establishes the proxy for all links and resources in eHoldings currently set to inherit the root proxy selection.

Note for EBSCO KB API customers: Access EBSCOAdmin to setup and maintain proxies.



1. Select the **root proxy server** from the drop-down list.
2. Click **Save**. A confirmation message appears and the root proxy server is saved.


## Settings > eHoldings > Custom labels

Use this setting to create up to five custom labels. Custom labels allow your library to have additional customizable fields within title records. The labels you create here are displayed across all title records, but the information in each label’s field can be supplied and edited from within the title record. If created, custom labels appear within selected title records in the eHoldings app.


### Creating a custom label



1. Enter a title for your custom label into a **Display label** box.
2. If you want the label to show on the publication finder and/or full text finder, select the **checkbox** next to each option.
3. Click **Save**. A confirmation message appears and the labels are saved.
4. Repeat steps 1-3 for up to five custom labels.


### Editing a custom label



1. Make your changes to the **Display label** box.
2. Click **Save**. A confirmation message appears and the label is updated. The label changes across all selected title records in eHoldings.


### Deleting a custom label



1. Remove the text from a **Display label** box.
2. Click **Save**. A confirmation message appears and the label is updated. The label is removed from all selected title records in eHoldings.


## Settings > eHoldings > Access status types

Access status type is a customizable drop-down list that appears within selected package and title records in the eHoldings app. The drop-down list can be customized to indicate the various ways a resource might be accessible, for example, Evidence Based Acquisition (EBA), open access, or trial subscriptions. If created, the Access status type drop-down list appears in the Package settings section in selected package records and the Resource settings section in selected title records.


### Creating an access status type



1. Click **New**.
2. Enter a name for the **Access Status Type**.
3. Optional: Enter a **Description** of the access status type.
4. Click **Save**. The access status type is saved.


### Editing an access status type



1. Find the access status type you want to edit and click the **pencil icon** in the **Actions** column.
2. Make your desired changes.
3. Click **Save.**


### Deleting an access status type

Note: Access status types can only be deleted if they aren’t assigned to any records. The trash can icon doesn’t appear otherwise.



1. Find the access status type you want to edit and click the **trash can icon** in the **Actions** column.
2. In the **Delete access status type** dialog, click **Delete**. A confirmation message appears and the access status type is deleted.


## Settings > eHoldings > Assigned users

Use this setting only if your library is planning to have multiple EBSCO KBs configured. If your library has access to multiple KBs, eHoldings needs to know to which KB to grant a user access, so users need to be assigned to a KB. Users are configured in the Users app.


### Assigning a user



1. Click **Assign users**.
2. In the **Select User** dialog, enter the user’s name or a portion of their name into the search box in the **User Search** pane, and click **Search.** User Search Results appear.
3. Optional: Filter results by Status or by Patron group.
4. Select the desired user by clicking on the user’s name. The user is assigned.


### Unassigning a user



1. Find the user you want to unassign.
2. Click the **trash can icon** in the row of the user.
3. In the **Unassign a user from a knowledge base** dialog, click **Unassign**. The user is unassigned and removed from the assigned users table.


## Settings > eHoldings > Usage consolidation


For libraries that subscribe to EBSCO's Usage Consolidation service. Use this setting to integrate FOLIO with the EBSCO Usage Consolidation product in order to populate eResource usage statistics (typically from a FOLIO's site's COUNTER reports). A Usage & analysis accordion will display in eHoldings package and title records.

Libraries can add cost per package and title to the Usage & analysis display, if this information is available in EBSCOAdmin. The library selects how to track their usage in EBSCOAdmin. 

Request Usage consolidation credentials from your library’s EBSCO-FOLIO implementation consultant or submit a request to EBSCOConnect.



1. Enter your library’s **Usage consolidation ID** (required).
2. Enter your library’s **Usage consolidation client ID** (required).
3. Enter your library’s **Usage consolidation API key** (required).
4. Select the **Start month for usage statistics** from the drop-down list. 
5. Select the platform for the usage statistics default display. Options include all platforms, publisher platforms, and non-publisher platforms. 
6. Select the **Currency** (required). 
7. Click **Save**.
