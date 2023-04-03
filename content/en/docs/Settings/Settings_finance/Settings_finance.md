---
title: "Settings > Finance"
linkTitle: "Finance"
date: 2023-04-23
weight: 120
tags: ["subtopic"]   
---

The Finance section of the Settings app is where you establish and specify the categories you want to use to classify the different fund types that will be used during a fiscal year.


## Permissions

In order to interact with Finance settings, a user needs to be assigned the following permission:



*   **Settings (Finance): Can view and edit settings.** This permission allows the user to view, create, edit, and delete all finance settings.

Note: This is the only permission available for Finance settings. With some other Finance permissions, the user is able to view the settings, but they are unable to create, edit, or delete the settings. You can assign permissions to users in the Users app.


## Settings > Finance > Fund types

A fund type is a categorization to help distinguish between the purpose of the different funds. You can use fund types to track the types of items funds are applied to, such as gifts, endowments, and exchanges. You need to first add the fund types in the Settings app in order to assign them to funds as fund types are created within the system. Fiscal year rollover of funds is often defined by fund type, so definition of the type values should consider future fiscal year rollover requirements.

For more information on adding funds and fund information, see Creating a new fund.


### Creating a new fund type

1. Click **New**.

2. Enter a fund type **Name** in the box.

3. Click **Save**. The fund type is saved and appears in the Fund types list.


### Editing a fund type

1. Find the fund type you want to edit and click the **pencil icon**.

2. Edit the Name.

3. Click **Save**. The fund type is updated. Note: if another user edited and saved the same fund type record while you were editing, the following message appears: "You are editing an old version of this data. To load the latest version click cancel, refresh the page and try again."


### Deleting a fund type

1. Find the fund type you want to delete. Click the **trash can icon**.

2. In the **Delete Fund type** dialog, click **Delete**. A confirmation message appears and the fund type is deleted.


## Settings > Finance > Expense classes

Expense classes allow you to track spending by defined categories within a fund. They enable tracking and reporting by the classes defined in this setting. For example, you may want to track spending based on order format (electronic vs print). When an order or invoice is created, both the fund and the expense class can be selected by the user.

For more information on adding funds and fund information, see Creating a new fund.


### Creating a new expense class

1. Click **New**.

2. Enter a category **Name**, **Code**, and **External account number extension** in the boxes.

3. **Name.** The name to designate the expense class.

4. **Code.** Self-created, based on name, a unique identifier for the expense class.

5. **External account number extensions.** The financial account listing outside of the system linked to the expense class. For example, 01. 

6. Click **Save**. The expense class is saved and appears in the Expense class list.


### Editing an expense class

1. Find the expense class you want to edit and click the **pencil icon**.

2. Edit the Name, Code, or External account number extension.

3. Click **Save**. The expense class is updated. Note: if another user edited and saved while you were editing the same expense class, the following message appears: "You are editing an old version of this data. To load the latest version click cancel, refresh the page and try again."


### Deleting an expense class

1. Find the expense class you want to delete. Click the **trash can icon**.

2. In the **Delete Expense class** dialog, click **Delete**. A confirmation message appears and the expense class is deleted.


## Settings > Finance > Export fund and expense class codes

This setting creates a delimited file that includes all Fund codes and all Fund code and expense class code combinations where the expense class status is active.  To create the file, follow these steps:

1. Under Export settings, select the Fiscal year for export from the drop down list.

2. Click the Export button to initiate the export. A message will display to indicate that the Combined code list was successfully exported.  The file is downloaded to your local download folder containing two fields:

*   **Fund code.** The fund code value.
*   **Fund and active expense class codes.** A concatenated string in this format "fund code:expense class code."  Example: AFRICAHIST:Elec.
