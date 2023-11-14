---
title: "Settings > Orders"
linkTitle: "Orders"
date: 2023-11-13
weight: 200
tags: ["subtopic"]   
---

The Orders section of the Settings app is where you establish whether you want to require approval to open orders, your closing order reasons, how orders interact with the Inventory app, order templates, order lines limits, and PO number settings.


## Permissions

In order to interact with order settings, a user needs to be assigned the following permissions:



*   **Settings (Orders): Can view all settings.**  This permission allows you to view all of the Orders settings. 
*   **Settings (Orders): Can view and edit all settings.** This permission allows you to view and edit all of the Orders settings.
*   **Settings (Orders): Can view Order Templates.** This permission allows you to view Order Templates in Settings > Orders.
*   **Settings (Orders): Can view, edit Order Templates.** This permission allows you to view and edit Order Templates in Settings > Orders.
*   **Settings (Orders): Can view, edit, create Order Templates.** This permission allows you to view, edit, and create Order Templates in Settings > Orders.
*   **Settings (Orders): Can view, edit, delete Order Templates.** This permission allows you to view, edit, and delete Order Templates in Settings > Orders.


For information on assigning permissions to users, see [Assigning permissions to a user record]({{< ref "/users.md#assigning-permissions-to-a-user-record" >}}).


## Settings > Orders > General > Approvals

If you want to require approval to open orders, select **“Approval required” to open orders**. When selected, an additional step between Pending and Open is added. A user with the appropriate permission has to approve the order via a separate action or by checking an approval box on the order record. Once the order is approved, the date and time of the approval is captured, along with the username of the person who made the approval. If this setting is not activated, the approval date and time will match the date and time that the order was opened. For more information, see [Approving an order]({{< ref "/orders.md#approving-an-order" >}}).


## Settings > Orders >  General > Closing purchase order reasons

Use this setting to configure the reasons for an order closure. FOLIO provides default closing purchase order reasons, which cannot be edited or deleted, but you can add reasons to track closures specific to your library.


### Creating a closing purchase order reason

1. Click **New**.

2. Enter a **Reason** in the box.

3. Click **Save**. The Reason is saved.


### Editing a closing purchase order reason

1. Find the Reason you want to edit and click the **pencil icon**.

2. Edit the **Reason**.

3. Click **Save**. The Reason is saved.


### Deleting a closing purchase order reason

1. Find the Reason you want to delete and click the **delete icon**.

2. In the **Delete Reason** dialog, click **Delete**. A confirmation message appears and the Reason is deleted.


## Settings > Orders > General > Order templates

Use this setting to configure your order templates. Order templates can be used to populate consistent information that you may always fill out when ordering from a specific vendor, for example. Note: Any order templates you create are shared among all users who have permission to create orders.

Order templates contain the same fields found in order records but also include order line information, which is automatically applied to any order lines added to the order record that uses the order template.


### Creating an order template

To create a new order template, follow the steps below.  To hide a field from view during order creation, click on the eye icon beside the field name.  The eye icon will display an angled slash mark to indicate that the field will be hidden.  When the user creates a new order and selects the template, only the fields with the eye turned on will display. Note: Template name is the only required field for a new order template.

1. Click **New**.

2. Click **Hide all eligible fields** to turn off visibility for all fields that can be hidden during order creation.  You can then turn on only the fields that you want to display by unselecting the eye icon beside those fields.

3. Fill in information as needed for the remaining order creation fields. Follow the instructions under [Creating an order]({{< ref "/orders.md#creating-an-order" >}}) for more information. Click on the eye icon to hide fields as needed.

3. Click **Save**. A confirmation message appears and the template is saved.


### Editing an order template

1. Select the order template you want to edit.

2. In the order template window, select **Actions > Edit**.

3. Edit the order template.

4. Click **Save**. A confirmation message appears and the template is updated.


### Deleting an order template

1. Select the order template you want to delete.

2. In the order template window, select **Actions > Delete.**

3. In the **Delete template** dialog, click **Delete**. A confirmation message appears and the template is deleted.


## Settings > Orders > General > Purchase order lines limit

Use this setting to limit the number of order lines that you can add to an order. If you do not want to have a limit, enter **999**. The default value is equal to the minimum order lines limit of 1. If you change tha value in this setting, click **Save** to capture the update.


## Settings > Orders > General > Opening purchase orders

If you want to allow users the option to save and open a purchase order in the same step, select **Allow save and open purchase order when creating or editing a purchase order line.**

If you want to turn off FOLIO's ability to check for potential duplicate purchase order lines, check **Disable duplicate check that occurs when opening orders and saving purchase order lines**. When this setting is unchecked, FOLIO will scan for potential duplicate purchase order lines based on the title and product IDs entered on the purchase order line. If a potential duplicate is found, staff will see a popup window notifying them of potential duplication, with further information about the detected duplicate purchase order lines. Staff may choose to proceed with creation and opening of their purchase order or may cancel the action.


## Settings > Orders > General > Acquisition methods

If you want to add additional acquisition methods for use in the Orders app, select **New**, add the name of the new acquisition method, and select **Save.**


## Settings > Orders > PO number > Edit

If you want users to be able to edit the auto-generated PO number on an order, select **User can edit.** If this option is not selected, then the PO number is locked.


## Settings > Orders > PO number > Prefixes

Use this setting to configure prefixes, which are used in orders. You can add prefixes to orders to provide context. For example, your institution may require all orders originating in the library to begin with "lib". This can be configured as a prefix to prepend to an order's PO number.


### Creating a prefix

1. Click **New**.

2. Enter a **Name** in the box.

3. Optional: Enter a **Description** in the box.

3. Click **Save**. The Prefix is saved.


### Editing a prefix

1. Find the Prefix you want to edit and click the **pencil icon**.

2. Edit the **prefix**.

3. Click **Save**. The Prefix is updated.


### Deleting a prefix

1. Find the Prefix you want to delete and click the **delete icon**.

2. In the **Delete Prefix** dialog, click **Delete**. A confirmation message appears and the Prefix is deleted. Note: A prefix cannot be deleted if in use on order records.


## Settings > Orders > PO number > Suffixes

Use this setting to configure suffixes, which are used in orders. You can add suffixes to orders to provide context. For example, your institution may require all orders originating in the library to end with "lib". This can be configured as a suffix to append to an order's PO number.


### Creating a suffix

1. Click **New**.

2. Enter a **Name** in the box.

3. Optional: Enter a **Description** in the box.

3. Click **Save**. The Suffix is saved.


### Editing a suffix

1. Find the Suffix you want to edit and click the **pencil icon**.

2. Edit the suffix.

3. Click **Save**. The Suffix is updated.


### Deleting a suffix

1. Find the Suffix you want to delete and click the **delete icon**.

2. In the **Delete Suffix** dialog, click **Delete**. A confirmation message appears and the Suffix is deleted. Note: A suffix cannot be deleted if in use on order records.


## Settings > Orders > Inventory interaction > Instance matching

When a library opts to create at least an instance record corresponding to their purchase order line, staff may choose to link to an existing instance record or create a new record. If creating an instance record, the default FOLIO behavior is to first search instances to find a match for one or more of the product IDs provided on the purchase order line. Matching is based on both the ID and the type. If a matching product ID and type is found in Inventory, that instance will be linked to the purchase order line and the system will not create a new instance for that record. If no matches are found, the system will create a new instance record and link the purchase order line to that instance.

A library may choose to select the **Disable instance matching** checkbox. When activated, a new instance will always be created if the library opts to create Inventory records when they open the order, except when manully linked to an instance record.


## Settings > Orders > Inventory interaction > Inventory interactions defaults

Use this setting to determine how materials you are ordering interact with the Inventory app. The settings you select here determine the default interaction based on the Order format (Electronic, Physical, P/E Mix, or Other) you select for the order line item. The interactions you select can be changed when you add or edit an order line, in the Create inventory field of the Physical resource or E-resource details section of the order line, if needed. The inventory interactions are initiated when the order is opened.

There are four default interactions you can select:


*   **Instance, holdings, item.** Once the order is opened, an instance, holdings, and item are found or created in the Inventory app.
*   **Instance.** Once the order is opened, an instance is found or created in the Inventory app.
*   **Instance, holdings.** Once the order is opened, an instance and holdings are found or created in the Inventory app.
*   **None.** Nothing is found or created in the Inventory app.


## Settings > Orders > Inventory interaction > Instance status

Use this setting to determine the instance status that is assigned to the instances that are created through opening an order. Note: If you have not selected a default, then you may encounter problems when trying to receive an item or when you close an order.

For information on managing instance status values, see [Settings > Inventory > Instances > Instance status types](https://docs.folio.org/docs/settings/settings_inventory/settings_inventory/#settings--inventory--instance-status-types).


## Settings > Orders > Inventory interaction > Instance type

Use this setting to determine the instance resource type that is assigned to the instances that are created through opening an order. Note: If you have not selected a default, then you may encounter problems when trying to open an order that should create a new instance.

For information on managing instance type values, see [Settings > Inventory > Instances > Resource types](https://docs.folio.org/docs/settings/settings_inventory/settings_inventory/#settings--inventory--resource-types).


## Settings > Orders > Inventory interaction > Loan type

Use this setting to determine the loan type that is assigned to the items that are created through opening an order. Note: If you have not selected a default, then you will not be able to open orders where new items are being created. For information on managing loan type values, see [Settings > Inventory > Loan types](https://docs.folio.org/docs/settings/settings_inventory/settings_inventory/#settings--inventory--loan-types).
