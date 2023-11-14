---
title: "Orders"
linkTitle: "Orders"
date: 2023-11-13
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

Orders permissions:

*   **Orders: Approve purchase orders.** This permission allows the user to approve purchase orders.
*   **Orders: Assign acquisition units to new order.** This permission allows the user to assign acquisition units to orders when creating a new order.
*   **Orders: Can create new Orders and Order lines.** This permission allows the user to create new orders and order lines.
*   **Orders: Can delete Orders and Order lines.** This permission allows the user to delete orders and order lines. 
*   **Orders: Can edit Orders and Order lines.** This permission allows the user to view and edit orders and order lines. 
*   **Orders: Can view Orders and Order lines.** This permission allows the user to view orders and order lines.
*   **Orders: Cancel order lines.** This permission allows the user to cancel order lines.
*   **Orders: Cancel purchase orders.** This permission allows the user to cancel order lines.
*   **Orders: Export search results.** This permission allows the user to export search results in .csv format.
*   **Orders: Manage acquisition units.** This permission allows the user to change the assignment of acquisition units for an order or order line.
*   **Orders: Reopen purchase orders.** This permission allows the user to reopen an order.
*   **Orders: Show all hidden fields.** This permission allows the user to view all fields on a purchase order that were hidden by creation from an order template.
*   **Orders: Unopen purchase orders.** This permission allows the user to unopen an order.
*   **Orders: Update encumbrances.** This permission allows the user to update encumbrances for an open order.



## Keyboard shortcuts
Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform essentials > Keyboard shortcuts]({{< ref "keyboardshortcuts.md" >}}) for more information.
 
 
## Creating an order

Orders contain a list of titles or packages (physical or electronic) being ordered by your library from a vendor.

In FOLIO, you can create either [one-time orders](#creating-a-one-time-order) or [ongoing orders](#creating-an-ongoing-order). One-time orders should be used for items fulfilled within the year, like monographs. Ongoing orders generally span multiple years, and you usually pay as you receive each item. You would want to create an ongoing order for a journal subscription, for example.

Once you create an order, you need to [add at least one order line to the order](#adding-an-order-line-to-an-order) so the [order can be opened](#opening-an-order) and the acquisitions process can begin. You can also initiate order creation from the Inventory app by searching for an instance and clicking [Inventory > Actions > Create new order]({{< ref "/inventory.md#creating-a-new-order" >}}) for more information.


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
*   **Vendor.** The vendor associated with this purchase order. Click **Organization look-up** to select a vendor. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to select it. The organization is added to the Vendor field.
*   **Order type.** Select the type of order you are placing: One-time or Ongoing.
*   **Acquisitions units.** If you want the order to be available to particular users within certain acquisitions units, enter or select the Acquisition units from the drop-down list. You can select multiple units. For more information on acquisition units, see [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}).
*   **Assigned to.** To assign the order to a user, click the **+**. In the **Select User** dialog, find the user using the search box and/or the filters. Click the user to select them. The user appears in the **Assigned to** box. If you need to remove the user, click the **x**. If you need to assign the order to a different user, click the **+** and repeat the above steps.
*   **Bill to.** In the **Bill to** drop-down list, select the billing address for the order. Once you select an address, the billing address appears. Addresses are configured in the Settings app. For more information, see [Settings > Tenant > Addresses]({{< ref "settings_tenant#settings--tenant--addresses">}}).
*   **Ship to.** In the **Ship to** drop-down list, select the address the order items will be shipped to. Once you select an address, the shipping address appears. Addresses are configured in the Settings app. For more information, see [Settings > Tenant > Addresses]({{< ref "settings_tenant#settings--tenant--addresses">}}).
*   **Manual.** If the Manual checkbox is selected, EDI integration settings for this vendor will be ignored and nothing on this order will be exported to the vendor.. For example, select this checkbox if [EDI order integration]({{< ref "organizations#edi-configuration" >}})  is set up
*   **Re-encumber.** The Re-encumber checkbox is selected by default. If the checkbox is cleared, you are indicating that the order shouldn’t re-encumber during the fiscal year rollover even if it meets the criteria to re-encumber. However, if the checkbox is selected and the rollover settings indicate that this order doesn’t meet the criteria to re-encumber, money will not be committed to the next fiscal year for this order. The re-encumber toggle is only considered when the order meets the rollover criteria. If the checkbox is selected and the rollover settings indicate that this order meets the criteria to re-encumber, then money is committed to the next fiscal year for the order.
*   **Tags.** Enter or select any tags from the drop-down list you would like to apply to the order.


#### PO summary



*   **Approved.** To approve the order, select the **Approved** checkbox. Note: You only need to approve the order if your library has the Approval required setting turned on. An order is automatically approved when opened. For more information, see [Settings > Orders > Approvals]({{< ref "/settings_orders.md#settings--orders--approvals" >}}).


### Creating an ongoing order

1. In the **Search & filter** pane, click **Orders**.

2. In the **Orders** pane, click **New**.

3. In the **Create purchase order** window, select a template from the **Template name** drop-down list, if using. The order is populated with the information configured in the template. Templates are created in the Settings app. See [Settings > Orders > Order templates]({{< ref "/settings_orders.md#settings--orders--order-templates" >}}) for more information.

4. Select **Ongoing** from the **Order type** drop-down list.

5. Fill in the rest of the fields under [Purchase order](#purchase-order), [Ongoing order information](#ongoing-order-information), and [PO summary](#po-summary). For more information on the fields and actions available in these sections, see the section descriptions below.

6. Optional: Select **Approved** to approve the order. Note: You only need to approve the order if your library has the Approval required setting turned on. An order is automatically approved when opened. For more information, see [Settings > Orders > Approvals]({{< ref "/settings_orders.md#settings--orders--approvals" >}}).

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

You can search for orders in the **Search & filter** pane. Click **Orders** to start your search. The Order lines search is selected by default and you can toggle between the Order lines search and Orders search at the top of the search and filter pane. To search for orders, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:



*   **Keyword.** Searches through all fields in the drop-down list. This is the default search.
*   **Date created.** Date the order was created.
*   **Date opened.** Date the order was opened, which is when funds are encumbered and interactions with the Inventory app occur.
*   **PO number.** The purchase order number.


You can also search for orders by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information on the filters.


### Status

In the **Search & filter** pane, click **Status** and select any applicable filters:



*   **Closed.** Orders that are closed.
*   **Open.** Orders that are open.
*   **Pending.** Orders that are pending.


### Prefix

To search for orders by purchase order number prefix, follow these steps.  For more information about creating **Prefix** values, see [Settings > Orders > Prefixes]({{< ref "/settings_orders.md#settings--orders--prefixes" >}}).


1. In the **Search & filter** pane, click **Prefix**.

2. Select the prefix from the drop-down list. The search results appear in the Order lines pane.


### Suffix

To search for orders purchase order number suffix, follow these steps.  For more information about creating **Suffix** values, see [Settings > Orders > Suffixes]({{< ref "/settings_orders.md#settings--orders--suffixes" >}})


1. In the **Search & filter** pane, click **Suffix**.

2. Select the suffix from the drop-down list. The search results appear in the Order lines pane.


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


### Date opened

To search for orders based on the date the order was opened, follow these steps:

1. In the **Search & filter** pane, click **Date opened**.

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


### Subscription

To search for subscription orders follow these steps:

1. In the **Search & filter** pane, click **Subscription**.

2. Choose the appropriate filter:

*   **Yes.** Subscription orders.
*   **No.** Non-subscription orders.


### Renewal date

To search for orders based on their renewal date, follow these steps:

1. In the **Search & filter** pane, click **Renewal date**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Orders pane.


### Manual renewal

In the **Search & filter** pane, click **Manual renewal** and select any applicable filters:



*   **Yes.** Orders with the Manual renewal checkbox selected.
*   **No.** Orders with the Manual renewal checkbox cleared.


### Review period

To search for orders within a review period, in days, follow these steps:

1. In the **Search & filter** pane, click **Review period**.

2. Enter or select the review period, in days. The search results appear in the Orders pane.


### Bill to

To search for orders based on their bill to address, follow these steps. Addresses are created in Settings > Tenant > Addresses. 

1. In the **Search & filter** pane, click **Bill to**.

2. Select the address name from the drop-down list. The search results appear in the Orders pane.


### Ship to

To search for orders based on their ship to address, follow these steps. Addresses are created in Settings > Tenant > Addresses. 

1. In the **Search & filter** pane, click **Ship to**.

2. Select the address name from the drop-down list. The search results appear in the Orders pane.

## Exporting search results

To export a file of order information in comma-separated values (.csv) format, follow these steps:

In the **Search & filter** pane, open the action menu and select,**Export results (CSV)**.

In the **Export settings** dialog, the following message will display: “This export could take a few minutes. If you reload or close the page the export will not be completed. Once the file is ready it could take another minute for your browser to finish downloading the file. You can continue to work with orders and order lines in a different browser tab if needed.”

To export all fields from the purchase order header, leave the **PO fields to export** default value set to **All**.  To select specific fields to export, click on the radio button below “All” and use the drop-down list to select the specific fields to export:

*   PO number prefix
*   PO number
*   PO number suffix
*   Vendor
*   Organization type
*   Order type
*   Acquisitions units
*   Approval date
*   Assigned to 
*   Bill to
*   Ship to
*   Manual
*   Re-encumber
*   Created by
*   Created on
*   Note 
*   Workflow status
*   Approved 
*   Renewal interval
*   Subscription
*   Manual renewal
*   Ongoing notes
*   Review period
*   Renewal date
*   Review date
*   PO tags

To export all fields from the purchase order line, leave the **POL fields to export** default value set to **All**.  To select specific fields to export, click on the radio button below “All” and use the drop down list to select the specific fields to export:

*   POLine number
*   Title
*   Instance UUID
*   Subscription from
*   Subscription to
*   Subscription interval
*   Receiving note
*   Publisher
*   Edition
*   Linked package
*   Contributor, Contributor type
*   Product ID, Qualifier, Product ID type
*   Internal note
*   Acquisition method
*   Order format
*   Created on (PO line)
*   Receipt date
*   Receipt status
*   Payment status
*   Source
*   Donor
*   Selector
*   Requester
*   Cancellation restriction
*   Cancellation description
*   Rush
*   Collection
*   Line description
*   Vendor reference number, reference type
*   Instructions to vendor
*   Account number
*   Physical unit price
*   Quantity physical 
*   Electronic unit price
*   Quantity electronic
*   Discount
*   Estimated price
*   Currency
*   Fund code, Expense class, Value, Amount 
*   Location, Quantity P, Quantity E
*   Material supplier
*   Receipt due
*   Expected receipt date
*   Volumes
*   Create inventory
*   Material type
*   Access provider
*   Activation status
*   Activation due
*   Create inventory E
*   Material type E
*   Trial 
*   Expected activation
*   User limit
*   URL
*   POLinetags
*   PO number prefix
*   Renewal note


5.  Once the export fields have been chosen, click **Export** button at the bottom of the dialog.  A .csv file will be downloaded locally with the name “order-export-YYYY-MM-DD-HH_MM” containing one row for each purchase order filtered in the search pane selection list.  If the user has chosen to export POL fields and an order contains multiple purchase order lines then the file will contain a row for each purchase order line.


## Viewing order details

Once you search for an order, the following information appears in the Orders pane:



*   **PO number.** The purchase order number.
*   **Vendor code.** The vendor code.
*   **Status.** The order status: Pending, Open, Closed.
*   **Order type.** The type of order: One-time, Ongoing.
*   **Last updated.** The date the order was last updated.
*   **Acquisition unit.** The acquisition units assigned to the order.
*   **Assigned to.** The user to which the order is assigned.

To customize the columns that appear in the results list, follow these steps:

1. In the **Order** pane, select the **Actions** button.  

2. The listed columns are all selected by default under **Show columns** in the Actions list.  

3. Deselect any columns that you want to remove from the Orders pane display.

4. Your selections persist until you logout of FOLIO.

In the search results, click on an order to view it. The purchase order details pane displays with additional information about the order:

### Purchase order section

See [Creating an order > Purchase order](#purchase-order) for more information on the fields displayed in this section of the purchase order.  
*   **PO number.** Purchase order number for the order. Note that when viewing the order, the prefix and suffix values are displayed within the order number rather than as distinct fields.
*   **Vendor.** The vendor organization associated with this purchase order.
*   **Order type.**  The type of order: One-time or Ongoing.
*   **Acquisitions units.**  The acquisitions units assigned to the order.
*   **Approval date.**  Date on which the order status changed from Open to Approved.  
*   **Assigned to.**  The user assigned to this order, if applicable.
*   **Bill to.** The billing address selected for the order. 
*   **Ship to.** The ship to address selected for the order.
*   **Manual.** If the Manual checkbox is selected, it excludes the order from automated processing. For example, this may be selected if you have EDI set up, but you submitted the order on the vendor’s site and do not want to resend it to them.
*   **Re-encumber.**  See [Creating a purchase order](#purchase-order) for a full description of this field. 
*   **Created by.**  Name of the user that created the purchase order.
*   **Created on.**  The date and time at which the purchase order was created.
*   **Date opened.**  The date and time at which the purchase order was opened.



### Ongoing order information
This section only displays for orders with type **Ongoing.**  If the subscription checkbox is checked for this order, the following information displays.  See [Creating an order](#creating-an-order) for descriptions of each field.  Descriptions are provided below for fields that aren’t described in [Creating an order](#creating-an-order).

*   **Subscription.**  
*   **Renewal interval.**
*   **Renewal date.**
*   **Review period.**
*   **Manual renewal.**
*   **Notes.**


If the subscription checkbox is unchecked, the following information displays:

*   **Subscription.**  
*   **Review date.**
*   **Notes.**


### PO Summary information


This section displays pricing and status information for the purchase order.


*   **Total units.**  Total quantity ordered across all purchase order lines.
*   **Approved.**  Indicates whether the order has been approved.
*   **Workflow status.**  The order status: Pending, Open, Closed.
*   **Total estimated price.**  The total of all PO line estimated price amounts.
*   **Total encumbered.**  The total of all PO line encumbered amounts.
*   **Total expended.**  The total expended amount for all PO lines.  When an invoice line is created, it is linked to a PO line.  The total amount of the invoice line is expended once the invoice is approved.






### PO Lines


This section displays information about purchase order lines for this order. The PO lines table list displays the following columns. Click on the PO line row to open the detail pane for the PO line.


*   **POL number.**  Purchase order line number. 
*   **Title or package name.**  Title or package name of the item ordered on the PO line.
*   **Product ID.**  Product ID of the item ordered on the PO line.  Note: all associated product IDs will be listed here.
*   **Vendor reference number.**  The vendor reference number for this order line.
*   **Fund code.**  The fund code of the fund distribution for the PO line.  Note:  If more than one fund code is associated with the PO line, each code will be listed here.
*   **Estimated price.**  The calculated price based on the values you entered. Estimated price = list unit price(s) x quantities ordered + additional cost - discount.




### Related invoices


This section displays information about invoices related to this order through a purchase order line link to an invoice line. The invoice table list displays the following columns. To sort the list by **Invoice date**, click on the column header.


*   **Invoice #.** The vendor-provided identifier for the invoice related to this purchase order line.  
*   **Invoice date.** The vendor invoice date.  Click on the column name to sort the list of related invoices by **Invoice date**.
*   **Vendor name.** The name of the vendor associated with the related invoice.
*   **Vendor invoice number.**
*   **Status.**  The status of the invoice: Open, Reviewed, Approved, Paid, or Cancelled.
*   **Expended amount.** The total expended amount of the invoice.

### Export details

This section displays information about order exports to vendors related to this order.  The 

*   **Job ID.**   Identification number of the export.
*   **Export date.**  Date that the export job was run.
*   **File name.**  Name of the export file.
*   **Export method.**  The **Integration name** on the associated Organization record’s [Integration details]({{< ref "organizations#adding-integration-details-to-a-vendor-organization" >}}).

See the [Export Manager]({{< ref "export manager#viewing-export-jobs" >}}) for more information about viewing export jobs.



## Editing an order

1. [Search for the order you want to edit](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Edit**.

3. Edit the order.

4. Click **Save & close**. A confirmation message appears and the order is updated.


## Approving an order

You only need to approve an order if you have the Approvals required setting turned on. For more information, see [Settings > Orders > Approvals](../../settings/settings_orders/settings_orders/#settings--orders--approvals). If you have this setting turned on, you also need the applicable permission to be able to approve the order. You can open an order once it is approved.

There are two ways to approve an order. You can edit the order and select the Approved checkbox under PO summary, or you can follow these steps:

1. Search for the order you want to approve and select it.

2. In the Purchase order pane, select **Actions > Approve**. A confirmation message appears and the purchase order is marked as Approved.


## Duplicating an order

1. [Search for the order you want to duplicate](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Duplicate**.

3. In the **Duplicate order** dialog, click **Duplicate** to confirm the duplication. A confirmation message appears and the order is duplicated and appears in the Orders pane.


## Opening an order

After you create an order, it has the status of Pending until you open it. Once you open an order the following actions occur:



*   Encumbrance transactions are created. Note: Encumbrances are only created if a fund distribution was added to an order line.
*   Inventory records are created. If **Create inventory** on the purchase order line is set to "Instance/holdings/item", an item is created with an item status of "On order." For more information about item status see [Platform essentials > Item Status]({{< ref "itemstatus" >}}). Inventory records are not created if **Create inventory** on the order line is set to None. For more information about **Create inventory**, see the [E-resources details](#e-resources-details) and [Physical details](#physical-resource-details) sections below.
*   Date opened is set to today’s date.
*   Approval date is set to today’s date if the order hasn’t already been approved by a user.
*   If possible duplicates are found, based on title and product ID values, a modal displays with a list of possible duplicate orders. Select continue or cancel. This duplicate check can be disabled in Settings. See [Settings > Orders > Opening purchase orders]({{< ref "/settings_orders.md#settings--orders--opening-purchase-orders" >}}).
*   Order lines cannot be added after the order is opened unless you [unopen](#unopening-an-order) the order.
*   Fields such as Order type, Title, Acquisition method, and Order format are not editable once an order is opened. The order would need to be unopened to edit those fields. For more information, see [Unopening an order](#unopening-an-order).

1. [Search for the order you want to open](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Open**.

3. In the **Open - purchase order** dialog, click **Submit**. A confirmation message appears and the order workflow status changes to **Open.**


## Unopening an order

[Opening an order](#opening-an-order) is not final and an order can be reverted back to a Pending status by unopening the order.

Note: Unopening an order removes any encumbrances and item records with an On Order status. However, items that were received, holdings, and instances aren’t removed.

1. [Search for the open order you want to unopen](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Unopen**.

3. In the **Unopen - purchase order** dialog, click **Submit**. A confirmation message appears and the order’s status changes to Open.


## Cancelling an order

To cancel an open purchase order, follow the steps below.  Cancelling a purchase order removes all encumbrances and updates all associated item records for all purchase order lines to an **Item status** of Order closed.  To cancel individual order lines, see [Cancelling an order line](#cancelling-an-order-line). You can [reopen an order[(#reopening-an-order) after performing the cancel action.

1. [Search for the order you want to cancel](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Cancel**. Note: Only orders in Open status display the cancel option in the Action menu.

3. In the **Close - purchase order** dialog, optionally add **Notes** text and click **Submit**. A confirmation message appears. 

Upon cancellation, the order **Workflow status** changes to Closed, the **Reason for closure** is set to Cancelled, and any optionally added notes appear in the PO Summary **Notes on closure** field. All PO line fund distribution **Current encumbrance** amounts are set to $0.00.  In the PO line search results pane and on the Purchase order detail pane PO lines section, a red circle with a diagonal line icon appears beside the cancelled order line.



## Closing an order

The system will automatically close one-time orders that are fully received and fully paid, or those where receipt or payment is not required, as indicated by the purchase order line **Receipt status** and **Payment status** values.  Only open orders can be closed. If you need to close an order manually, follow the steps below. Note about **Item status**: If **Create inventory** on the purchase order line is set to “Instance/holdings/item”, an item was created in Inventory when the order was opened. Closing an order when the item is not yet received will update the **Item status** of the item to “Order Closed.”  For more information about item status see [Platform essentials > Item Status]({{< ref "itemstatus" >}}).

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

3. Follow the steps as outlined in [Receiving > Receiving an order](../receiving/#receiving-an-order).


## Updating encumbrances for an order

You can update encumbrances for open orders. Use this action to reset encumbrances based on an order’s current price and fund distributions.  If an order failed to encumber during rollover due to reasons such as insufficient budget funds or distribution to an inactive fund, make the appropriate edits to the budget or order and then select this **Update encumbrances** action to rerun the system encumbrance logic.

1. [Search for the order for which you want to update encumbrances](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Update encumbrances.**

3.  A confirmation message appears and the order encumbrances are updated based on the order’s current price and fund distributions.

## Creating a new invoice for an order

You can create an invoice for Open status orders from within the Orders app using the Action menu.  Note: Purchase order lines containing payment status values of "Payment not required" or "Fully paid" are not linked to a new invoice created through the **+ New invoice** action.


1. [Search for the order for which you want to create an invoice](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > + New invoice**

3. In response to the Create invoice dialog prompt, “Do you want to create an invoice from this order?” click **Submit**.  The **Create invoice** window opens.

4. Follow the steps in [Creating an invoice]({{< ref "/invoices.md#creating-an-invoice" >}}) to complete the Create invoice window and click **Save and close**.

5. If the order contains more than one purchase order line, the **Edit sequence of invoice lines** window opens containing a table list of all purchase order lines related to the order. You can optionally drag and drop order line rows to resequence them to match the vendor invoice sequence.  When finished, click **Save and close**.

6. Two green toast messages display to indicate that the invoice and invoice line(s) have been saved. The invoice line(s) are automatically created and link to the purchase order line from which you initiated the **+ New invoice** action.



## Deleting an order

Note: When you delete an order, received items remain in the system, but the receiving history is removed.

1. [Search for the order you want to delete](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Delete.**

3. In the Delete order dialog, click **Delete**. A confirmation message appears and the order is deleted.


## Printing an order

To print or save a PDF file containing a snapshot of key information about an order, follow these steps:

1. [Search for the order you want to print](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, select **Actions > Print**.  A print preview window will open.

3. To print the order, adjust the printer settings as needed and select **Print**.

4. To save the PDF file without printing, open the **Destination** drop-down list and select **Save as pdf**.



## Showing hidden fields

To reveal fields that are hidden, as defined in [Settings > Orders > Creating an order template]({{< ref "settings_orders#settings--orders--order-templates" >}}), follow these steps.  Note: The user permission **Show all hidden fields** must be assigned to the user.

1. From the detail pane of the order, select **Actions > Show hidden fields.**  If any fields are hidden, they are added to the detail pane.

2. To hide the fields again, select **Actions > hide fields.**



## Adding a tag to an order

1. [Search for the order you want to tag](#searching-for-an-order) and select it.

2. In the **Purchase order details** pane, click the **tag icon**.

3. In the **Tags** pane, either select a tag from the box or enter a tag.

4. Click the **X** on the Tags pane to close the pane and save the tag. The tag number updates to the number of tags applied to the order.



## Viewing order version history

1. [Search for the order you want to view](#searching-for-an-order) and select it.

2. In the **Purchase order details** pane, click the **clock icon** which is to the right of the tag icon.

3. A fourth pane titled **Version history** opens.  Versions are displayed in a card list sorted by date.  The following information is displayed for each version:  
*   **Source.**  The user who saved this version of the order line.
*   ***Current Version, Original Version,* or blank.**  Displays only for the current and original versions of the order line.
*   **Changes.**  Displays the list of fields that were edited in this version.

4. To view the order detail pane for a version, either click on the underlined version date mm/dd/yyyy, hh:mm or the clock icon for the version you want to open.

5. The order detail pane displays the order data for that version.  Changes from the prior version are highlighted in yellow.

6. To close the version history view, click on the X in the top right of the Version history pane.  The fourth pane closes and the order detail pane displays the current order version.



## Adding an order line to an order

Follow these steps to add an order line to an order.  You can also add an order line from the Inventory app by searching for an instance and clicking [Inventory > Actions > Create new order]({{< ref "inventory#creating-a-new-order" >}}).

1. [Search for the order to which you want to add the PO line](#searching-for-an-order) and select it.

2. In the **Purchase order** pane, in the **PO lines** section, click **Add PO line**.

3. In the **Add PO line** window, fill in the fields in the [Item details](#item-details), [PO line details](#po-line-details), [Vendor](#vendor), [Cost details](#cost-details), and [Fund distribution](#fund-distribution) sections. For more information on the fields and actions available in these sections, see the section descriptions below.

4. **Create another** checkbox: If the [Settings > Orders > Purchase orders line limit]({{< ref "settings_orders#settings--orders--purchase-order-lines-limit" >}}) value is greater than one, click this checkbox at the bottom of the window to keep the **Add PO line** window open after saving the current order line.

5. Click **Save**, **Save & close** or **Save & open order**, if applicable.  If possible duplicates are found, based on title and product ID values, a modal displays with a list of possible duplicate orders. Select continue or cancel. This duplicate check can be disabled in Settings. For more information on checking for duplicates and enabling saving and opening orders simultaneously, see [Settings > Orders > Opening purchase orders]({{< ref "/settings_orders.md#settings--orders--opening-purchase-orders" >}}).

6. Once the order line is created, you can add notes, See [Adding a note to an order line](#adding-a-note-to-an-order-line) for more information. If the order line is for a package, you can add package titles. See [Adding package titles to an order line](#adding-package-titles-to-an-order-line).


### Item details

*   **Package.** If you are adding a package, select the **Package** checkbox. If selected, Title becomes Package name. The **Receiving workflow** field will be automatically set to “Independent order and receipt quantity” once you select the **Package** checkbox.  See the [PO line details](#po-line-details) section below for more information about Receiving workflow.
*   **Title/Package name.** Title of the item. If you already have the item in your Inventory app, you can use Title look-up to link the item to the Inventory record. This will automatically populate any applicable fields. To link to an inventory record, click **Title look-up**. In the **Select instance** dialog, find the title using the search box and/or the filters. Click the title to select it. The title appears in the Title box and relevant item fields are populated.
*   **Receiving note.** Enter any notes about receiving the item. The notes display in the Receiving app for this order line.
*   **Must acknowledge receiving note.**  Check this box to enable the receiving note to popup in the Receving app when the user clicks to receive the title.  See [Receiving > Receive](../receiving#receive")
*   **Subscription from.** If the item is a subscription, select when the subscription starts.  The date displays in the Invoices app when this order line is added to an invoice.
*   **Subscription to.** If the item is a subscription, select when the subscription ends. The date displays in the Invoices app when this order line is added to an invoice.
*   **Subscription interval.** If the item is a subscription, enter or select how many days the subscription lasts.
*   **Publication date.** The date of publication of the item. 
*   **Publisher.** The publisher of the item.
*   **Edition.** The edition of the item.
*   **Linked package.** To link a package to the order line, click **Lookup package POL**. In the **Select order lines** dialog, find the package using the search box and/or the filters. Click the package to select it. The package appears in the Linked package field.
*   **Contributor.** The item contributor.
*   **Product identifiers.** The identifier of the item, like an ISBN.
*   **Internal note.** Enter any internal notes about the item.


#### Adding a contributor

1. Click **Add contributor**.

2. Enter the **Contributor** in the box.

3. Select the **Contributor type** from the drop-down list: Corporate name, Meeting name, or Personal name. The Contributor saves once the order line is saved.


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



*   **Acquisition method.** Select the method you are using to purchase the item: Approval plan, Demand driven acquisitions (DDA), Depository, Evidence based acquisitions (EBA), Exchange, Free, Gift, Internal transfer, Membership, Other, Purchase, Purchase at vendor system,  Technical.
*   **Automatic export.** Select this checkbox to include the order in automated EDI order export which is triggered when an order is opened if EDI is set up for the associated vendor. The account number selected in the [Vendor](#vendor) section of the order will determine which EDI configuration is applied for the export.  Leave the checkbox blank to prevent automatic export of the purchase order line when opened.  See [Organizations > Adding integration details to a vendor organization]({{< ref "organizations#adding-integration-details-to-a-vendor-organization" >}}) for more information about vendor organization integrations.
*   **Order format.** Select the format of the item you are ordering: Electronic resource, Physical resource, P/E mix, or Other. The Order format determines which fields are required in the [Cost details](#cost-details) section and whether the [Physical resource details](#physical-resource-details) or [E-resources details](#e-resources-details) sections are displayed.
*   **Receipt date.** The receipt date of the item.
*   **Receipt status.** Select the receipt status of the item: Pending or Receipt not required.  For orders with type **Ongoing**, the receipt status is automatically set to **Ongoing** when the order is saved. If no selection is made, the order is created with a receipt status of **Pending**. Upon opening the order, the receipt status is automatically set to **Awaiting receipt**. Once an order is open, you can edit the Receipt status to **Cancelled**, **Fully received**, **Partially received**, or **Receipt not required**. The system will automatically close orders that have resolved both payment and receipt statuses either as “Payment not required” or “Receipt not required” or by reaching “Fully paid” and “Fully received” through actions taken in the Receiving app and the Invoices app.  It is advisable to consider your library’s needs when defining how to set this field.  For example, you may want to select “Receipt not required” for one-time e-resource orders so that the order will automatically close once invoice payment is complete. Otherwise, if your library doesn’t receive e-resources, a one-time e-resource order may be left open even after payment is complete which could impact your expected results during Fiscal Year rollover.
*   **Payment status.** Select the payment status of the item: Payment not required or Pending. For orders with type **Ongoing**, the payment status is automatically set to **Ongoing** when the order is saved.  If no selection is made, the order is created with a payment status of **Pending**.  Upon opening the order, the payment status is automatically set to **Awaiting payment.**  Once an order is open, you can edit the **Payment status** to **Cancelled**, **Partially paid**, **Fully paid**, or **Payment not required**. The Payment status is automatically set to **Partially paid** when a connected invoice line with the **Release encumbrance** checkbox unchecked/blank is set to an **Approved** status. The system will automatically close orders that have resolved both payment and receipt statuses either as Payment not required” or “Receipt not required” or by reaching “Fully paid” and “Fully received” through actions taken in the Receiving app and the Invoices app.   
*   **Donor.** The donor of the item.
*   **Selector.** The person who chose the item.
*   **Requester.** The person who requested the item.
*   **Cancellation restriction.** If there is a cancellation restriction on the item, select the **Cancellation restriction** checkbox.
*   **Rush.** If the item needs rush processing, select the **Rush** checkbox.
*   **Collection.** If the item is part of a collection, select the **Collection** checkbox.
*   **Receiving workflow.** Select a value from the drop down list to manage behavior in the Receiving app.  Select **Synchronized order and receipt quantity** to keep the order quantity and the number of pieces to be received in sync. When the order is opened, the system will generate Receiving app pieces based on the quantity value on the purchase order line. Updating the quantity on the order will update the number of pieces to be received and updates in the Receiving app will update the order.  Select **Independent order and receipt quantity** if you need to create an unpredictable quantity of Receiving pieces, such as for an ongoing order.  Note: In prior system releases, this field was a checkbox named "Manually add pieces for receiving."
*   **Cancellation description.** A note about the cancellation.
*   **Line description.** A description of the purchase order line.
*   **Tags.** Select or enter any tags you want to assign to the order line in the box.


### Vendor



*   **Vendor ref number.** A reference number used by a vendor to identify the order or item being ordered. For example, for migrated open orders it may be helpful to store the original purchase order number here for use in matching to vendor invoices.
*   **Vendor ref type.** Select the type of reference number entered in the previous box: Agent’s unique subscription reference number, Internal vendor number, Library’s continuation order number, Supplier’s continuation order, or Supplier’s unique order line reference number.
*   **Account number.** The vendor account number. If one or more vendor accounts exist in the Organization record for the vendor selected in the [Purchase order](#purchase-order) section of the Order, the first account appears in this field as the default value. To use a different account number for this vendor, select the **Account number** from the drop-down list, if applicable. Note: The list will display the Account name with the account number in parenthesis.
*   **Instructions to vendor.** Enter any instructions you want to send to the vendor when the order is opened.


### Cost details

This section contains purchase order line cost, quantity, currency, and discount information. Only certain fields will be editable depending on the [Order format](#order-format) selected in the [PO line details](#po-line-details) section. Some fields are required based on the Order format.  
Note: If the [Package checkbox](#item-details) is selected for the purchase order line, you will see **Unit price** and **Quantity** field labels rather than **Physical unit price** or **Electronic unit price** or quantity field labels.

*   **Physical unit price.** The price of the physical unit. Required if the [Order format](#order-format) is Physical, P/E mix, or Other.
*   **Quantity physical.** The number of items you are ordering. Required if the [Order format](#order-format) is Physical, P/E mix, or Other.
*   **Additional cost.** Any additional costs for the item.
*   **Currency.** Select the **Currency** of the item from the drop-down list. The default value is stored in Tenant settings as the primary currency. For more information, see [Settings > Tenant > Language and localization]({{< ref "/settings_tenant.md#settings--tenant--language-and-localization" >}}). Note: When an order is opened, the system creates an encumbrance transaction on the current budget for the fund selected in the fund distribution section of the order.  If the currency of the PO line is different than the budget currency, the encumbrance will display on the budget as a converted amount.  The budget currency is set to the Tenant currency value at the time the [Finance > Fiscal year]({{< ref "finance#fiscal-year-information" >}}) record is created; therefore, if the Tenant currency value is updated, any budgets created prior to the update will still operate based on the Tenant currency that existed when the Fiscal year associated with the budget was created.
*   **Current exchange rate.**  This value will display after the POL is saved. The system automatically retrieves the current currency exchange rate using the Java Money API that retrieves and convert currencies using the European Central Bank (ECB) as the source.
*    **Use set exchange rate.**  Check this box if you want to input an exchange rate value to be used for order instead of current rate.
*   **Set exchange rate.**  The exchange rate value to be used for this order instead of the current rate.  This field is locked, as indicated by the lock icon beside the field label, unless the **Use set exchange rate** checkbox is selected.
*   **Electronic unit price.** The price of the electronic item. Required if the [Order format](#order-format) is Physical or P/E mix.
*   **Quantity electronic.** The number of electronic items you are ordering. Required if the [Order format](#order-format) is Electronic or P/E mix.
*   **Discount.** The discount percentage or price.
*   **Type.** Select the **%** or **$** to indicate the type of discount.
*   **Estimated price.** The calculated price based on the values you entered. Estimated price = list unit price(s) x quantities ordered + additional cost - discount.


### Fund distribution

If you want to encumber money to certain funds, enter your fund distributions in this section. You can encumber money to more than one fund. The encumbrance(s) apply to the current fiscal year budget for the selected fund(s).


#### Adding a fund distribution

1. Click **Add fund distribution**.

2. Select the **Fund ID** from the drop-down list. Only **Active** funds appear in the list. Note: The use of acquisitions units may restrict which funds appear in this list. If an acquisition unit is set up to restrict view permissions, then only funds that are assigned to the same acquisition unit as the user will display in the drop-down list.  For more information, see See [Settings > Acquisition units]({{< ref "/settings_acquisition_units.md" >}}).

3. Select the **Expense class** from the list.

4. Enter the **Value** of the fund to be distributed.

5. Select the **%** or **$** to indicate whether the value is a percentage or price. The fund distribution saves once you save the order line.


#### Deleting a fund distribution

1. Find the fund distribution you want to delete.

2. Click the **trash can icon** next to the fund. The fund distribution is removed and is deleted once the order line is saved.


### Location

Location determines the effective location of the item once received. If you are ordering multiple items, you can assign them to different locations.


#### Adding a location


This field is required if the value of the **Create inventory** field includes Holdings. You can select from an existing holding for this title instance or add a new holding location for this title instance. See [E-resources details > Create inventory](#e-resources-details) for more information about the **Create inventory** field.

To add a location, follow these steps:

1. Click **Add location**.

2. If the **Create inventory** field for this purchase order line includes Holdings and this title instance already has holdings, the **Select holdings** drop-down list contains the list of existing holdings.  Select a **Name (code)** from the drop-down list.

3. If this title instance doesn’t already have holdings or you need to create a new holding location, click **Create new holdings for location**.

4. Enter a **Quantity physical** in the box.

5. Enter a **Quantity electronic** in the box.

6 Repeat as needed. The location saves and any new holdings are created once the order line is saved.


#### Deleting a location

1. Find the location you want to delete.

2. Click the **trash can icon** next to the location. The location is removed and is deleted once the order line is saved.


### Physical resource details

This section only appears if you select Physical resource or P/E mix under [Order format](#order-format).



*   **Material supplier.** The supplier of the item. The field defaults to the name of the vendor associated with the vendor code selected for the order. For more information, see [Purchase order](#purchase-order). To change the supplier, click **Organization look-up** to select an organization. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to select it. The organization is added to the Material supplier field.
*   **Receipt due.** The date that receipt of the material is due, or the date by which the material should be received.
*   **Expected receipt date.** The date the material is expected to be received. This date could fall before or after the Receipt due date.
*   **Create inventory.** Select the types of records you want to create in the Inventory app once the order is opened: Instance, holdings, items; Instance; Instance, holdings; None.  For information on configuring the default setting for this field, see [Settings > Orders > Inventory interactions]({{< ref "/settings_orders.md#settings--orders--inventory-interactions" >}}).
*   **Material type.** The type of material. If an item is created for the order, this material type value will appear on the item record in the Inventory app. Note: If the item material type is edited from the Inventory app, the order record material type value will not be updated.
*   **Volume.** A number to identify the specific volume being ordered within a series, set or collection. Currently, this information is stored only on the order.


### E-resources details

This section only appears if you select Electronic resource or P/E mix under [Order format](#order-format).



*   **Access provider.** The e-resource provider. The default value is set to the vendor organization. To change the provider organization, click **Organization look-up** to select a different organization. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to add it as the access provider.
*   **Activation status.** If the e-resource is activated, select the **Activation status** checkbox.
*   **Activation due.** The date the activation is due. Note: If you have entered an interval in the Expected activation interval field in the Vendor information section of the vendor record, the activation due date is populated based on the number of days you entered as the interval. For example, if you set the interval to 365, the Activation due field is populated with the date that falls one year from the date of order line creation. 
*   **Create inventory.** Select the types of records you want to create in the Inventory app once the order is opened. For information on configuring the default setting for this field based on [Order format](#order-format), see [Settings > Orders > Inventory interactions]({{< ref "/settings_orders.md#settings--orders--inventory-interactions" >}}).
*   **Material type.** The type of material.
*   **Trial.** If the e-resource is part of a trial, select the **Trial** checkbox.
*   **Expected activation.** The date activation of the e-resource is expected.
*   **User limit.** The number of users that can use the e-resource at once.
*   **URL.** A link to the e-resource.


#### Adding a volume

To add a volume, click **Add volume** and enter the volume number. The volume saves once the order line is saved.


#### Deleting a volume

To delete a volume, find the volume you want to delete and click the **trash can** icon. The volume is removed and is deleted once the order line is saved.


### Other resource details

This section only appears if you select Other under [Order format](#order-format).



*   **Material supplier.** The supplier of the item. The default value is the vendor selected on the order. To change the supplier, click **Organization look-up** to select a vendor. In the **Select Organization** dialog, find the organization using the search box and/or filters. Click the organization to add it as the Material supplier.
*   **Receipt due.** The date the receipt is due.
*   **Expected receipt date.** The date the item is expected to be received.
*   **Create inventory.** Select the types of records you want to create in the Inventory app once the order is opened. For information on configuring the default setting for this field, see [Settings > Orders > Inventory interactions]({{< ref "/settings_orders.md#settings--orders--inventory-interactions" >}}).
*   **Material type.** The type of material.


## Adding package titles to an order line

The package titles section of the purchase order line display appears only if the [package title checkbox](#item-details) was selected during order creation.  

1. [Find the order line to which you want to add package titles](#searching-for-order-lines) and select it.

2. In the **Package titles** section, click **Add**.

3. In the **Select instance** dialog, use the Search & Filter pane to find the package title.  Find the title using the search box and/or the filters.  Click the title to select it.  The title appears in the Package titles table list.



## Adding a note to an order line

1. [Find the order line to which you want to add a note](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, under **Notes**, click **New**.

3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app.

4. Enter a **Note title** in the box.

5. Optional: Enter any **Details** about the note in the box.

6. Click **Save & close**. The note is saved and appears in the Notes section in the PO Line details pane.


## Adding a tag to an order line

1. [Find the order line you want to tag](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click the **tag icon**.

3. In the **Tags** pane, either select a tag from the box or enter a tag.

4. Click the **X** on the Tags pane to close the pane and save the tag. The tag number updates to the number of tags applied to the order line.





## Searching for order lines

You can search for order lines in the **Search & filter** pane. Order lines is selected by default. To search for order lines, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:



*   **Keyword.** Searches through all fields in the drop-down list. This is the default search.
*   **Contributor.** The contributor to the item.
*   **PO line number.** The number for the purchase order line.
*   **Requester.** The requester of the item.
*   **Title or package name.** The title or package name of the item.
*   **Publisher.** The publisher of the item.
*   **Vendor account.** The vendor account your library is using to purchase the item.
*   **Vendor reference number.** The vendor reference number for this order line.
*   **Donor.** The donor of the item.
*   **Selector.** The selector of the item.
*   **Volumes.** The volume number ordered.
*   **Product ID.** The Product ID of the item.
*   **Product ID ISBN.** The ISBN of the item.

You can also search for order lines by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### Receipt status

In the **Search & filter** pane, click **Receipt status** and select any applicable filters:



*   **Awaiting receipt.** Order lines waiting to be received.
*   **Cancelled.** Order lines that were cancelled.
*   **Fully received.** Order lines that were fully received.
*   **Ongoing.** Order lines for an ongoing order.
*   **Partially received.** Order lines that were partially received.
*   **Pending.** Order lines that are pending.
*   **Receipt not required.** Order lines that do not require a receiving record.


### Payment status

In the **Search & filter** pane, click **Payment status** and select any applicable filters:



*   **Awaiting payment.** Order lines awaiting payment.
*   **Cancelled.** Order lines with cancelled payment.
*   **Fully paid.** Order lines that are fully paid.
*   **Ongoing.** Order lines for an ongoing order.
*   **Partially paid.** Order lines that are partially paid.  Note: Once or more invoices connected to a purchase order line have been “Approved,” the Payment status on the purchase order is changed to “Partially paid.”  See [Invoices > Approving an invoice]({{< ref "/invoices#approving-an-invoice" >}}).
*   **Payment not required.** Order lines that do not require payment.
*   **Pending.** Order lines with pending payment.


### Prefix

To search for order lines by purchase order number prefix, follow these steps.  For more information about creating **Prefix** values, see [Settings > Orders > Prefixes]({{< ref "/settings_orders.md#settings--orders--prefixes" >}})

1. In the **Search & filter** pane, click **Prefix**.

2. Select the prefix from the drop-down list. The search results appear in the Order lines pane.


### Suffix

To search for order lines by purchase order number suffix, follow these steps.  For more information about creating **Suffix** values, see [Settings > Orders > Suffixes]({{< ref "/settings_orders.md#settings--orders--suffixes" >}}).


1. In the **Search & filter** pane, click **Suffix**.

2. Select the suffix from the drop-down list. The search results appear in the Order lines pane.


### Acquisitions unit

To search for order lines assigned to a specific acquisitions unit, follow these steps:

1. In the **Search & filter** pane, click **Acquisitions unit**.

2. Select the acquisitions unit from the drop-down list. The search results appear in the Orders pane.




### Acquisition method

In the **Search & filter** pane, click **Acquisition method** and select any applicable filters:



*   **Approval plan.** Order lines acquired through an approval plan.
*   **Demand driven acquisitions (DDA).** Order lines acquired through DDA.
*   **Depository.** Order lines acquired through a depository arrangement, such as for government publications.
*   **Evidence based acquisitions (EBA).** Order lines acquired through EBA.
*   **Exchange.** Order lines acquired through an exchange with another library or institution.
Free
*   **Gift.** Order line for materials granted to the library as a gift.
*   **Internal transfer.** Order lines acquired through internal transfer.
*   **Membership.**  Order lines acquired through membership.
*   **Other.** Order lines acquired by some other method not listed.
*   **Purchase.** Order lines purchased by methods such as email or EDI.
*   **Purchase at vendor system.** Order lines purchased through an external vendor system, such as a website.
*   **Technical.** Order lines to track payments for technical expenses such as service orders or vendor processing fees. This value could also be used for items that have migrated from an external system.


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


### Expense class
To search for order lines that have a fund distribution expense class assignment, follow these steps:

1. In the **Search & filter** pane, click **Expense class**.

2. Select the expense class from the drop-down list. The search results appear in the Order lines pane.


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

1. In the **Search & filter** pane, click **Expected receipt date**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Receipt due

To search for order lines based on their receipt due date, follow these steps:

1. In the **Search & filter** pane, click **Receipt due**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


### Export date

To search for order lines based on their export date, follow these steps:

1. In the **Search & filter** pane, click **Export date**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Order lines pane.


## Viewing order line details

Once you search for an order line, the following information appears in the Order lines results pane:



*   **POL number.** Purchase order line number.
*   **Updated date.** The date the order line was last updated.
*   **Title or package name.** The title or package name of the item.
*   **Product ID.** The product ID of the item.
*   **Vendor reference number.** The vendor reference number for this order line.
*   **Fund code.** The fund code being used to purchase the item.
*   **Order status.** The status of the order: Pending, Open, Closed.

In the search results, click on an order line to view it. The PO Line details pane displays with additional information about the order line:

### Item details

See [Adding an order line to an order > Item details](#item-details) for more information on the fields displayed in this section of the purchase order line.



### Purchase order line

See [Adding an order line to an order > PO line details](#po-line-details) for more information on the fields displayed in this section of the purchase order line.



### Vendor

See [Adding an order line to an order > Vendor](#vendor) for more information on the fields displayed in this section of the purchase order line.


 
### Cost details

See [Adding an order line to an order > Cost details](#cost-details) for more information on the fields displayed in this section of the purchase order line.



### Fund Distribution


*   **Fund.** The fund to which you are distributing the amount elephant
*   **Expense class.** The expense class within the fund, to which you are distributing the amount. This field will only display information if the selected Fund ID has any associated Expense classes.
*   **Value.** The monetary value to apply to the fund, expressed as a percentage or currency value.
*   **Amount.** The amount of money committed to the fund.
*  **Initial encumbrance.**  The initial amount committed to the fund.
*   **Current encumbrance.** The current amount committed to the fund.  When an invoice transitions to **Approved** status and the **Release encumbrances** checkbox on an invoice line is checked, the **Current encumbrance** value becomes $0. Click on the value to hyperlink to the fund budget transaction detail view for the encumbrance.

### Location

This section displays information if the order line **Create inventory** setting is **Instance, holdings** or **Instance, holdings, item.**  See [Adding a location](#adding-a-location) for more information.



*   **Name(code).** Name and code of the location for this POL.
*   **Quantity physical.** Quantity ordered for this location for this POL.
*   **Quantity electronic.** Quantity ordered for this location for this POL.


### Electronic resource details

This section displays information if the order includes a POL with an order format of **Electronic** or **P/E mix.** See [Adding an order line to an order > E-resources details](#e-resources-details) for more information on the fields displayed in this section of the purchase order line.



### Physical resource details


This section displays information if the order includes a POL with an order format of **Physical**, **P/E mix,** or **Other.** See [Adding an order line to an order > Physical resource details](#physical-resource-details) for more information on the fields displayed in this section of the purchase order line.



### Notes

This section displays notes about the order.  See [Adding a note to an order line](#adding-a-note-to-an-order-line) for more information about creating notes.

*   **Date.**  Last updated date of the note.  Click on the column label **Date** to sort notes by ascending or descending order.
*   **Title and details.**  The note title and the details of the note. Click **Edit** to edit the note.  Click **Save & Close** to save your changes and click **X** to close the notes window.
*   **Type.** Note type.  See [Settings > Notes](../../settings/settings_notes/settings_notes#creating-a-note-type) for more information about note types.



### Related invoices


This section displays information about invoices and invoice lines that link to this POL. The invoice table list displays the following columns:


*   **Invoice line #.** The invoice number for the invoice that has an invoice line linked to this POL.  Click on the invoice number to open the Invoices app detail pane for the invoice.  Note: The link is to the general invoice, not to the specific invoice line that links to this POL.
*   **Invoice date.**  The vendor invoice date.
*   **Vendor name.**  The name of the vendor associated with the related invoice.
*   **Vendor invoice number.**  The vendor-provided identifier for the invoice related to this purchase order line.  
*   **Status.**  The status of the invoice: Open, Reviewed, Approved, Paid, or Cancelled.
*   **Quantity.** The quantity invoiced.  Note that the quantity shown is from the invoice line related to this order, not from the general invoice.
*   **Amount.** The total amount of the invoice line calculated as the sub-total plus adjustments.
*   **Comment.**  The invoice line comment.



### Related agreements

If the PO Line has been linked to an Agreement line in the Agreements app, a Linked Agreement Lines section will display in the PO Line details pane containing information about the linked Agreement Line.  See [Agreements > Adding a PO line to an agreement line](../../erm/agreements/#adding-a-purchase-order-line-to-an-agreement-line) for more information.



### Linked instance

This section displays information about inventory instances that link to this POL. The linked instance table list displays the following columns:


*   **Title.**  Title of the instance.
*   **Contributors.** Contributors of the instance.
*   **Publishers.** Publishers of the instance.
*   **Relation.** 



## Editing an order line

1. [Find the order line you want to edit](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Edit**.

3. Edit the order line.

4. Click **Save & close**. A confirmation message appears and the order line is updated.


## Changing an instance connection

To change the Inventory instance connection for a purchase order line, follow these steps:

1. [Find the order line you want to change](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Change instance connection.** The Select instance search window opens.

3. Find the title using the search box and/or the filters. Click the title to select it. The Change title window opens, “You have changed the title information of this purchase order line from (old title name) to (new title name). All related item records will be moved to the new instance.  How would you like to address the related Holdings? 

4. Click the **How to update holdings** drop-down list and select **Move**, **Find or create new**, or **Create new.**  

5. If you choose to create new holdings or find matching holdings based on the current location of items, FOLIO will ask you if you want to delete the abandoned Holdings where possible. A popup window will display, “This piece is connected to records in inventory.  After this edit, there will be no other pieces OR items connected to the related Holdings record. After making this change, would you like FOLIO to delete the holdings?” Select **Submit** to complete the instance connection change. Select either **Keep holdings** or **Delete holdings** to continue.

6. The confirmation message, “Order instance connection has been successfully updated.” displays.



## Receiving an order line

1. [Find the order line you want to receive](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Receive.** The order line opens in the Receiving app.

3. Follow the steps as outlined in the [Receiving app documentation](../receiving).


## Cancelling an order line

To cancel a purchase order, follow the steps below.  Cancelling an order line removes all encumbrances and item records associated with the order line.  Note: Only order lines with an order status of Open will display the cancel option in the Action menu.To cancel an entire purchase order, see [Cancelling an order](#cancelling-an-order). You can [reopen an order](#reopening-an-order) after performing the cancel action.


1. [Search for the order line you want to cancel](#searching-for-order-lines) and select it.

2. In the **PO Line detail** pane, select **Actions > Cancel**. A confirmation dialog asks, “Are you sure you want to cancel this purchase order line?”. Select Cancel order line to continue. A confirmation message appears.

Upon cancellation, the PO line **Receipt status** and **Payment status** values change to Cancelled. The fund distribution **Current encumbrance** amount is set to $0.00.  If there is an associated item in Inventory, the **Item status** value is set to Order closed.  The **POL receipt status** is set to Cancelled. In the PO line search results pane and on the Purchase order detail pane PO lines section, a red circle with a diagonal line icon appears beside the cancelled order line.


## Deleting an order line

1. [Find the order line you want to delete](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Delete**.

3. In the Delete order line dialog, click **Delete**. A confirmation message appears and the order line is deleted.


## Printing an order line

To print or save a PDF file containing a snapshot of key information about an order line, follow these steps:

1. [Search for the order line you want to print](#searching-for-order-lines) and select it.

2. In the **PO Line details** pane, click **Actions > Print order line**.  A print preview window will open.

3. To print the order line, adjust the printer settings as needed and select **Print**.

4. To save the PDF file without printing, open the **Destination** drop-down list and select **Save as pdf**.


## Viewing order line version history

1. [Search for the order line you want to view](#searching-for-an-order) and select it.

2. In the **PO Line details** pane, click the **clock icon** which is to the right of the tag icon.

3. A fourth pane titled **Version history** opens.  Versions are displayed in a card list sorted by date.  The following information is displayed for each version:  
*   **Source.**  The user who saved this version of the order line.
*   ***Current Version, Original Version,* or blank.**  This information displays only for the current and original versions of the order line.
*   **Changes.**  Displays the list of fields that were edited in this version.

4. To view the PO Line details pane for a version, either click on the underlined version date mm/dd/yyyy, hh:mm or the clock icon for the version you want to open.

5. The PO Line details pane displays the PO line data for that version.  Changes from the prior version are highlighted in yellow.

6. To close the version history view, click on the X in the top right of the **Version history** pane.  The fourth pane closes and the PO Line details pane displays the current order version.
