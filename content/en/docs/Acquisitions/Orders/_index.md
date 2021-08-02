
---
title: "Orders"
linkTitle: "Orders"
date: 2021-08-02
weight: 30
tags: ["parenttopic"]
---

The Orders app allows you to create and manage purchase orders.

Definition of terms related to the Orders app:


*   **Acquisition units.** An additional layer you can add to acquisitions records that restricts a user’s ability to interact with those records unless they have been assigned to that unit. For example, you may create acquisition units to represent the different libraries within your library system. Units are defined and determined by your library in the Settings app. See [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}) for more information.
*   **Order.** A purchase order featuring a list of titles or packages (physical or electronic) being ordered by the library from a vendor.
*   **Order line.** A purchase order line contains one of the titles or packages being ordered by the library. Order lines make up an order. Orders can contain multiple order lines.


## Permissions

The permissions listed below allow you to interact with the Orders app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Orders app or any related information.

Note: The below permissions only pertain to the Orders app. Within the app, orders and order lines may link to records in other apps, like Inventory and Receiving, and the ability to interact with those records could require separate permissions.

The following are all the Orders permissions:



*   **Orders: Assign acquisition units to new order.** This permission allows the user to assign acquisition units to orders when creating a new order.
*   **Orders: Create order lines.** This permission allows the user to create new order lines. With this permission, the user can also view and edit existing order lines. Additionally, they can view order settings.
*   **Orders: Create orders.** This permission allows the user to create new orders. With this permission, the user can also view and edit existing orders. Additionally, they can view order settings.
*   **Orders: Delete order lines.** This permission allows the user to delete order lines. With this permission, the user can also view and edit existing order lines. Additionally, they can view order settings.
*   **Orders: Edit order lines.** This permission allows the user to view and edit order lines. Additionally, they can view order settings.
*   **Orders: Edit orders.** This permission allows the user to view and edit orders. Additionally, they can view order settings.
*   **Orders: Manage acquisition units.** This permission allows the user to change the assignment of acquisition units for an order or order line.
*   **Orders: Remove orders.** This permission allows the user to delete orders. With this permission, the user can also view and edit existing orders. Additionally, they can view order settings.
*   **Orders: Reopen purchase orders.** This permission allows the user to reopen an order.
*   **Orders: Unopen purchase orders.** This permission allows the user to unopen an order.
*   **Orders: View order lines.** This permission allows the user to search for and view order lines. Additionally, they can view order settings.
*   **Orders: View orders.** This permission allows the user to search for and view orders. Additionally, they can view order settings.


## Creating an order

Orders contain a list of titles or packages (physical or electronic) being ordered by your library from a vendor.

In FOLIO, you can create either [one-time orders](#creating-a-one-time-order) or [ongoing orders](#creating-an-ongoing-order). One-time orders should be used for items fulfilled within the year, like monographs. Ongoing orders generally span multiple years, and you usually pay as you receive each item. You would want to create an ongoing order for a magazine subscription, for example.

Once you create an order, you need to [add at least one order line to the order](#adding-an-order-line-to-an-order) so the [order can be opened](#opening-an-order) and the acquisitions process can begin.


### Creating a one-time order

1. In the **Search & filter** pane, click **Orders**.

2. In the **Orders** pane, click **New**.

3. In the **Create purchase order** window, select a template from the **Template name** drop-down list, if using. The order is populated with the information configured in the template. Templates are created in the Settings app. See [Settings > Orders > Order templates]({{< ref "/settings_orders.md#settings--orders--order-templates" >}}) for more information.

4. Select **One-time** from the **Order type** drop-down list.

5. Fill in the rest of the fields under [Purchase order](#purchase-order) and [PO summary](#po-summary). For more information on the fields and actions available in these sections, see the section descriptions below.

6. Optional: Select **Approved** to approve the order. Note: You only need to approve the order if your library has the Approval required setting turned on. For more information, see [Settings > Orders > Approvals]({{< ref "/settings_orders.md#settings--orders--approvals" >}}).

7. Click **Save & close**. A confirmation message appears and the order appears in the Orders pane.


#### Purchase order



*   **Prefix.** If applicable, select a **Prefix** for the purchase order number from the drop-down list. Prefixes are configured by your library in the Settings app. See [Settings > Orders > Prefixes]({{< ref "/settings_orders.md#settings--orders--prefixes" >}}) for more information.
*   **PO number.** Purchase order number for the order. Whether you can edit the PO number depends on your library’s settings in the PO number Edit setting. See [Settings > Orders > Edit]({{< ref "/settings_orders.md#settings--orders--edit" >}}) for more information.
*   **Suffix.** If applicable, select a **Suffix** for the purchase order number from the drop-down list. Suffixes are configured by your library in the Settings app. See [Settings > Orders > Suffixes]({{< ref "/settings_orders.md#settings--orders--suffixes" >}}) for more information.
*   **Vendor.** Any institution from whom your library purchases materials. Click **Organization look-up** to select a vendor. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to select it. The organization is added to the Vendor field.
*   **Order type.** Select the type of order you are placing: One-time or Ongoing.
*   **Acquisitions units.** If you want the order to be available to particular users within certain acquisitions units, enter or select the Acquisition units from the drop-down list. You can select multiple units. For more information on acquisition units, see [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}).
*   **Assigned to.** To assign the order to a user, click the **+**. In the **Select User **dialog, find the user using the search box and/or the filters. Click the user to select them. The user appears in the **Assigned to** box**.** If you need to remove the user, click the **x**. If you need to assign the order to a different user, click the **+** and repeat the above steps.
*   **Bill to.** In the **Bill to** drop-down list, select the billing address for the order. Once you select an address, the billing address appears. Addresses are configured in the Settings app. For more information, see Settings > Tenant > Addresses.
*   **Ship to.** In the **Ship to** drop-down list, select the address the order items will be shipped to. Once you select an address, the shipping address appears. Addresses are configured in the Settings app. For more information, see Settings > Tenant > Addresses.
*   **Manual.** If the Manual checkbox is selected, it excludes the order from auto processing. For example, you may want to select this if you have EDI set up, but you submitted the order on the vendor’s site and do not want to resend it to them.
*   **Re-encumber.** The Re-encumber checkbox is selected by default. If the checkbox is cleared, you are indicating that the order shouldn’t re-encumber during the fiscal year rollover even if it meets the criteria to re-encumber. However, if the checkbox is selected and the rollover settings indicate that this order doesn’t meet the criteria to re-encumber, money will not be committed to the next fiscal year for this order. The re-encumber toggle is only considered when the order meets the rollover criteria. If the checkbox is selected and the rollover settings indicate that this order meets the criteria to re-encumber, then money is committed to the next fiscal year for the order.
*   **Tags.** Enter or select any tags from the drop-down list you would like to apply to the order.


#### PO summary



*   **Approved.** To approve the order, select the **Approved** checkbox. Note: You only need to approve the order if your library has the Approval required setting turned on. For more information, see [Settings > Orders > Approvals]({{< ref "/settings_orders.md#settings--orders--approvals" >}}).


### Creating an ongoing order

1. In the **Search & filter** pane, click **Orders**.

2. In the **Orders** pane, click **New**.

3. In the **Create purchase order** window, select a template from the **Template name** drop-down list, if using. The order is populated with the information configured in the template. Templates are created in the Settings app. See [Settings > Orders > Order templates]({{< ref "/settings_orders.md#settings--orders--order-templates" >}}) for more information.

4. Select **Ongoing** from the **Order type** drop-down list.

5. Fill in the rest of the fields under [Purchase order](#purchase-order), [Ongoing order information](#ongoing-order-information), and [PO summary](#po-summary). For more information on the fields and actions available in these sections, see the section descriptions below.

6. Optional: Select **Approved** to approve the order. Note: You only need to approve the order if your library has the Approval required setting turned on. For more information, see [Settings > Orders > Approvals]({{< ref "/settings_orders.md#settings--orders--approvals" >}}).

7. Click **Save & close**. A confirmation message appears and the order appears in the Orders pane.


#### Purchase order

See [Purchase order](#purchase-order), above.


#### Ongoing order information



*   **Subscription.** If the ongoing order is for a subscription, select the **Subscription** checkbox.
*   **Renewal interval.** The interval for renewal, in days. This is the term, in days, during which the library has access to this material, after which the library will need to renew for another term.This field can only be edited, and is required, if Subscription is selected.
*   **Renewal date.** The date by which the library must decide to renew or not, which is sometimes referred to as the cancellation deadline. This field can only be edited, and is required, if Subscription is selected.
*   **Review period.** The period prior to the renewal date when you can decide whether you would like to purchase the subscription again. This field can only be edited if Subscription is selected.
*   **Manual renewal.** Select the **Manual renewal** checkbox to indicate that you need to contact the vendor to renew the subscription for another term (the vendor does not automatically assume a renewal). This field can only be edited if Subscription is selected.
*   **Review date.** The date for review. This field can only be edited if Subscription is not selected.
*   **Notes.** Any notes about the ongoing order.


#### PO summary

See [PO summary](#po-summary), above.


## Searching for an order

You can search for orders in the **Search & filter** pane. Click **Orders** to start your search. Order lines is selected by default. To search for orders, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:



*   **Keyword.** Searches through all fields in the drop-down list. This is the default search.
*   **Date created.** Date the order was created.
*   **Date ordered.** Date the order was opened, which is when funds are encumbered and interactions with the Inventory app occur.
*   **PO number.** The purchase order number.

You can also search for orders by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information on the filters.


### Status

In the **Search & filter** pane, click **Status** and select any applicable filters:



*   **Closed.** Orders that are closed.
*   **Open.** Orders that are open.
*   **Pending.** Orders that are pending.


### Approved

In the **Search & filter** pane, click **Approved** and select any applicable filters:



*   **Yes.** Approved orders.
*   **No.** Orders not yet approved.


### Acquisitions unit

To search for orders assigned to a specific acquisitions unit, follow these steps:

1. In the **Search & filter** pane, click **Acquisitions unit**.

2. Select the acquisitions unit from the drop-down list. The search results appear in the Orders pane.


### Assigned to

To search for orders assigned to a specific user, follow these steps:

1. In the **Search & filter** pane, click **Assigned to**.

2. Click **Find User**.

3. In the **Select User** dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Orders pane.


### Created by

To search for orders created by a specific user, follow these steps:

1. In the **Search & filter** pane, click **Created by**.

2. Click **Find User**.

3. In the **Select User** dialog, search for the user.

4. Select the vendor you want to filter by. The search results appear in the Orders pane.


### Date created

To search for orders based on the date they were created, follow these steps:

1. In the **Search & filter** pane, click **Date created**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Orders pane.


### Date ordered

To search for orders based on the date the order was opened, follow these steps:

1. In the **Search & filter** pane, click **Date ordered**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Orders pane.


### Order type

In the **Search & filter** pane, click **Order type** and select any applicable filters:



*   **One-time.** One-time orders.
*   **Ongoing.** Ongoing orders.


### Vendor

To search for orders placed with a specific vendor, follow these steps:

1. In the **Search & filter** pane, click **Vendor**.

2. Click **Organization look-up**.

3. In the **Select Organization** dialog, search for the vendor.

4. Select the vendor you want to filter by. The search results appear in the Orders pane.


### Tags

To search for orders assigned with specific tags, follow these steps:

1. In the **Search & filter** pane, click **Tags**.

2. Select the tag(s) from the drop-down list. The search results appear in the Orders pane.


### Reason for closure

To search for orders based on their reason for closure, follow these steps:

1. In the **Search & filter** pane, click **Reason for closure**.

2. Select the reason for closure from the drop-down list. The search results appear in the Orders pane.


### Re-encumber

In the **Search & filter** pane, click **Re-encumber** and select any applicable filters:



*   **Yes.** Orders with the Re-encumber checkbox selected.
*   **No.** Orders with the Re-encumber checkbox cleared.


### Renewal date

To search for orders based on their renewal date, follow these steps:

1. In the **Search & filter** pane, click **Renewal date**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Orders pane.


### Renewal manual

In the **Search & filter** pane, click **Renewal manual** and select any applicable filters:



*   **Yes.** Orders with the Manual renewal checkbox selected.
*   **No.** Orders with the Manual renewal checkbox cleared.


### Renewal review period

To search for orders within a renewal review period, in days, follow these steps:

1. In the **Search & filter** pane, click **Renewal review period**.

2. Enter or select the renewal review period, in days. The search results appear in the Orders pane.


## Viewing order details

Once you search for an order, the following information appears in the Orders pane:



*   **PO number.** The purchase order number.
*   **Vendor code.** The vendor code.
*   **Status.** The order status.
*   **Order type.** The type of order.
*   **Last updated.** The date the order was last updated.
*   **Acquisition unit.** The acquisition units assigned to the order.
*   **Assigned to.** The user to which the order is assigned.

In the search results, click on an order to view it. The purchase order details pane displays with additional information about the order.


## Editing an order

1. [Search for the order you want to edit](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Edit**.

3. Edit the order.

4. Click **Save & close**. A confirmation message appears and the order is updated.


## Approving an order

You only need to approve an order if you have the Approvals required setting turned on. For more information, see Settings > Orders > Approvals. If you have this setting turned on, you also need the applicable permission to be able to approve the order. You can open an order once it is approved.

There are two ways to approve an order. You can edit the order and select the Approved checkbox under PO summary, or you can follow these steps:

1. Search for the order you want to approve and select it.

2. In the Purchase order pane, select **Actions > Approve**. A confirmation message appears and the purchase order is marked as Approved.


## Cloning an order

1. [Search for the order you want to clone](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Clone**.

3. In the **Clone order** dialog, click **Clone** to confirm the cloning/duplication. A confirmation message appears and the order is cloned/duplicated and appears in the Orders pane.


## Opening an order

After you create an order, it has the status of Pending until you open it. Once you open an order the following happens:



*   Encumbrances are created. Note: Encumbrances are only created if a fund distribution was added to an order line.
*   Inventory records are created. Note: Inventory records are not created if the Create inventory field on the order line is set to None. For more information about the Create inventory field, see the [E-resources details](#e-resources-details) and [Physical details](#physical-resource-details) sections below.
*   Date ordered is set to today’s date.
*   Order lines cannot be added.
*   Fields such as Order type, Title, Acquisition method, and Order format are not editable once an order is opened. The order would need to be unopened to edit those fields. For more information, see [Unopening an order](#unopening-an-order).

1. [Search for the order you want to open](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Open**.

3. In the **Open - purchase order** dialog, click **Submit**. A confirmation message appears and the order’s status changes to Open.


## Unopening an order

[Opening an order](#opening-an-order) is not final and an order can be reverted back to a Pending status by unopening the order.

Note: Unopening an order removes any encumbrances and item records with an On Order status. However, items that were received, holdings, and instances aren’t removed.

1. [Search for the open order you want to unopen](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Unopen**.

3. In the **Unopen - purchase order** dialog, click **Submit**. A confirmation message appears and the order’s status changes to Open.


## Closing an order

Once you no longer need an order, you can close it. Only open orders can be closed.

1. [Search for the order you want to close](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Close order**.

3. In the **Close - purchase order** dialog, select a closing **Reason** from the drop-down list. Closing reasons are configured in the Settings app. For more information, see [Settings > Orders > Closing purchase order reasons]({{< ref "/settings_orders.md#settings--orders--closing-purchase-order-reasons" >}}).

4. Optional: Enter any notes about why you are closing the order.

5. To close the order, click **Submit**. A confirmation message appears and the order’s status changes to Closed.


## Reopening an order

Closing an order is not final and an order can be reverted back to an Open status by reopening the order.

1. [Search for the order you want to reopen](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Reopen.** A confirmation message appears and the order’s status changes to Open.


## Receiving an order

You can only receive open orders.

1. [Search for the order you want to receive](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Receive.** The order line(s) open in the Receiving app.

3. Follow the steps as outlined in [Receiving > Receiving an order]({{< ref "/receiving.md#receiving-an-order" >}}).


## Deleting an order

Note: When you delete an order, received items remain in the system, but the receiving history is removed.

1. [Search for the order you want to delete](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Delete.**

3. In the Delete order dialog, click **Delete**. A confirmation message appears and the order is deleted.


## Adding a tag to an order

1. [Search for the order you want to tag](#searching-for-an-order) and select it.

2. In the **Purchase order details** pane, click the **tag icon**.

3. In the **Tags** pane, either select a tag from the box or enter a tag.

4. Click the **X** on the Tags pane to close the pane and save the tag. The tag number updates to the number of tags applied to the order.


## Adding an order line to an order

1. [Search for the order to which you want to add the PO line](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, in the **PO lines** section, click **Add PO line**.

3. In the **Add PO line** window, fill in the fields in the [Item details](#item-details), [PO line details](#po-line-details), [Vendor](#vendor), [Cost details](#cost-details), and [Fund distribution](#fund-distribution) sections. For more information on the fields and actions available in these sections, see the section descriptions below.

4. Click **Save & close** or **Save & open order**, if applicable. For more information on saving and opening orders at the same time, see [Settings > Orders > Opening purchase orders]({{< ref "/settings_orders.md#settings--orders--opening-purchase-orders" >}}).


### Item details

*   **Package.** If you are adding a package, select the **Package** checkbox. If selected, Title becomes Package name.
*   **Title/Package name.** Title of the item. If you already have the item in your Inventory app, you can use Title look-up to link the item to the Inventory record. This will automatically populate any applicable fields. To link to an inventory record, click **Title look-up**. In the **Select instance** dialog, find the title using the search box and/or the filters. Click the title to select it. The title appears in the Title box and relevant item fields are populated.
*   **Receiving note.** Enter any notes about receiving the item. The notes display in the Receiving app for this order line.
*   **Subscription from.** If the item is a subscription, select when the subscription starts.
*   **Subscription to.** If the item is a subscription, select when the subscription ends.
*   **Subscription interval.** If the item is a subscription, enter or select how many days the subscription lasts.
*   **Publication date.** The date of publication of the item. \
**Publisher.** The publisher of the item.
*   **Edition.** The edition of the item.
*   **Linked package.** To link a package to the order line, click **Lookup package POL**. In the **Select order lines** dialog, find the package using the search box and/or the filters. Click the package to select it. The package appears in the Linked package box.
*   **Contributor.** The item contributor.
*   **Product identifiers.** The identifier of the item, like an ISBN.
*   **Internal note.** Enter any internal notes about the item.


#### Adding a contributor

1. Click **Add contributor**.

2. Enter the **Contributor** in the box.

3. Select the **Contributor type** from the drop-down list. The Contributor saves once the order line is saved.


#### Deleting a contributor

1. Find the contributor you want to delete.

2. Click the **trash can icon**. The contributor is removed and is deleted once the order line is saved.


#### Adding a product ID and product ID type

1. Click **Add product ID and product ID type**.

2. Enter the **Product ID** in the box.

3. Optional: Enter a **Qualifier** in the box.

4. Select the **Product ID type** from the drop-down list. The product identifier saves once the order line is saved.


#### Deleting a product ID and product ID type

1. Find the product ID you want to delete.

2. Click the **trash can icon**. The product ID is removed and is deleted once the order line is saved.


### PO line details



*   **Acquisition method.** The method you are using to purchase the item.
*   **Order format.** Select the format of the item you are ordering: Electronic resource, Physical resource, P/E mix, or Other. The Order format determines which fields are required in the [Cost details](#cost-details) section and whether the [Physical resource details](#physical-resource-details) or [E-resources details](#e-resources-details) sections are displayed.
*   **Receipt date.** The receipt date of the item.
*   **Receipt status.** Select the receipt status of the item: Pending or Receipt not required.
*   **Payment status.** Select the payment status of the item: Payment not required or Pending.
*   **Donor.** The donor of the item.
*   **Selector.** The person who chose the item.
*   **Requester.** The person who requested the item.
*   **Cancellation restriction.** If there is a cancellation restriction on the item, select the **Cancellation restriction** checkbox.
*   **Rush.** If the item needs rush processing, select the **Rush** checkbox.
*   **Collection.** If the item is part of a collection, select the **Collection** checkbox.
*   **Manually add pieces for receiving.** If you want to manually add pieces for receiving, select the **Manually add pieces for receiving** checkbox. When this checkbox is selected, the system doesn’t automatically create receiving records for the material in the Receiving app. If selected, you have to create the pieces manually in the Receiving app.
*   **Cancellation description.** A note about the cancellation restriction.
*   **Line description.** A description of the purchase order line.
*   **Tags.** Select or enter any tags you want to assign to the order line in the box.


### Vendor



*   **Vendor ref number.** A reference number used by a vendor to identify the order or item being ordered. For example, for migrated open orders it may be helpful to store the original purchase order number here for use in matching to vendor invoices.
*   **Vendor ref type.** Select the type of reference number entered in the previous box: Agent’s unique subscription reference number, Internal vendor number, Library’s continuation order number, Supplier’s continuation order, or Supplier’s unique order line reference number.
*   **Account number.** The vendor account number. If one or more vendor accounts exist in the Organization record for the vendor selected in the [Purchase order](#purchase-order) section of the Order, the first account appears in this field as the default value. To use a different account number for this vendor, select the **Account number** from the drop-down list, if applicable.
*   **Instructions to vendor.** Enter any instructions you want to send to the vendor when the order is opened.


### Cost details

Note: Only certain fields will be editable depending on the [Order format](#order-format) selected in the [PO line details](#po-line-details) section. Also, some fields are required based on the Order format.



*   **Physical unit price.** The price of the physical unit. Required if the [Order format](#order-format) is Physical, P/E mix, or Other.
*   **Quantity physical.** The number of items you are ordering. Required if the [Order format](#order-format) is Physical, P/E mix, or Other.
*   **Currency.** Select the **Currency** of the item from the drop-down list. The default value is stored in Tenant settings as the primary currency. For more information, see Settings > Tenant > Language and localization.
*   **Additional cost.** Any additional costs for the item.
*   **Electronic unit price.** The price of the electronic item. Required if the [Order format](#order-format) is Physical, P/E mix, or Other.
*   **Quantity electronic.** The number of electronic items you are ordering. Required if the [Order format](#order-format) is Electronic or P/E mix.
*   **Discount.** The discount percentage or price.
*   **Type.** Select the **%** or **$** to indicate the type of discount.
*   **Estimated price.** The calculated price based on the values you entered. Estimated price = Unit price(s) x quantities ordered + additional cost - discount.


### Fund distribution

If you want to encumber money to certain funds, enter your fund distributions in this section. You can encumber money to more than one fund. The encumbrance(s) apply to the current fiscal year budget for the selected fund(s).


#### Adding a fund distribution

1. Click **Add fund distribution**.

2. Select the **Fund ID** from the drop-down list.

3. Select the **Expense class** from the list.

4. Enter the **Value** of the fund to be distributed.

5. Select the **%** or **$** to indicate whether the value is a percentage or price. The fund distribution saves once you save the order line.


#### Deleting a fund distribution

1. Find the fund distribution you want to delete.

2. Click the **trash can icon** next to the fund. The fund distribution is removed and is deleted once the order line is saved.


### Location

Location determines the effective location of the item once you receive it. If you are ordering multiple items, you can assign them to different locations.


#### Adding a location

1. Click **Add location**.

2. Select a **Name (code)** from the drop-down list.

3. Enter a **Quantity physical** in the box.

4. Enter a **Quantity electronic** in the box.

5. Repeat as needed. The location saves once the order line is saved.


#### Deleting a location

1. Find the location you want to delete.

2. Click the **trash can icon** next to the location. The location is removed and is deleted once the order line is saved.


### Physical resource details

This section only appears if you select Physical resource or P/E mix under [Order format](#order-format).



*   **Material supplier.** The supplier of the item. The field defaults to the name of the vendor associated with the vendor code selected for the order. For more information, see [Purchase order](#purchase-order). To change the supplier, click **Organization look-up** to select an organization. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to select it. The organization is added to the Material supplier field.
*   **Receipt due.** The date that receipt of the material is due, or the date by which the material should be received.
*   **Expected receipt date.** The date the material is expected to be received. This date could fall before or after the Receipt due date.
*   **Create inventory.** Select the types of records you want to create in the Inventory app once the order is opened: Instance, holdings, items; Instance; Instance, holdings; None.  For information on configuring the default setting for this field, see [Settings > Orders > Inventory interactions]({{< ref "/settings_orders.md#settings--orders--inventory-interactions" >}}).
*   **Material type.** The type of material.
*   **Volume.** A number to identify the specific volume being ordered within a series, set or collection.


### E-resources details

This section only appears if you select Electronic resource or P/E mix under [Order format](#order-format).



*   **Access provider.** The e-resource provider. To change the provider, click **Organization look-up** to select a vendor. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to select it. The organization is added to the Access provider field.
*   **Activation status.** If the e-resource is activated, select the **Activation status** checkbox.
*   **Activation due.** The date the activation is due. Note: If you have entered an interval in the Expected activation interval field in the Vendor information section of the vendor record, the activation due date is populated based on the number of days you entered as the interval. For example, if you set the interval to 365, the Activation due field is populated with the date that falls one year from the date the order line is created. If needed, you can edit the
*   **Create inventory.** Select the types of records you want to create in the Inventory app once the order is opened. For information on configuring the default setting for this field based on [Order format](#order-format), see [Settings > Orders > Inventory interactions]({{< ref "/settings_orders.md#settings--orders--inventory-interactions" >}}).
*   **Material type.** The type of material.
*   **Trial.** If the e-resource is part of a trial, select the **Trial** checkbox.
*   **Expected activation.** The date the activation is expected.
*   **User limit.** The number of users that can use the e-resource at once.
*   **URL.** A link to the e-resource.


#### Adding a volume

To add a volume, click **Add volume** and enter the volume number. The volume saves once the order line is saved.


#### Deleting a volume

To delete a volume, find the volume you want to delete and click the **trash can** icon. The volume is removed and is deleted once the order line is saved.


### Other resource details

This section only appears if you select Other under [Order format](#order-format).



*   **Material supplier.** The supplier of the item. The default value is the vendor selected on the order. To change the supplier, click **Organization look-up** to select a vendor. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to select it. The organization is added to the Material supplier field.
*   **Receipt due.** The date the receipt is due.
*   **Expected receipt date.** The date the item is expected to be received.
*   **Create inventory.** Select the types of records you want to create in the Inventory app once the order is opened. For information on configuring the default setting for this field, see [Settings > Orders > Inventory interactions]({{< ref "/settings_orders.md#settings--orders--inventory-interactions" >}}).
*   **Material type.** The type of material.


## Searching for order lines

You can search for order lines in the **Search & filter** pane. Order lines is selected by default. To search for order lines, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:



*   **Keyword.** Searches through all fields in the drop-down list. This is the default search.
*   **Contributor.** The contributor to the item.
*   **PO line number.** The number for the purchase order line.
*   **Requester.** The requester of the item.
*   **Title or package name.** The title or package name of the item.
*   **Publisher.** The publisher of the item.
*   **Vendor account.** The vendor account your library is using to purchase the item.
*   **Vendor reference number.** The reference number of the vendor?
*   **Donor.** The donor of the item.
*   **Selector.** The selector of the item.
*   **Volumes.** The number of volumes of the item?
*   **Product ID.** The Product ID of the item.
*   **Product ID ISBN.** The ISBN of the item.

You can also search for order lines by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### Receipt status

In the **Search & filter** pane, click **Receipt status** and select any applicable filters:



*   **Awaiting receipt.** Order lines waiting to be received.
*   **Cancelled.** Order lines that were cancelled.
*   **Fully received.** Order lines that were fully received.
*   **Partially received.** Order lines that were partially received.
*   **Pending.** Order lines that are pending.
*   **Receipt not required.** Order lines that do not require to be received.


### Payment status

In the **Search & filter** pane, click **Payment status** and select any applicable filters:



*   **Awaiting payment.** Order lines awaiting payment.
*   **Cancelled.** Order lines with cancelled payment.
*   **Fully paid.** Order lines that are fully paid.
*   **Partially paid.** Order lines that are partially paid. Note: Once one or more invoices connected to a purchase order line have been “Approved,” the Payment status on the purchase order is changed to “Partially paid.”  See [Invoices > Approving an invoice]({{< ref "/invoices.md#approving-an-invoice" >}}).
*   **Payment not required.** Order lines that do not require payment.
*   **Pending.** Order lines with pending payment.


### Acquisition method

In the **Search & filter** pane, click **Acquisition method** and select any applicable filters:



*   **Approval plan.** Order lines acquired through an approval plan.
*   **Demand driven acquisitions (DDA).** Order lines acquired through DDA.
*   **Depository.** Order lines acquired through a depository arrangement, such as for government publications.
*   **Evidence based acquisitions (EBA).** Order lines acquired through EBA.
*   **Exchange.** Order lines acquired through an exchange with another library or institution.
*   **Gift.** Order line for materials granted to the library as a gift.
*   **Purchase at vendor system.** Order lines purchased through an external vendor system.
*   **Purchase.** Order lines purchased by methods such as email or EDI.
*   **Technical.** Order lines to track payments for technical expenses such as service orders, vendor processing fees. This value could also be used for items that have migrated from an external system.


### Location

To search for order lines in a specific permanent location, follow these steps:

1. In the **Search & filter** pane, click **Location**.

2. Click **Location look-up**.

3. In the **Select permanent location** dialog, select an **Institution**, **Campus**, **Library**, and **Location** using the drop-down lists.

4. Click **Save and close**. The search results appear in the Order lines pane.


### Fund code

To search for order lines using a specific fund code, follow these steps:

1. In the **Search & filter** pane, click **Fund code**.

2. Select the fund code from the drop-down list. The search results appear in the Order lines pane.


### Order format

In the **Search & filter** pane, click **Order format** and select any applicable filters:



*   **Electronic resource.** Order lines containing an electronic resource.
*   **Physical resource.** Order lines containing a physical resource.
*   **P/E mix.** Order lines containing a physical and electronic mixed resource.
*   **Other.** Order lines containing a different type of resource.


### Material type, electronic

To search for order lines that have an Order format of Electronic resource or P/E mix based on their electronic material type in the e-resources details section, follow these steps:

1. In the **Search & filter** pane, click **Material type, electronic**.

2. Select the material type from the drop-down list. The search results appear in the Order lines pane.


### Material type, physical

To search for order lines that have an Order format of Physical resource or P/E mix based on their physical material type in the physical details section, follow these steps:

1. In the **Search & filter** pane, click **Material type, physical**.

2. Select the material type from the drop-down list. The search results appear in the Order lines pane.


### Date created

To search for order lines based on the date they were created, follow these steps:

1. In the **Search & filter** pane, click **Date created**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Vendor

To search for order lines from a specific vendor, follow these steps:

1. In the **Search & filter** pane, click **Vendor**.

2. Click **Organization look-up**.

3. In the **Select Organization** dialog, search for the vendor.

4. Select the vendor you want to filter by. The vendor filter is applied.


### Tags

To search for order lines assigned specific tags, follow these steps:

1. In the **Search & filter** pane, click **Tags**.

2. Select the tag(s) from the drop-down list. The search results appear in the Order lines pane.


### Source

In the **Search & filter** pane, click **Source** and select any applicable filters:



*   **User.** Order lines created by a FOLIO user.
*   **API.** Order lines created through an Application Programming Interface.
*   **EDI.** Order lines created through Electronic Data Interchange..
*   **MARC.** Order lines imported through MAchine-Readable Cataloging format record import.


### Collection

In the **Search & filter** pane, click **Collection** and select any applicable filters:



*   **Yes.** Order lines that are part of a collection.
*   **No.** Order lines that are not part of a collection.


### Rush

In the **Search & filter** pane, click **Order format** and select any applicable filters:



*   **Yes.** Order lines that are flagged for rush processing.
*   **No.** Order lines that do not require rush processing.


### Access provider

To search for order lines from a specific access provider, follow these steps:

1. In the **Search & filter** pane, click **Access provider**.

2. Click **Organization look-up**.

3. In the **Select Organization** dialog, search for the vendor.

4. Select the vendor you want to filter by. The search results appear in the Order lines pane.


### Activated

In the **Search & filter** pane, click **Activated** and select any applicable filters:



*   **Yes.** Order lines that are activated.
*   **No.** Order lines that are not activated.


### Expected activation

To search for order lines based on their expected activation date, follow these steps:

1. In the **Search & filter** pane, click **Expected activation**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Trial

To search for order lines that have an Order format of Electronic resource or P/E mix and are flagged as a trial resource in the Electronic resource details section.

In the **Search & filter** pane, click **Trial** and select any applicable filters:



*   **Yes.** Order lines for resources that are being evaluated on a trial basis.
*   **No.** Order lines for resources that are not trials.


### Subscription from

To search for order lines based on their subscription from date, follow these steps:

1. In the **Search & filter** pane, click **Subscription from**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Subscription to

To search for order lines based on their subscription to date, follow these steps:

1. In the **Search & filter** pane, click **Subscription to**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Actual receipt date

To search for order lines based on their actual receipt date (when the order line was fully received), follow these steps:

1. In the **Search & filter** pane, click **Actual receipt date**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Expected receipt date

To search for order lines based on their expected receipt date, follow these steps:

1. In the **Search & filter** pane, click **Subscription to**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Receipt due

To search for order lines based on their receipt due date, follow these steps:

1. In the **Search & filter** pane, click **Subscription to**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


## Viewing order line details

Once you search for an order line, the following information appears in the Order lines pane:



*   **POL number.** Purchase order line number.
*   **Updated date.** The date the order line was last updated.
*   **Title or package name.** The title or package name of the item.
*   **Product ID.** The product ID of the item.
*   **Vendor reference number.** The vendor reference number.
*   **Fund code.** The fund code being used to purchase the item.
*   **Order status.** The status of the order.

In the search results, click on an order line to view it. The PO Line details pane displays with additional information about the order line. If the PO Line has been linked to an Agreement line in the Agreements app, a Linked Agreement Lines section will display in the PO Line details pane containing information about the linked Agreement Line.  See Agreements > Adding a PO line to an agreement line for more information.


## Editing an order line

1. [Find the order line you want to edit](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Edit**.

3. Edit the order line.

4. Click **Save & close**. A confirmation message appears and the order line is updated.


## Receiving an order line

1. [Find the order line you want to receive](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Receive.** The order line opens in the Receiving app.

3. Follow the steps as outlined in the [Receiving app documentation]({{< ref "/receiving.md" >}}).


## Deleting an order line

1. [Find the order line you want to delete](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Delete**.

3. In the Delete order line dialog, click **Delete**. A confirmation message appears and the order line is deleted.


## Adding a note to an order line

1. [Find the order line to which you want to add a note](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, under **Notes**, click **New**.

3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.

4. Enter a **Note title** in the box.

5. Optional: Enter any **Details** about the note in the box.

6. Click **Save & close**. The note is saved and appears in the Notes section in the PO Line details pane.


## Adding a tag to an order line

1. [Find the order line you want to tag](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click the **tag icon**.

3. In the **Tags** pane, either select a tag from the box or enter a tag.

4. Click the **X** on the Tags pane to close the pane and save the tag. The tag number updates to the number of tags applied to the order line.
