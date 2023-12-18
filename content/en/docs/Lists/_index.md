---
title: "Lists"
linkTitle: "Lists"
date: 2023-12-14        
weight: 575
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


To view a list, open the Lists app. Lists that have been created by you and/or shared with you are displayed in the **Lists** pane. 


### Filters


The selection of lists in the **Lists** pane can be narrowed by applying filters. The **Filter pane** includes the following filters: 


* **Status**
   * **Active**: An active list contains a query and a resulting record set. 
   * **Inactive**: An inactive list contains a query but no record set.


* **Visibility**
   * **Shared:** Shared lists can be accessed by all users with permissions to the Lists app in this organization. 
   * **Private:** Private lists can only be accessed by the user logged in.


* **Record Types**
   * **Items**: Record set of list includes item records. 
   * **Loans**: Record set of list includes loans.
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


A record set in a list is currently limited to 1.25 million records. 


### List information


To add list details for a new list, follow these steps:


1. In the Lists pane, click on **New**. 
2. In the **New List** window, add the **List name**, **Description**, **Visibility**, and **Status** criteria in the **List information** section. For more information, see [List information](#list-information). 
3. Select the appropriate **Record type** for the list. Record types include **Items**, **Loans**, and **Users**.
4. Click **Build query** to start building a query for the list. For more information, see [Build a query](#build-a-query).


### Build a query


The **Build query** function in the Lists app allows the user to build a query for these record types: **Items**, **Loans**, and **Users**. The query string populates in the **Query** field as the query is built. 


To set criteria and build a query for new list, follow these steps: 


1. Click the **Build query** button to open the **Build query** window. 
2. Select the **Record type** for the query. Currently, record types include **Items**, **Loans**, and **Users**. For more information about building a query for a specific record type, see [**Items**](#record-type-items), [**Loans**](#record-type-loans), or [**Users**](#record-type-users) as appropriate.
3. Select a **Field** from the **Filter options list** drop-down menu. The **Fields** available for selection in the **Filter options** are based on the **Record Type**. 
4. Select an **Operator** from the **Select operator** drop-down list.
5. Select a **Value** from the **Select value** drop-down list. The **Values** available for selection are based on the **Record Type** and **Field**.
6. Click on the **+ icon** to add additional lines to the query. 
7. Click the **Test query** button to see how many records are returned and to preview the record set of the list. See [Test query](#test-query) for more information. 


#### Record type: Items


To build a query for **Record type: Items**, follow these steps:


1. Select a **Field** from the *Filter options list* drop-down menu. The **Fields** available for selection in the **Filter options** are based on the **Record Type**. 
2. Select an **Operator** from the **Select operator** drop-down list:
* ==: Selected **Field** equals the selected **Value**.
* !=: Selected **Field** does not equal the selected **Value**.
* In: Selected **Field** appears in the selected **Value**.
* Not in: Selected **Field** does not appear in the selected **Value**.
3. Select a **Value** from the **Select value** drop-down list. The **Values** available for selection are based on the **Record Type** and **Field**.
4. Click on the **+ icon** to add additional rows to the query. Click on the **trash can icon** to delete rows from the query. 
5. Click the **Test query** button to see how many records are returned and to preview the record set of the list. In an **Items** test query preview, the default column headings for the record set displayed include: 


* **Instance title**
* **Item barcode** 
* **Item copy number** 
* **Item effective call number**
* **Item effective location name**


To change the display of columns headings, click on the **Show columns** button. Uncheck fields to remove them from the display. Check fields to include them in the display.  
6. Click **Run query & save**. If saved successfully, a **Refresh complete with (number of) records* message displays along with a link to **View Updated List**.


#### Record type: Loans


To build a list for **Record type: Loans**, follow these steps:


1. Select a **Field** from the *Filter options list* drop-down list. The **Fields** available in the **Filter options list** are based on the selected **Record Type** . 
2. Select an **Operator** from the **Select operator** drop-down menu.


* ==: Selected **Field** equals selected **Value**.
* !=: Selected **Field does not equal selected **Value**.
* Contains: Selected **Field appears in selected **Value**.
* Starts: Selected **Field** starts with selected **Value**.


3. Select a **Value** from the **Select value** drop-down menu. The **Values** available for selection are based on the **Record Type** and **Field**. 
4. Click on the **+icon** to add additional lines to the query. 
5. Click the **Test query** button to see how many records are returned and to preview the record set of the list. In a **Loans** list test query preview, the default column headings for the record set displayed include: 


* **Instance title**
* **Item status**
* **Loan due date**
* **User barcode**
* **User expiration date**
* **User full name**
* **User patron group** 

To change the display of column headings, click on the **Show columns** button. Uncheck fields to remove them from display; Check fields to include them in the display. 

6. To save the query and the list, click the **Run query & save** button. If saved successfully, a *Refresh complete with (number of) records* message displays along with a link to **View Updated List**.


#### Record type: Users


1. Select a **Field** from the *Filter options list* drop-down list. The **Fields** available for selection in the **Filter options list** are based on the **Record Type** and **Value**. 
2. Select an **Operator** from the **Select operator** drop-down menu.


* ==: Selected **Field** equals selected **Value**.
* !=: Selected **Field** does not equal selected **Value**.
* In: Selected **Field** appears in selected **Value**.
* Not in: Selected **Field** does not appear in selected **Value**.


3. Select a **Value** from the **Select value** drop-down list. The **Values**available for selection in the **Select value** menu are based on the **Record Type** and **Field**. 
4. Click on the **+icon** to add additional lines to the query. 
5. Click the **Test query** button to see how many records are returned and to preview the record set of the list. In a **Users** test query preview, the default column headings for the record set displayed include: 


* **User active**
* **User barcode** 
* **User first name**
* **User ID**
* **User last name** 
* **User phone**
* **User preferred first name** 
* **Username**


To change the display of column headings, click on the **Show columns** button. Uncheck fields to remove them from display; Check fields to include them in the display. 

6. To save the query and the list, click the **Run query & save** button.
7. If successfully saved, a *Refresh complete with (number of) records* message displays along with a link to **View Updated List**.


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


### Edit the list information


To edit the **List information** in a list, follow these steps: 


1. Select the list in the **Lists** pane. The list opens a new window.
2. Click **Actions \> Edit List**. 
3. In the **List information** section, edit the **List name**, **Description**, **Visibility**, and/or **Status** fields as appropriate.
4. Click **Save**. A *List (List Title) was saved* confirmation message will appear in the lower right corner of the screen. 


### Edit the query


To edit the **Query** in a list, follow these steps: 


1. Select the list in the **Lists** pane. The list opens a new window.
2. Click **Actions \> Edit List**. 
3. In the **Query** section, click **Edit query**. Make changes to **Field**, **Operator**, and/or **Value** as appropriate. The **Query** field displays a preview of the query as it is edited.
4. If necessary, click on the **+ icon** to add additional rows to the query or click on the **trash can icon** to delete rows from the query. 
5. Click the **Test query** button to see how many records are returned and to preview the record set of the list. See [Test query](#test-query) for more information. 
6. Click the **Run query & save** button. A confirmation message, *List_ListTitle_was saved* will appear in the lower right corner of the screen. 


## Delete a list


To delete a list, follow these steps: 


1. Select the list from the **Lists** pane. The selected list will open in a new window. 
2. Click **Actions \> Delete List**. 
3. A confirmation modal appears: *Are you sure you want to delete the list (List Title)?*
4. Click the **Delete** button to delete the list.


## Export a list 


A list can be exported from the Lists app and downloaded as a .csv file. To export a list, follow these steps: 


1. Select the list from the **Lists** pane. 
2. Click the **Actions** button. Select or deselect the column headings to display in your exported file. 
3. Click **Actions \> Export list (CSV)** to download the list as a .csv file. When successfully completed, an *Exported list …* confirmation message appears in the bottom right corner of the screen. 
4. Depending on your browser settings, the exported list may be automatically saved in your Downloads folder.
