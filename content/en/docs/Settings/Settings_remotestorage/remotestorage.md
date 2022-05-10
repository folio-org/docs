---
title: "Settings > Remote Storage"
linkTitle: "Remote Storage"
date: 2022-02-25
weight: 220
tags: ["subtopic"]
---
<!-- written with Juniper release -->

The Remote storage section of the Settings app is where you configure options to connect to an external remote storage system.   

Libraries generally use remote storage systems when they are housing books in a facility that is not the library. Often these facilities have high-capacity storage, where books are housed by size to be able to store as many items as possible. Libraries with these facilities need systems to keep track of where the books are in the facility and help manage patron requests to have items retrieved and shipped to the library for their use. 

The Juniper release supports connections to CAIASoft and Dematic. Generally, settings in this area will be managed by your library’s FOLIO administrator.

If a library does not use remote storage, they do not need to install remote storage modules or configure any settings in this area of FOLIO.

## Permissions

The permissions listed below determine what you can do or not do with the individual parts of the Remote storage section of Settings. If none of these permissions are assigned to a user, the user will not see this area of the Settings app.

* **Remote storage: Create, edit, delete**. This permission allows the user to view, create, edit, and delete remote storage settings.
* **Remote storage: View**. This permission allows the user to view all remote storage settings.

## Settings > Configurations

A configuration entry must be created for each remote storage system. Directions are different for Dematic EMS, Dematic StagingDirector, and CAIASoft.

### Create a configuration for Dematic EMS
1. Click **New**.
2. In the **Create configuration** screen, provide the **Remote storage name**, **Provider name**, and **URL (domain)**. 
3. For the **Data synchronization schedule**, choose how often FOLIO and your remote storage system will synchronize data. You may choose an interval of minute(s), hour(s), day(s), week(s), or month(s).
4. Click **Save & close**.

### Create a configuration for Dematic StagingDirector
1. Click **New**.
2. In the **Create configuration** screen, provide the **Remote storage name**, **Provider name**, **URL (domain)**, and **Status URL**.
3. For the **Data synchronization schedule**, choose how often FOLIO and your remote storage system will synchronize data. You may choose an interval of minute(s), hour(s), day(s), week(s), or month(s).
4. Click **Save & close**.

### Create a configuration for CAIASoft

1. Click **New**.
2. In the **Create configuration** screen, provide the **Remote storage name**, **Provider name**, **URL (domain)**, and **Credential properties**.
3. For the **Data synchronization schedule**, choose how often FOLIO and your remote storage system will synchronize data. You may choose an interval of minute(s), hour(s), day(s), week(s), or month(s).
4. For **Accession holding workflow preference**, choose one of two options:
  * **Change permanent location**: When an item is accessioned into CAIASoft, if the holdings permanent location does not have the same location as the new remote location of the item, the holdings permanent location is changed.
  * **Duplicate holdings**: When an item is accessioned into CAIASoft, and a holdings record for the new  remote location does not already exist, the non-remote holdings record is duplicated, the location on the new holdings record is changed to the item’s location, and the item is moved to that new holdings record.
5. For **Returning workflow preference**, choose one of two options:
  * **Items received at remote storage scanned into FOLIO**: When this option is selected, FOLIO will expect that an item will be scanned directly in FOLIO and FOLIO will send an update to CAIASoft indicating that the item is expected to be stored, and set the item’s FOLIO item status to **Available**.
  * **Items received at remote storage scanned into CAIASoft**: When this option is selected, FOLIO expects that items will be scanned for return in CAIASoft. When items are scanned in CAIASoft, CAIASoft will send information to FOLIO; if FOLIO finds open requests on the item, CAIASoft will immediately move the item into requesting workflows. If the item is not requested, FOLIO will check the item in and change the item status to **Available**.
6. Click **Save & close**.
  
### Edit a configuration

1. From the list of configurations, choose the one you wish to edit. It will open in a fourth pane.
2. On the fourth pane, choose **Actions > Edit**.
3. In the edit pane, make changes as desired.
4. Click **Save & close**.

### Delete a configuration

You will not be able to delete a configuration if any locations on your FOLIO instance are associated with the configuration.

1. From the list of configurations, choose the one you wish to delete. It will open in a fourth pane.
2. From the fourth pane, choose **Actions > Delete**.
3. Click **Delete** on the pop-up window to confirm.

## Settings > Accession Tables

Libraries only need to configure accession tables if they are using CAIASoft.

Accession tables provide a way to configure how locations change when items are accessioned into CAIASoft. The **Original location** is the item’s location at the library (non-remote); the **Final location (Remote)** is the location that that item should be moved to when received in CAIASoft. The location chosen as the **Final location (Remote)** must be associated with your CAIASoft provider as part of its configuration options.

To configure accession tables, first choose your provider name from the drop-down list. 

### Map an original location to a final location
1. Click the pencil icon under **Actions** for the location you wish to configure.
2. Under **Final location (Remote)**, click the dropdown and select the location that the non-remote location should map to at your remote storage facility. You may map more than one onsite non-remote location to a single remote location.
3. Click **Save** to save your changes.

### Edit a mapping between an original location and a final location
1. Click the pencil icon under **Actions** for the **Original location** you wish to configure.
2. Under **Final location (Remote)**, click the dropdown and make changes as desired.
3. Click **Save**.

### Remove a mapping between an original location and a final location
1. Click the pencil icon under **Actions** for the **Original location** you wish to configure.
2. Under **Final location (Remote)**, click the dropdown and choose **Select location name or code**. 
3. Click **Save**.
