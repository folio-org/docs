---
title: "Bulk Edit"
linkTitle: "Bulk Edit"
date: 2022-11-30
weight: 550
---

## Introduction

The Bulk Edit app allows you to apply changes to many different records at one time. 

In Nolana, bulk edits are supported for three records types

* **Users**: You can edit user records through FOLIO’s **CSV** approach, where you download copies of the user record, make changes in the file to the records, and then upload the file back to the Bulk Edit app, which applies your changes. You can also use FOLIO’s **In App** approach, where you upload a list of identifiers to find the users, set up desired field changes in the app, and then run the bulk edit job to apply your changes.
* **Inventory items**: You can edit item records in the Inventory app through FOLIO’s **In App** approach, where you upload a list of identifiers to find the items, set up desired field changes in the app, and then run the bulk edit job to apply your changes. 
* **Inventory holdings**: You can edit holdings records in the Inventory app through FOLIO’s **In App** approach, where you upload a list of identifiers to find the items, set up desired field changes in the app, and then run the bulk edit job to apply your changes. 

Other types of records will be added in future releases.


## Permissions

The permissions listed below allow you to interact with the Bulk Edit app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Bulk Edit app or any related information.

* **Bulk Edit: (CSV) Delete** This permission allows the user to delete multiple user records in Bulk Edit using the CSV method.
* **Bulk Edit: (CSV) Edit** This permission allows the user to edit a field in multiple user records in Bulk Edit using the CSV method.
* **Bulk Edit: (CSV) View** This permission allows the user to view a list of identified user records in Bulk Edit using the CSV method.
* **Bulk Edit: In App - Delete** This permission allows the user to delete multiple inventory records in the Bulk Edit app. 
* **Bulk Edit: In App - Edit** This permission allows the user to edit a field in multiple inventory records in the Bulk Edit app. 
* **Bulk Edit: In App - View** This permission allows the user to view a list of inventory records in the Bulk Edit app. 

Depending on how your library runs bulk edit jobs, users may also need permissions in other modules, such as Export Manager, Inventory, Users, and Settings.


## Types of bulk edits: CSV and in-app

The Bulk edit app supports two methods for editing records: CSV, and in-app.

### CSV Approach

The CSV approach in the Bulk Edit app uses a .csv file to display records matching a selected **Record identifier**. Changes are made to the matching record, saved in the .csv file, and committed by uploading the edited .csv file in the Bulk Edit app. 

Note that if you are using Microsoft Excel, it can process CSV files in ways that change data unexpectedly, especially with date and time fields. We recommend reviewing CSV data in a text editor to make sure that you do not make unexpected changes to records with the CSV approach.

### In-App Approach
The In-App approach in the Bulk Edit app allows the user to search for and change multiple records in the browser window. 

## User records

### Preparing a file for bulk edit

The Bulk edit app only accepts CSV files for upload. Your file must have only one column of record identifiers. 

From the **Set Criteria** pane: 

1. Select **Users** under **Record types**.
2. Select the record identifier type in your file from the  ** Record identifier** drop-down menu.
3. Drag and drop your CSV file into the box, or click **or choose file**, to upload the file from your computer.

### Using preview to view matched records

Once the CSV file is uploaded, the number of records matched is displayed at the top of the Bulk edit pane. The preview section displays the first ten results found. 

The following information appears in the Preview of Record Matched pane:

* **Status.** The status of the user.
* **Last name.** The last name of the user.
* **First name.** The first name of the user.
* **Barcode.** The barcode from the user record.
* **Patron group.** The patron group to which the user belongs.
* **Username.** The username of the user.
* **Email.** The email address of the user.
* **Expiration date.** The user record’s expiration date. 

If one or more of these columns is missing in the preview pane, click the **Actions** button and select it from the drop-down menu. 

### Understanding errors
If errors were found when searching for the matched records, they will display in the *Errors* accordion. 

Two columns will display:

* **Record identifier.** The identifier for the record that produced the error
* **Reason for error.** The reason the search did not result in a matched record. 

## Making changes

#### Upload Edited Records to FOLIO

1. Click the **Actions** button.
2. From the drop-down menu, select **Start bulk edit (CSV)**. 
3. In the **Bulk edit** pane, either drag and drop your file into the box, or click **or choose file** to locate the file on your computer.
4. If the file is uploaded successfully, there will be a confirmation message.

#### Commit your changes

1. Once the file is uploaded, click **Next**.
2. To update records, click **Commit changes**. The window closes, and the edited records are shown in the Preview of Record Changed pane. 

### Running a bulk edit job

1. In the **Set Criteria** pane, ensure **Record types** is set to **Users**.
2. In the **Set Criteria** pane, use the **Select record identifier** drop-down list to select the type of record identifier in your CSV file.
3. Click the **Actions** button.
4. From the drop-down menu, select **Start bulk edit**. 
5. Under Options, click the drop-down list and select the field you want to edit.
6. Enter the data for editing. 
7. To edit another field during the same Bulk edit job, click the plus sign near the end of the row. Another row will appear under the existing row(s).
8. To delete a row, click the trash icon at the end of the row you want to delete. The row is deleted. 
9. Click **Confirm changes**. A new window will appear with a preview of the first 10 records to be changed.
10. To exit the bulk edit, click **Keep editing**. The window will close and you can continue editing.
11. To preview the entire list of records, click **Download preview**. A CSV file is downloaded to your local device.
12. To run the bulk edit job, click **Save & close**. The window closes and the banner at top of the Bulk edit pane displays the number of records successfully changed.
13. To download the list of changed records, click the **Actions** button at the top right of the pane.
14. Select **Download changed records CSV**. The CSV file is downloaded to your local device. 

#### Editing Email
1. Under **Options**, select **Email** from the drop-down list.
2. Click **Email**. 
3. The only available action is **Find/Replace with**. Enter the data to be found and replaced.
4. Click **Confirm changes**. The email changes will be applied to the user records. 

#### Editing Expiration date
1. Under **Options**, select **Expiration date** from the drop-down list.
2. The only available action is **Replace with**.
3. Enter the new date in MM/DD/YYYY format or click on the calendar to select the new date.
4. Click **Confirm changes**. The new expiration date will be applied to the user records. 

#### Editing Patron group 
1. Under **Options**, select **Patron group** from the drop-down list.
2.The only available action is **Replace with**.
3. Click ** Select patron group** and select the patron group from the drop-down list.
4. Click **Confirm changes**. The new patron group will be applied to the user records. 


### Understanding errors

If errors were found when searching for the matched records, they will display in the *Errors* accordion. 

Two columns will display:

* **Record identifier.** The identifier for the record that produced the error
* **Reason for error.** The reason the search did not result in a matched record. 

### Running a bulk edit (CSV) job

1. In the **Set Criteria** pane, ensure **Record types** is set to **Users**.
2. In the **Set Criteria** pane, use the **Select record identifier** drop-down list to select the type of record identifier in your CSV file.
3. Click the **Actions** button.
4. Either drag and drop your CSV file into the box, or click **or choose file** to locate the file on your computer.
5. Once the CSV file is uploaded, the number of records matched is displayed at the top of the Bulk edit pane. The preview section displays the first ten results found. If errors were found when searching for the matched records, they will display in the *Errors* accordion. 
6. From the drop-down menu, select **Download matched records (CSV)**. 
7. A CSV file will download to your local machine. 
8. Open the CSV file and make edits to the desired fields. Depending on the program you use to view and edit CSV files, you may need to verify that all fields are being processed as text to ensure edits are processed accurately by the **Bulk edit** app.
9. Save the CSV file to your local machine.
10. In the **Bulk edit** app, click the **Actions** button.
11. Select **Start bulk edit (CSV)**.
12. Either drag and drop your CSV file f edited records into the box, or click **or choose file** to locate the file on your computer.
13. Click **Next**.
14. A dialog will appear indicating the number of records that will be updated once the changes are committed.
15. Click **Commit changes**.
16. Once the changes are committed, the number of records changed is displayed at the top of the Bulk edit pane. The preview section displays the first ten results found. If errors were found when updating the user records, they will display in the *Errors* accordion. 
17. To view all changed records, click **Actions /> Download changed records (CSV)**.
18. To view all records where errors were found, click **Actions /> Download errors (CSV)**.




## Item records

### Identifying records for bulk edit

The **Bulk edit** app only accepts CSV files for upload. Only files with one column of record identifiers can be uploaded.

1.  In the **Set criteria** pane, ensure **Record types** is set to **Inventory - items**.
2. In the **Set criteria** pane, select the **Record identifier** from the drop-down list. The record identifier you select should correspond to the type of record identifier in the CSV file uploaded.
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

If one or more of these columns is missing in the preview pane, click the **Actions** button and select it from the drop-down menu. 

### Understanding errors
If errors were found when searching for the matched records, they will display in the *Errors* accordion. 

Two columns will display:

* **Record identifier.** The identifier for the record that produced the error
* **Reason for error.** The reason the search did not result in a matched record. 


### Running a bulk edit job

1. Click the **Actions** button.
2. From the drop-down menu, select **Start bulk edit**. 
3. Under **Options**, click the drop-down list and select the field you want to edit.
4. Under **Actions**, click **Select action** and select the action you want to apply to the item records.
5. To edit another field during the same Bulk edit job, click the plus sign near the end of the row. Another row will appear under the existing row(s).
6. To delete a row, click the trash icon at the end of the row you want to delete. The row is deleted. 
7. Click **Confirm changes**. A new window will appear with a preview of the first 10 records to be changed.
8. To return to the bulk edit, click **Keep editing**. The window will close and you can continue editing.
9. To preview the entire list of records, click **Download preview**. A CSV file is downloaded to your local device.
10. To run the bulk edit job, click **Save & close**. The window closes and the banner at top of the Bulk edit pane displays the number of records successfully changed.
11. To download the list of changed records, click the **Actions** button at the top right of the pane.
12. Select **Download changed records (CSV)**. The CSV file is downloaded to your local device. 

#### Editing Temporary Item Location 
1. Under **Options**, select **Temporary item location** from the drop-down list.
2. Click **Actions** to select **Replace with** or **Clear field””. 
3. For **Replace with**, Click **Select Location** and select the temporary item location from the drop-down list or use the **Location look-up**.
4. For **Clear field**, proceed to step 5.
5. Click **Confirm changes**. 
6. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
7. The changes will be applied to the item records once **Commit changes** is clicked.

#### Editing Permanent Item Location 
1. Under **Options**, select **Permanent item location** from the drop-down list.
2. Click **Actions** to select **Replace with** or **Clear field””. 
3. For **Replace with**, click **Select Location** and select the permanent item location from the drop-down list or use the **Location look-up**.
4. For **Clear field**, proceed to step 5.
5. Click **Confirm changes**. 
6. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
7. The changes will be applied to the item records once **Commit changes** is clicked.
 
#### Editing Item status
1. Under **Options**, select **Item status** from the drop-down list.

2. Select the item status you want to apply from the drop-down list.
3. Click **Confirm changes**. The new item status will be applied to the item records.
4. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
5. The changes will be applied to the item records once **Commit changes** is clicked. 
#### Editing Temporary loan type 
1. Under **Options**, select **Temporary loan type** from the drop-down list.
2. Click **Actions** to select **Replace with** or **Clear field””. 
3. For **Replace with**, Click **Select loan type** and select the temporary loan type.
4. For **Clear field**, proceed to step 5.
5. Click **Confirm changes**. 
6. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
7. The changes will be applied to the item records once **Commit changes** is clicked.

#### Editing Permanent loan type 
1. Under **Options**, select **Permanent loan type** from the drop-down list.

2. Select the loan type from the drop-down list..

3. Click **Confirm changes**. 
4. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
5. The changes will be applied to the item records once **Commit changes** is clicked.

### Download Matched Records (CSV)

1. Click the **Actions** button.
2. From the drop-down menu, select **Download matched records (CSV)**.
3. Open the file on your local device.
4. Edit the records and save the file on your local device. Make sure you save the file in CSV format.

## Holdings records
### Identifying records for bulk edit

The Bulk edit app only accepts CSV files for upload. Only files with one column of record identifiers can be uploaded.

1. In the **Set criteria** pane, ensure **Record types** is set to **Inventory - holdings**.
2. In the **Set criteria** pane, select the **Record identifier** from the drop-down list. The record identifier you select should correspond to the type of record identifier in the CSV file uploaded.
3. Either drag and drop your CSV file into the box, or click **or choose file** to locate the file on your computer.

### Using preview to view matched records

Once you search for a holdings record, the following information appears in the Preview Record Matched pane:

* **Holdings HRID.** The human-readable identifier (HRID) of the holdings record. 
* **Permanent location.** The permanent location of the item.
* **Temporary location.** The temporary location of the item.
* **Call number prefix.** Prefix of the call number on the holdings level.
* **Call number.** Call Number is an identifier assigned to an item, usually printed on a label attached to the item. The call number is used to determine the items physical position in a shelving sequence.
* **Call number suffix.** Suffix of the call number on the holdings level.
* **Holdings type.** Indicates the type of bibliographic format of the holdings record.
* **Effective location.**Indicates the effective location of the holdings record.
* **Holdings UUID.** The universally unique identifier (UUID) of the holdings record.
* **Source.** Format of the holdings source record, if a source record exists.
* **Discovery suppress.** Indicates if the holdings record is suppressed from your discovery layer.
* **Call number type.** The classification system used for the call number.

If one or more of these columns is missing in the preview pane, click the **Actions** button and select it from the drop-down menu. 

### Understanding errors
If errors were found when searching for the matched records, they will display in the *Errors* accordion. 

Two columns will display:

* **Record identifier.** The identifier for the record that produced the error
* **Reason for error.** The reason the search did not result in a matched record. 


### Running a bulk edit job

1. Click the **Actions** button.
2. From the drop-down menu, select **Start bulk edit**. 
3. Under **Options**, click the drop-down list and select the field you want to edit.
4. Under **Actions**, click **Select action** and select the action you want to apply to the item records.
5. To edit another field during the same Bulk edit job, click the plus sign near the end of the row. Another row will appear under the existing row(s).
6. To delete a row, click the trash icon at the end of the row you want to delete. The row is deleted. 
7. Click **Confirm changes**. A new window will appear with a preview of the first 10 records to be changed.
8. To return to the bulk edit, click **Keep editing**. The window will close and you can continue editing.
9. To preview the entire list of records, click **Download preview**. A CSV file is downloaded to your local device.
10. To run the bulk edit job, click **Save & close**. The window closes and the banner at top of the Bulk edit pane displays the number of records successfully changed.
11. To download the list of changed records, click the **Actions** button at the top right of the pane.
12. Select **Download changed records (CSV)**. The CSV file is downloaded to your local device. 

#### Editing Temporary holdings location 
1. Under **Options**, select **Temporary holdings location** from the drop-down list.
2. Click **Actions** to select **Replace with** or **Clear field””. 
3. For **Replace with**, click **Select Location** and select the temporary holdings location from the drop-down list or use the **Location look-up**.
4. For **Clear field**, proceed to step 5.
5. Click **Confirm changes**. 
6. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
7. The changes will be applied to the item records once **Commit changes** is clicked.

#### Editing Permanent holdings location 
1. Under **Options**, select **Permanent holdings location** from the drop-down list.

3. For **Replace with**, click **Select Location** and select the permanent holdings location from the drop-down list or use the **Location look-up**.

4. Click **Confirm changes**. 
6. The **Preview of records to be changed** will pop up with options of **Keep editing**, **Download preview**, or **Commit changes**.
7. The changes will be applied to the item records once **Commit changes** is clicked.
