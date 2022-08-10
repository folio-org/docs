---
title: "Settings > Agreements"
linkTitle: "Agreements"
date: 2022-06-07
weight: 20
tags: ["subtopic"]   
---

The Agreements section of the Settings app is where you can partially customize the display of agreement records, create supplementary properties, and manage pick lists.


## Permissions

In order to interact with Agreements settings, a user needs to be assigned the following permissions:



*   **Settings (Agreements): Can view and edit general settings**. This permission allows the user to view and edit the Display settings in the General settings section of the agreements settings.
*   **Settings (Agreements): Manage agreement supplementary properties**. This permission allows the user the ability to manage the available supplementary properties. It also grants all permissions included in “Settings (Agreements): Can view and edit general settings.”
*   **Settings (Agreements): Manage pick lists and values**. This permission allows the user the ability to manage pick lists and pick list values. It also grants all permissions included in “Settings (Agreements): Can view and edit general settings.”
*   **Settings (Agreements): Can view app settings**. This permission allows the user to view permissions to a set of "app settings" via the Settings. As of Lotus, the available app settings are to set up options for storing documents uploaded to the Agreements module in database (default) or S3 storage. 
*   **Settings (Agreements): Can view and edit app settings**. This permission allows the user to view and edit permissions to a set of "app settings" via the Settings. As of Lotus, the available app settings are to set up options for storing documents uploaded to the Agreements module in database (default) or S3 storage.


## Settings > Agreements > Display settings

Use the settings in this section to turn certain features in agreement records on or off.

### Hide internal agreements knowledgebase

If you are using an external knowledge base (for example, you are using EBSCO with the eHoldings app) and want to hide the internal knowledge base available in the Agreements app, select the **Hide internal agreements knowledgebase** checkbox. The checkbox is cleared by default.

Selecting the checkbox causes the following to happen:



*   The E-resources tab in the Agreements app is hidden.
*   The basket icon in the Agreements app is hidden.
*   The E-resources covered by this agreement section does not appear in the agreement details pane.


### Tabular list pagination

Use this setting to control the number of lines to show per page (i.e. before showing the "Load more" button) in multi-column lists (tabular lists) across the Agreements application. The default value for all lists is 10. The multi-column lists affected are:



*   Agreement view pane > Agreement lines
*   Agreement view pane > E-resources covered by this agreement
*   E-resource view pane > Options for acquiring e-resource
*   Package view pane > E-resources in package
*   E-resource view pane > Agreements for this e-resource


### Display "Suppress from discovery" setting on

Use this setting to enable the **Supress from discovery** checkbox to display in agreement line records and/or package content item records. All checkboxes are selected by default.

Turning this setting on doesn’t automatically suppress agreement line records and/or package content item records. Rather, you are given the option to hide individual agreement line records and/or package content item records from your discovery layer when this setting is selected. For example, if you clear the checkboxes, then the Supress from discovery checkbox doesn’t appear on either record.

To enable the Suppress from discovery checkbox, follow these steps:



1. To display the Suppress from discovery checkbox on agreement lines, select the **Agreement lines** checkbox.
2. To display the Supress from discovery checkbox on package content items, select the **Package content items** checkbox.

To disable the Suppress from discovery checkbox, follow these steps:



1. To disable the Suppress from discovery checkbox on agreement lines, clear the **Agreement lines** checkbox.
2. To disable the Supress from discovery checkbox on package content items, clear the **Package content items** checkbox.


### Hide accordions in agreement edit view

This setting allows institutions not using the eUsage module to not display the Usage data accordion in the Agreements edit screen.

Selecting the checkbox causes the following to happen:



*   The Usage data module in the Agreements app is hidden.


## Settings > Agreements > Supplementary properties

Supplementary properties are an optional way to record additional information about the agreement not captured anywhere else in the record. For example, the authentication method used to access the material covered by the agreement.

When you configure supplementary properties, the Supplementary properties section appears in your agreement records. Supplementary properties are similar to [license terms]({{< ref "/licenses.md#terms" >}}). There are two types of supplementary properties you can create in FOLIO: primary and optional. Primary properties appear on every agreement record by default. Optional properties can be added on an agreement-by-agreement basis.


### Creating a supplementary property



1. Click **New**.
2. In the **New supplementary property** box, fill in all the fields:
    * **Label.** The property name that appears when displaying the property to users in FOLIO. It is recommended that you create a short text string that clearly communicates the information recorded in the property. If you need to further explain the property, you should use the Description field.
    * **Name.** Used when outputting property data in a machine readable format. It is not intended to be displayed to users (staff or patrons). It should be a short Latin alphabet string that can be used by any external systems or programs that access the agreement property data. Use of camelCase is suggested but not required. Changes to the Name affects any external systems using agreement property data and changes should not be made without consulting those responsible for relevant external systems and software.
    * **Description.** Use to provide further explanation of the property. In the Agreements app, you can display the description by clicking the **information icon** next to the property's label.
    * **Order weight.** To determine the order in which the properties appear in the agreement record, enter a number. If you do not set a value and leave the order weight at 0 for each property, or they all contain the same number, then they are sorted alphabetically. When sorted alphabetically, uppercase letters are sorted before lowercase letters. For example, “Zebra” appears before “aardvark.”
    * **Primary property.** Select whether the property is a primary property. Primary properties always display in agreement records. If you select **No**, then the property will be optional, and you have to manually add it to an agreement record whenever you want to use that property.
    * **Default visibility.** Select whether you would like the property to display internally within FOLIO, or externally to the public (for example, if you are setting up properties to display in your catalog).
    * **Type.** Select a property **Type** from the drop-down list: Decimal, Integer, Text, or Pick list.
    * **Pick list.** If the property type selected is **Pick list**, a pick list field displays. Select the **Pick list** you want to use from the drop-down list. For more information on pick lists, see [Settings > Agreements > Pick lists](#settings--agreements--pick-lists).
3. Click **Save**. A confirmation message appears, and the supplementary property is saved and appears in the Supplementary properties pane.


### Editing a supplementary property



1. Find the property you want to edit and click **Edit** at the top of its property box.
2. Make your desired changes to the property.
3. Click **Save**. A confirmation message appears and the property is updated.


### Deleting a supplementary property

Note: You can only delete a property if it is not assigned to any agreement records.



1. Find the property you want to edit and click **Delete** at the top of its property box.
2. In the **Delete supplementary property** dialog, click **Delete**. A confirmation message appears and the property is deleted.


## Settings > Agreements > Pick lists

A pick list is a customizable drop-down list used in the Agreements app. Pick lists are applied to Supplementary properties that have Pick list as their property type. Additionally, default pick lists like Status, Reason for closure, and Renewal priority can be found in this setting.

Use this setting to establish the names of your available pick lists. Once you have named your pick lists, you can configure the values that are available in each pick list in [Settings > Agreements > Pick list values](#settings--agreements--pick-list-values) .


### Creating a pick list

Note: Pick lists cannot be edited once they are created. However, they can be deleted.



1. Click **New.**
2. Enter a name in the **Pick list** box.
3. Click **Save**. The pick list is saved and appears alphabetically in the Pick list column.


### Deleting a pick list

Note: You can only delete pick lists if they aren’t assigned to any agreement records. If they are currently being used, the trash can icon doesn’t appear in the Actions column.



1. Find the pick list you want to delete.
2. In the Actions column, click the **trash can icon**.
3. In the **Delete Pick list** dialog, select **Delete**. A confirmation message appears and the pick list is deleted.


## Settings > Agreements > Pick list values

Pick list values are the values available for selection within a pick list. You must first create the pick list in [Settings > Agreements > Pick lists](#settings--agreements--pick-lists) before creating its values.

Note: FOLIO contains default pick lists that can only have their values edited. These values cannot be deleted, and new values cannot be added. The New button appears grayed out and the trash can icon won’t be present for these pick lists.


### Adding pick list values



1. Select the **Pick list** to which you want to add values in the drop-down list.
2. Click **New.**
3. Enter a **Label**. The label appears as an option in the pick list.
4. Click **Save.** The label is saved and its value is generated.


### Editing pick list values

Note: If you edit a pick list value, only the Label changes and not the Value.



1. Select the **Pick list** with the value you want to edit in the drop-down list.
2. In the row of the value you want to edit, click the **pencil icon**.
3. Edit the **Label**.
4. Click **Save**. The label is updated.


### Deleting pick list values



1. Select the **Pick list** with the value you want to delete in the drop-down list.
2. In the row of the value you want to edit, click the **trash can icon**.
3. In the **Delete Value** dialog, click **Delete**. A confirmation message appears and the value is deleted.
