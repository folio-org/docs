---
title: "Bulk Edit"
linkTitle: "Bulk Edit"
date: 2022-09-22
weight: 550
---

## Introduction

The Bulk Edit app allows you to apply changes to many different records at one time. 

In Morning Glory, bulk edits are supported for two types of records:


* **Users**: You can edit user records through FOLIO’s **CSV** approach, where you download copies of the user record, make changes in the file to the records, and then upload the file back to the Bulk Edit app, which applies your changes.
* **Items**: You can edit item records in the Inventory app through FOLIO’s **In App** approach, where you upload a list of identifiers to find the items, set up desired field changes in the app, and then run the bulk edit job to apply your changes. 

Other types of records will be added in future releases.

## Permissions

The permissions listed below allow you to interact with the Bulk Edit app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Bulk Edit app or any related information.

* **Bulk Edit: (CSV) Delete** This permission allows the user to delete multiple user records in Bulk Edit using the CSV method.
* **Bulk Edit: (CSV) Edit** This permission allows the user to edit a field in multiple userrecords in Bulk Edit using the CSV method.
* **Bulk Edit: (CSV) View** This permission allows the user to view a list of identified user records in Bulk Edit using the CSV method.
* **Bulk Edit: In App - Delete** This permission allows the user to delete multiple inventory records in the Bulk Edit app. 
* **Bulk Edit: In App - Edit** This permission allows the user to edit a field in multiple inventory records in the Bulk Edit app. 
* **Bulk Edit: In App - View** This permission allows the user to view a list of inventory records in the Bulk Edit app. 

Depending on how your library runs bulk edit jobs, users may also need permissions in other modules, such as Export Manager, Inventory, Users, and Settings.


## Types of bulk edits: CSV and in-app

The bulk edit app supports two methods for editing records: CSV, and in-app.

### CSV Approach
The CSV approach in Bulk Edit uses a .csv file to display records matching a selected **Record identifier**. Changes are made to the matching record, saved in the .csv file, and committed by uploading the edited .csv file in the Bulk Edit app.

### In-App Approach
The In-App approach in Bulk Edit allows the user to change multiple records matching a selected **Record identifier** in the Bulk Edit app in the browser window. 

## User records
### Preparing a file for bulk edit

The Bulk edit app only accepts CSV files for upload. Only files with one column of record identifiers can be uploaded.

1. Ensure **Record types** is set to **Users**.
2. In the **Set Criteria** pane, select the **Record identifier** type from the drop-down list. The record identifier type you select should correspond to the type of record identifier in your CSV file.
3. Either drag and drop your CSV file into the box, or click **or choose file** to locate the file on your computer.
### Using preview to view matched records

Once the CSV file is uploaded, the number of records matched is displayed at the top of the Bulk edit pane. The preview section displays the first ten results in the list of matching records.

The following information appears in the Preview of Record Matched pane:

* **Status.** The status of the user.
* **Last name.** The last name of the user.
* **First name.** The first name of the user.
* **Barcode.** The numerical sequence associated with the user and validated by a barcode scanner.
* **Patron group.** The patron group to which the user belongs.
* **Username.** The username of the user.
* **Email.** The email address of the user.
* **Expiration date.** The expiration date of the user's permissions.

If one or more of these columns is missing in the preview pane, click the Actions button and select it from the drop-down menu. 
### Understanding errors
If errors were found when searching for the matched records, they will display in the *Errors* accordion. 

Two columns will display:

* **Record identifier.** The identifier for the record that produced the error
* **Reason for error.** The reason the search did not result in a matched record. 

### Making changes locally and uploading
#### Downloading Matched Records to your Local Device

1. Click the **Actions** button.
2. From the drop-down menu, select **Download matched records (CSV)**.
3. Open the file on your local device.
4. Edit the records and save the file on your local device. Make sure you save the file in CSV format.

#### Uploading Edited Records to FOLIO

1. Click the **Actions** button.
2. From the drop-down menu, select **Start bulk edit (CSV)**. 
3. In the **Bulk edit** pane, either drag and drop your file into the box, or click **or choose file** to locate the file on your computer.
4. If the file is uploaded successfully, there will be a confirmation message.

### Committing your changes

1. Once the file is uploaded, click **Next**.
2. To update records, click **Commit changes**. The window closes, and the edited records are shown in the Preview of Record Changed pane. 


## Item records
### Identifying records for bulk edit

The Bulk edit app only accepts CSV files for upload. Only files with one column of record identifiers can be uploaded.

1. In the **Select Criteria** pane, select the **Record identifier** from the drop-down list. The record identifier you select should correspond to the type of record identifier in the CSV file uploaded.
2. Ensure **Record types** is set to **Inventory - items**.
3. Either drag and drop your CSV file into the box, or click **or choose file** to locate the file on your computer.
### Using preview to view matched records

Once you search for an item record, the following information appears in the Preview Record Matched pane:

* **Barcode.** A numerical sequence attached to the item and validated by a barcode scanner.
* **Status.** The status of the item.
* **Item effective location.** The effective location of the item.
* **Effective call number.** The effective call number of the item.
* **Item HRID.** The human-readable identifier (HRID) of the item. 
* **Material type.** The material type of the item. The material type is the material nature of a specific item, intending to permit more specific information than resource type alone.
* **Permanent loan type.** The permanent loan type of the item.
* **Temporary loan type.** The temporary load type of the item. 
* **Item UUID.** The universally unique identifier (UUID) of the item.
* **Former identifiers.** Previous identifiers assigned to the item.
* **Accession number.** The accession number of an item. The accession number is a unique number assigned to an item in the order in which it is added to a library collection.
* **Item permanent location.** The permanent location of the item.
* **Item temporary location.** The temporary location of the item.
* **Copy number.** The copy number of the item. The copy number reflects whether the library has one (or more) copies of a single-volume monograph.
* **Enumeration.** The enumeration associated with the item. The enumeration data of the item is the descriptive information for the numbering scheme of a serial.
* **Chronology.** The chronology associated with the item. The chronology is the descriptive information for the dating scheme of a serial.
* **Volume.** The volume number of the item.

### Understanding errors
If errors were found when searching for the matched records, they will display in the *Errors* accordion. 

Two columns will display:

* **Record identifier.** The identifier for the record that produced the error
* **Reason for error.** The reason the search did not result in a matched record. 


### Running a bulk edit job

1. Click the **Actions** button.
2. From the drop-down menu, select **Start bulk edit**. 
3. Under Options, click the drop-down list and select the field you want to edit.
4. Under Actions, click **Select action** and select the action you want to apply to the item records.
5. If you are replacing the permanent item location or the temporary item location, click **Select location** and select the new permanent or temporary item location from the drop-down list. 
6. To edit another field during the same Bulk edit job, click the plus sign near the end of the row. Another row will appear under the existing row(s).
7. To delete a row, click the trash icon at the end of the row you want to delete. The row is deleted. 
8. Click **Confirm changes**. A new window will appear with a preview of the first 10 records to be changed.
9. To exit the bulk edit, click **Keep editing**. The window will close and you can continue editing.
10. To preview the entire list of records, click **Download preview**. A CSV file is downloaded to your local device.
11. To run the bulk edit job, click **Save & close**. The window closes and the banner at top of the Bulk edit pane displays the number of records successfully changes.
12. To download the list of changed records, click the **Actions** button at the top right of the pane.
13. Select **Download changed records CSV**. The CSV file is downloaded to your local device. 
#### Editing Item Status
1. Under **Options**, select **Item status** from the drop-down list.
2. Click **Item status**. 
3. Select the item status you want to apply from the drop-down list.
4. Click **Confirm changes**. The new item status will be applied to the item records. 
#### Editing Permanent Item Location 
1. Under **Options**, select **Permanent item location** from the drop-down list.
2. Click **Actions** to select **Replace with**. 
3. Click ** Select Location** and select the temporary item location from the drop-down list.
4. Click **Confirm changes**. The new temporary item location will be applied to the item records. 
#### Editing Temporary Item Location 
1. Under **Options**, select **Temporary item location** from the drop-down list.
2. Click **Actions** to select **Replace with**. 
3. Click ** Select Location** and select the temporary item location from the drop-down list.
4. Click **Confirm changes**. The new temporary item location will be applied to the item records. 
#### Using Location Look-up
1. Under **Select Location**, click **Location look-up**.
2. Under **Institution**, select an institution from the drop-down list.
3. Under **Campus**, select the campus from the drop-down list.
4. Under **Library**, select the library from the drop-down list.
5. Under **Location**, select the location from the drop-down list.
6. Click **Save & Close**.
