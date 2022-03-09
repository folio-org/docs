---
title: "Settings > Orders"
linkTitle: "Orders"
date: 2021-11-24
weight: 200
tags: ["subtopic"]   
---

The Orders section of the Settings app is where you establish whether you want to require approval to open orders, your closing order reasons, how orders interact with the Inventory app, order templates, order lines limits, and PO number settings.


## Permissions

In order to interact with order settings, a user needs to be assigned the following permission:



*   **Settings(Orders):  Can view all settings.**  This permission allows you to view all of the Order settings. 
*   **Settings (Orders): Can view and edit all settings.** This permission allows you to view and edit all of the Order settings.
*   **Settings(Orders): Can view Order Templates.** This permission allows you to view Order Templates in Settings > Orders.
*   **Settings(Orders): Can view, edit Order Templates.** This permission allows you to view and edit Order Templates in Settings > Orders.
*   **Settings(Orders): Can view, edit, create Order Templates.** This permission allows you to view, edit, and create Order Templates in Settings > Orders.
*   **Settings(Orders): Can view, edit, delete Order Templates.** This permission allows you to view, edit, and delete Order Templates in Settings > Orders.


Note:. You can assign permissions to users in the Users app.


## Settings > Orders > Approvals

If you want to require approval to open orders, select **“Approval required” to open orders**. When selected, an additional step between Pending and Open is added. A user with the appropriate permission has to approve the order. Once the order is approved, the date and time of the approval is captured, along with the username of the person who made the approval. For more information, see [Approving an order]({{< ref "/orders.md#approving-an-order" >}}).


## Settings > Orders > Closing purchase order reasons

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


## Settings > Orders > Inventory interactions

Use this setting to determine how materials you are ordering interact with the Inventory app. The settings you select here determine the default interaction based on the Order format (Electronic, Physical, P/E Mix, or Other) you select for the order line item. The interactions you select can be changed when you add or edit an order line, in the Create inventory field of the Physical resource or E-resource details section of the order line, if needed.

There are four default interactions you can select:



*   **Instance, holdings, item.** Once the order is opened, an instance, holdings, and item are found or created in the Inventory app.
*   **Instance.** Once the order is opened, an instance is found or created in the Inventory app.
*   **Instance, holdings.** Once the order is opened, an instance and holdings are found or created in the Inventory app.
*   **None.** Nothing is found or created in the Inventory app.


## Settings > Orders > Instance status

Use this setting to determine the instance status that is assigned to the instances that are created through opening an order. Note: If you have not selected a default, then you may encounter problems when trying to receive an item or when you close an order.

For information on managing instance status values, see Settings > Inventory > Instances > Instance status types.


## Settings > Orders > Instance type

Use this setting to determine the instance resource type that is assigned to the instances that are created through opening an order. Note: If you have not selected a default, then you may encounter problems when trying to receive an item or when you close an order.

For information on managing instance type values, see Settings > Inventory > Instances > Resource types.


## Settings > Orders > Loan type

Use this setting to determine the loan type that is assigned to the items that are created through opening an order. Note: If you have not selected a default, then you may encounter problems when trying to receive an item or when you close an order. For information on managing loan type values, see Settings > Inventory > Loan types.


## Settings > Orders > Order templates

Use this setting to configure your order templates. Order templates can be used to populate consistent information that you may always fill out when ordering from a specific vendor, for example. Note: Any order templates you create are shared among all users who have permission to create orders.

Order templates contain the same fields found in order records but also include order line information, which is automatically applied to any order lines added to the order record that uses the order template.


### Creating an order template

Note: Template name is the only required field.

1. Click **New**.

2. Fill in the fields. Follow the instructions under [Creating an order]({{< ref "/orders.md#creating-an-order" >}}) for more information.

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


## Settings > Orders > Purchase order lines limit

Use this setting to limit the number of order lines that you can add to an order. If you do not want to have a limit, enter **999**. The minimum order lines limit is 1.


## Settings > Orders > Opening purchase orders

If you want to allow users the option to save and open a purchase order in the same step, select **Allow save and open purchase order when creating or editing a purchase order line.**


## Settings > Orders > Edit

If you want users to be able to edit the PO number on an order, select **User can edit.** If this option is not selected, then the PO number is locked.


## Settings > Orders > Prefixes

Use this setting to configure prefixes, which are used in orders. You can add prefixes to orders to provide context.


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

2. In the **Delete Prefix** dialog, click **Delete**. A confirmation message appears and the Prefix is deleted.


## Settings > Orders > Suffixes

Use this setting to configure suffixes, which are used in orders. You can add suffixes to orders to provide context.


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

2. In the **Delete Suffix** dialog, click **Delete**. A confirmation message appears and the Suffix is deleted.
