---
title: "Settings > Licenses"
linkTitle: "Licenses"
date: 2022-10-17
weight: 150
tags: ["subtopic"]   
---

The Licenses section of the Settings app is where you create license Terms and manage pick lists.


## Permissions

In order to interact with License settings, a user needs to be assigned the following permissions:



*   **Settings (Licenses): Manage pick lists and values**. This permission allows the user to access the License settings and the ability to manage pick lists and pick list values.
*   **Settings (Licenses): Manage license terms**. This permission allows the user to access the License settings and the ability to manage the available license terms.
*   **Settings (Licenses): Can view app settings**. This permission allows the user to view permissions to a set of "app settings" via the Settings. As of Lotus, the available app settings are to set up options for storing documents uploaded to the Licenses module in database (default) or S3 storage. 
*   **Settings (Licenses): Can view and edit app settings**. This permission allows the user to view and edit permissions to a set of "app settings" via the Settings. As of Lotus, the available app settings are to set up options for storing documents uploaded to the Licenses module in database (default) or S3 storage. 


## Settings > Licenses > Terms

Terms are the terms of use that define what you can or cannot do with the content associated with the license.

There are two types of terms you can create in FOLIO: primary and optional. Primary terms appear on every license record by default. Optional terms can be added on a license-by-license basis.


### Creating a term



1. Click **New**.
2. In the **New license term** box, fill in all the fields:
    * **Type.** Select a term **Type** from the drop-down list: Decimal, Integer, Text, Text, Pick list, Pick list (multi-select), or Date.
Note: This cannot be edited once the Term is created.
    * **Pick list** and **Pick list (multi-select).** If the term type is **Pick list** or **Pick list (multi-select)**, a pick list field displays. Select the **Pick list** you want to use from the drop-down list. For more information on pick lists, see [Settings > Licenses > Pick lists](#settings--licenses--pick-lists).
    * **Label.** The term name that appears when displaying the Term to users in FOLIO and in any other systems that display license terms to users. It is recommended that you create a short text string that clearly communicates the information recorded in the term. If you need to further explain the term, you should use the Description field.
    * **Name.** Used when outputting term data in a machine readable format. It is not intended to be displayed to users (staff or patrons). It should be a short Latin alphabet string that can be used by any external systems or programs that access the license term data. Use of camelCase is suggested but not required. Changes to the license term name would affect any external systems using license term data and changes should not be made without consulting those responsible for relevant external systems and software.
    * **Description.** Use to provide further explanation of the term. In the Licenses app, you can display the description by clicking the **information icon** next to the term’s label.
    * **Category.** Terms can be categorized. Each category will appear as a separate accordion when viewing or editing the license. You can also filter terms by category under the **Category** drop-down list, which contains any categories that you have allocated to terms. To add a category, click on the **Category** box. You are offered a list of existing categories that will filter as you type. You can add new categories by typing a new value and clicking the option to **Add context <value>**. If you remove all occurrences of a category across all terms, it will be removed from the list of existing categories.
    * **Order weight.** To determine the order in which the terms appear in the license record, enter a number. If you do not set a value and leave the Order weight at 0 for each term, or they all contain the same number, then they are sorted alphabetically. When sorted alphabetically, uppercase letters are sorted before lowercase letters. For example, “Zebra” appears before “aardvark.”
    * **Primary term.** Select whether the term is a primary term. Primary terms always display for selection in the license record. If you select **No**, then the term will be optional, and you will have to manually add it to the license record whenever you want to use that term.
    * **Deprecated.** Use to indicate if a term should be deprecated. If **Yes** is selected, then the term will be preserved in past licenses, but will not display in the list of available terms when adding terms to a license going forward.
    * **Default visibility.** Select whether you would like the term to display internally within FOLIO, or externally to the public (for example, if you are setting up properties to display in your catalog).
3. Click **Save**. A confirmation message appears, and the term is saved and appears in the Terms pane.


### Editing a term

Note: You cannot edit the term Type once the term is created.



1. Find the term you want to edit and click **Edit** at the top of its term box.
2. Make your desired changes to the term.
3. Click **Save**. A confirmation message appears and the term is updated.


### Deleting a term

Note: You can only delete a term if it is not assigned to any license records.



1. Find the term you want to edit and click **Delete** at the top of its term box.
2. In the **Delete term** dialog, click **Delete**. A confirmation message appears and the term is deleted.


### Searching a term



You can search for a term in the search box. To search for a term, enter the term in the search box and click **Search**.

You can also filter terms by category. Select a category from the **Category** drop-down list, and click **Search.** The drop-down list contains any categories that you have allocated to terms.


## Settings > Licenses > Pick lists

A pick list is a customizable drop-down list used in the Licenses app. Pick lists are applied to license Terms that have the property Type of Pick list. Additionally, default pick lists like Type and Status can be found in this setting.

A multi-select pick list permits you to select multiple values from the pick list. All selected values will display in the license record.

Use this setting to establish the names of your available pick lists. Once you have named your pick lists, you can configure the values that are available in each pick list in [Settings > Licenses > Pick list values](#settings--licenses--pick-list-values).


### Creating a pick list

Note: Pick lists cannot be edited once they are created. However, they can be deleted.



1. Click **New.**
2. Enter a name in the **Pick list** box.
3. Click **Save**. The pick list is saved and appears alphabetically in the Pick list column.


### Deleting a pick list

Note: You can only delete pick lists if they aren’t assigned to any license records. If they are used in any license records, the trash can icon will not appear in the Actions column.



1. Find the pick list you want to delete.
2. In the Actions column, click the **trash can icon**.
3. In the **Delete Pick list** dialog, select **Delete**. A confirmation message appears and the pick list is deleted.


## Settings > Licenses > Pick list values

Pick list values are the values available for selection within a pick list. You must first create the pick list in [Setting > Licenses > Pick lists](#settings--licenses--pick-lists) before creating its values.

Note: FOLIO contains default pick lists that can only have their values edited. These values cannot be deleted, and new values cannot be added. The New button appears grayed out and the trash can icon won’t be present for these pick lists.


### Adding pick list values



1. Select the **Pick list** to which you want to add values in the drop-down list.
2. Click **New.**
3. Enter a **Label**. The label appears as an option in the pick list.
4. Click **Save.** The label is saved and its value is generated.


### Editing pick list values

Note: If you edit a pick list value, only the Label changes and not the Value term.



1. Select the **Pick list** with the value you want to edit in the drop-down list.
2. In the row of the value you want to edit, click the **pencil icon**.
3. Edit the **Label**.
4. Click **Save**. The label is updated.


### Deleting pick list values



1. Select the **Pick list** with the value you want to delete in the drop-down list.
2. In the row of the value you want to edit, click the **trash can icon**.
3. In the **Delete Value** dialog, click **Delete**. A confirmation message appears and the value is deleted.

