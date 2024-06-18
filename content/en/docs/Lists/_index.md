---
title: "Lists"
linkTitle: "Lists"
date: 2024-04-26        
weight: 525
---


The Lists app provides actionable lists in FOLIO at the point of need. Some use cases include:


* Create a custom list when a report isn’t available in FOLIO;
* Create lists of records across apps and record types;
* Enable actions and workflows on a list of records;
* Access a set of pre-generated (canned) lists.


Functionality of the Lists app includes:


* Lists persist, can be refreshed and edited;
* List data updated in near real-time;
* User-friendly process for building a query to create a list;
* Export records from a list as a .csv file;
* Each list can include up to 1.25 million records.


Definition of terms related to the Lists app:


* **Record set**: The set (or list) of records retrieved through a query.
* **Operator**: The function applied in a query to match records by selected field and inputted value. 
* **Value**: The text and/or number(s) input to query records with a selected field and selected operator.
* **Field**: The identifier used to query records.
* **Query**: The search string used to generate a list that includes a field, operator, and value.
* **Source**: The FOLIO account used to create and save a list. 


## Permissions


The permissions listed below allow a user to interact with the Lists app and determine what the user can and cannot do within the app. If none of these permissions are assigned to a user, they are unable to see the Lists app or any related information. For more information on permissions, see [Platform Essentials > Permissions](../platform-essentials/permissions/).


The following are the permissions for the Lists app:


* **Lists (Admin): All permissions**. This permission allows a user to view, edit, refresh, export, and delete lists.
* **Lists (Delete): Can create, edit, refresh, and delete lists**. This permission allows a user to view, create, edit, refresh, and delete lists. 
* **Lists (Edit): Can create, edit, and refresh lists**. This permission allows a user to view, create, edit, and refresh lists.
* **Lists (Enable): Can view Lists**. This permission allows a user to view **Lists** and **List details**.
* **Lists (Export): Can create, edit, refresh, and export lists**. This permission allows a user to view, create, edit, refresh, and export lists.


## View a list


To view a list, open the Lists app. A list of Lists is displayed in the **Lists** pane. 


### Filters


The selection of lists in the **Lists** pane can be narrowed by applying filters. The **Filter pane** includes the following filters: 


* **Status**
   * **Active**: An active list contains a query and a resulting record set. 
   * **Inactive**: An inactive list contains a query but no record set.



* **Visibility**
   * **Shared:** Shared lists can be accessed by all users with permissions to the Lists app in this organization. 
   * **Private:** Private lists can only be accessed by the user logged in.



* **Record Types**
   * **Holdings**: Record set of list includes holdings records.
   * **Instance**: Record set of list includes instance records.
   * **Items**: Record set of list includes item records. 
   * **Loans**: Record set of list includes loans.
   * **Organizations - contact info**: Record set of list includes contact information for each organization.
   * **Organizations - vendor**: Record set of list includes agreements for each organization.
   * **Purchase order lines**: Record set of list includes information about purchase order lines (POLs).
   * **Users**: Record set of list includes user records.


Select a list to view by highlighting and clicking on it in the **Lists** pane. The selected list opens in a new window.


### List information 


The **List information** section displays details about the list. 


* **List name**: Title of the list
* **Description**: A description of the list. This criteria is optional.
* **Visibility**: **Shared** or **Private**.  
* **Status**: **Active** or **Inactive**
* **Source**: Username or FOLIO account used to create the list.


### Query 


Query details for the selected list appear in the **Query** section and include the query string, the number of records found by the query, and the number of items in the list. 


### Field headings


In a list, the fields for the record set display as column headings. Customize the display of column headings in the record set by checking or unchecking the field(s) in **Actions \> Show columns** as appropriate. 


To view the refreshed list, click **Actions \> Refresh List** and click the **View updated list** link in the confirmation message.


## Create a list


A new list must have **List information** and a **Query** assigned to establish the record set for the list. A **Test query** must be performed before the query can be run and saved. 


### List information


To add list details for a new list, follow these steps:


1. In the Lists pane, click on **New**. 
2. In the **New List** window, add the **List name**, **Description**, **Visibility**, and **Status** criteria in the **List information** section. 
3. Select the appropriate **Record type** for the list. Select the appropriate **Record type** for the list. Record types include **Holdings**, **Instances**, **Items**, **Loans**, **Organizations - contact info**, **Organizations - vendor info**, **Purchase order lines**, and **Users**.


### Build a query


The **Build query** function in the Lists app allows the user to build a query for these record types: **Holdings**, **Instances**, **Items**, **Loans**, **Organizations - contact info**, **Organizations - vendor info**, **Purchase order lines**, and **Users**. The query string populates in the **Query** field as the query is built. 


To set criteria and build a query for new list, follow these steps: 


1. Click the **Build query** button to open the **Build query** window. 
2. Select the **Record type** for the query. 
3. Select a **Field** from the **Filter options list** drop-down menu. The **Fields** available for selection in the **Filter options** are based on the **Record Type**. 
4. Select an **Operator** from the **Select operator** drop-down list. The operators available for selection are based on the **Field**. 

* ==: Field equals the selected Value.
* !=: Field does not equal the selected Value.
* In: Field appears in the selected Value.
* Not in: Field does not appear in the selected Value.
* Is null/empty: Field is empty; it contains no data. 

5. Select a **Value** from the **Select value** drop-down list. The **Values** available for selection are based on the **Record Type** and **Field**.
6. Click on the **+ icon** to add additional lines to the query; Click on the **trash can icon** to delete a line from the query. 
7. Click the **Test query** button to preview the returned record set of the list. 
Test query is required before the query can be run and saved whenever 1) creating a new list and building the query; and 2) editing the query of an existing list. Test query runs the query and displays the total number of records retrieved and a preview of the first 100 records in the record set. 
8. Click **Run query & save**. If saved successfully, a *(Name of List) saved successfully* message appears momentarily. Once the query is completed, a *Refresh complete with (number of) records: View updated list* at the top of the window. 
9. Click the **View updated list** link in the confirmation message to view the record set in the list. 
10. In a list, the fields of the record type display as column headings. The default display of column headings is based on the record type assigned to the list. Customize the display of column headings in the record set by checking or unchecking the field(s) in **Actions \> Show columns** as appropriate for the selected record type. 


### Test query


Once a query is built, it must be tested before the query can be run and saved.  **Test query** is required in the following scenarios: 


* Creating a new list and building the query. 
* Editing the query of an existing list.


**Test query** runs the query and displays a preview of the returned record set. The first 100 records are displayed in the preview pane and the total count of records appears at the top of the preview pane.


## Update a record set in a list


The record set in a list is static, but the metadata of each record is updated in near real-time. If modification is made to a record outside of the Lists app, the record remains in the record set of the list. The updated record can be viewed by refreshing the list.


To refresh or update the record set in a list, follow these steps:


1. Click **Actions \> Refresh list**. The system will re-run the query. A *Refresh complete with (number of) records* confirmation message appears at the top of the screen. 
2. Click the **View updated list** link in the confirmation message to view the updated record set in the list. 


## Edit a list


To edit the **List information** in a list, follow these steps: 


1. Select the list in the **Lists** pane. The list opens a new window.
2. Click **Actions \> Edit List**. 
3. In the **List information** section, edit the **List name**, **Description**, **Visibility**, and/or **Status** fields as appropriate.
4. Click **Save**. A *List (List Title) was saved* confirmation message will appear in the lower right corner of the screen. 


To edit the **Query** in a list, follow these steps: 


1. Select the list in the **Lists** pane. The list opens a new window.
2. Click **Actions \> Edit List**. 
3. In the **Query** section, click **Edit query**. Make changes to **Field**, **Operator**, and/or **Value** as appropriate. The **Query** field displays a preview of the query as it is edited.
4. If necessary, click on the **+ icon** to add additional rows to the query or click on the **trash can icon** to delete rows from the query. 
5. Click the **Test query** button to see how many records are returned and to preview the record set of the list. See [Test query](#test-query) for more information. 
6. Click the **Run query & save** button. A confirmation message, *List_ListTitle_was saved* will appear in the lower right corner of the screen. 


## Duplicate a list

To duplicate a list, follow these steps:

1. Select the list from the **Lists** pane. The selected list will open in a new window. 
2. Click **Actions \> Duplicate List**. 
3. Edit the **List name**, **Description** (optional), or change **Visibility** and **Status**,  if appropriate. 
4. Edit the query, if appropriate, by clicking the **Edit query** button. 
5. Make changes to **Field**, **Operator**, and/or **Value**. The **Query** field displays a preview of the query string as it is edited.
6. If necessary, click on the **+ icon** to add additional rows to the query; click on the **trash can icon** to delete rows from the query. 
7. Click the **Test query** button to see how many records are returned and to preview the record set of the list. Test query is required when editing the query of a list before the new query can be run and saved. 
8. Click the **Run query & save** button. A confirmation message, *List (Duplicate List Name) was saved* will appear in the lower right corner of the screen. 
If duplicating the list without making any changes, click **Save.** A confirmation message, *List (Original List Name) - copy was saved* appears in the lower right corner of the screen. 

## Delete a list


To delete a list, follow these steps: 


1. Select the list from the **Lists** pane. The selected list will open in a new window. 
2. Click **Actions \> Delete List**. 
3. A confirmation modal appears: *Are you sure you want to delete the list _List Title_?*
4. Click the **Delete** button to delete the list.


## Export a list 


A list can be exported from the Lists app and downloaded as a .csv file. To export a list, follow these steps: 


1. Select the list from the **Lists** pane. 
2. Click the **Actions** button. Select or deselect the column headings to display in your exported file. 
3. Click **Actions \> Export list (CSV)** to download the list as a .csv file. When successfully completed, an *Exported list …* confirmation message appears in the bottom right corner of the screen. 
4. Depending on your browser settings, the exported list may be automatically saved in your Downloads folder.
