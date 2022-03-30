
---
title: "Receiving"
linkTitle: "Receiving"
date: 2022-03-21
weight: 50
tags: ["parenttopic"]
---

The Receiving app allows you to indicate that materials ordered through the creation of purchase order lines in the Orders app have been received by the library. 

Definition of terms related to the Receiving app:



*   **Package.** A purchase order that represents the acquisition of multiple titles. 
*   **Piece.** A subsection of a receiving title that is expected to be received. For example, if the ordered title is a journal subscription, then a piece of that title could be volume one of the journal.
*   **Receive.** To confirm that an all or part of an order has been delivered to the library.
*   **Receiving title.** The title of the ordered material. There may be one or more pieces attached.
*   **Unreceive.** To indicate that an order previously listed as “received” has not been delivered to the library.


## Permissions

The permissions listed below allow you to interact with the Receiving app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Receiving app or any related information.



*   **Receiving: View.** This permission allows the user to view receiving information for orders.
*   **Receiving: View, edit.** This permission allows the user to receive and edit pieces that are associated with a purchase order line.
*   **Receiving: View, edit, create.** This permission allows the user to view, edit, and create piece records. Note: Users can only create pieces if the related purchase order line has the [Manually add pieces for receiving](../orders/#po-line-details) checkbox selected.
*   **Receiving: View, edit, delete.** This permission allows the user to view, edit and delete pieces in the Receiving app.
*   **Settings (Receiving): Can view and edit settings.** This permission allows the user to manage receiving settings.


## Keyboard shortcuts
Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform essentials > Keyboard shortcuts]({{< ref "keyboardshortcuts.md" >}}) for more information.



## Creating a receiving title

Usually, an order consists of a receiving title that may have one or more pieces attached. For example, if you order a journal, the receiving title would be the journal name and the attached pieces would include each issue of the journal.

Purchase order lines can also be used to represent Packages. A package order line is created in the Orders app as a single purchase order line, but it can’t be located or received in Receiving because it represents the acquisitions of multiple titles (for example, a monographic standing order). In order to receive the titles that are included in a package, you must create the receiving titles in the Receiving app and link them to the Package POL. In this version of FOLIO, receiving titles must be connected to an instance in the Inventory app and a POL.

The **New** action allows you to create the receiving titles that come in a package so that they can be received by the library. This action also allows you to link existing instances to a package POL if you want to create a relationship between the instance and the order. In this case, the receiving title is searchable by its related POL number.



1. Click **New**.
2. In the **New title** window, in the **PO line details** section, click **POL number look-up**. 
3. In the **Select order lines** dialog, in the **Search & filter** box, enter the Package POL number.
4. Optional: Filter results using the filters in the **Select order lines** dialog.
5. Click **Search** and select the Package from the Search results. The Package POL is linked to the new title. 
6. Enter a **Title** for the item in the Package. 
7. Fill in the rest of the fields under Item details and PO line details. For more information on the fields and actions available in these sections, see the section descriptions below.
8. Click **Save & close**. A confirmation message appears, and the new receiving title is created and appears in the Receiving pane. It can now be edited, expected pieces can be added to it, and it can be received. You can locate the title by searching for the PO or POL number, the Package Name, the Title(s). 


### Item details



*   **Title.** The title of the material to be received. Note: For non-package POLs the receiving title is created automatically. For Package POLs you use the look-up to link an inventory instance to the Package POL and successfully add a receiving title.
*   **Publisher.** Publisher of the material.
*   **Publication date.** Date the material was published.
*   **Edition.** Edition of the material.
*   **Subscription from.** Start date of subscription (if applicable).
*   **Subscription to.** End date of subscription (if applicable).
*   **Subscription interval.** Number of days the subscription lasts (if applicable).
*   **Contributor.** The contributor of the material.
*   **Product ID.** An identifying number, such as ISBN or DOI.


#### Adding a contributor

Note: Adding a contributor is optional, but if you click **Add contributor**, you must enter an **Contributor** and **Contributor ID type** or delete the contributor in order to save the title.



1. Click **Add contributor**.
2. Enter the **Contributor**.
3. Select a **Contributor ID type** from the drop-down list. The Contributor is added once all changes are saved.


##### Deleting a contributor



1. Find the contributor you want to delete.
2. Click the **trash can icon**. The contributor is removed and is deleted once the changes are saved.


##### Adding a product ID and type

Note: Adding a product ID and type is optional, but if you click **Add product ID and type**, you must enter a **Product ID** and **Product ID type** or delete the product ID and type in order to save the title.



1. Click **Add product ID and type**.
2. Enter the **Product ID**.
3. Optional: Enter a **Qualifier**. For example, you may want to add _paperback_ as a Qualifier for an ISBN.
4. Select the **Product ID type** from the drop-down list. The product ID is added once all changes are saved.


##### Deleting a product ID and type



1. Find the product ID you want to delete.
2. Click the **trash can icon**. The product ID is removed and is deleted once the changes are saved.


#### PO line details



*   **POL number.** The purchase order line number. This can only be populated by using the **POL number look-up**. See [Creating a receiving title](#creating-a-receiving-title) for more information.
*   **Expected receipt date.** The date the material is expected to be received. This is automatically populated with information from Orders and cannot be modified.
*   **Receiving note.** Notes about receiving the material. This is automatically populated with information from Orders and cannot be modified. 
*   **Must acknowledge receiving note.** When this checkbox is selected, the **Receiving note** dialog appears when you attempt to receive the material. You must click **Continue** in order to receive the material.


### Linking an existing receiving title



1. Click **New**. 
2. In the **New title** window, click **Title look-up**.
3. In the **Select instance** dialog, in the **Search & filter** box, enter the title you want to link to the package.
4. Optional: Filter the results using the filters in the **Select instance** dialog.
5. Click **Search** and select the Title from the search results. This populates all of the fields that have already been filled out for the existing title.
6. Fill in the rest of the fields under **Item details**. See [Item details](#item-details) above for more information.
7. Click **POL number look-up**. 
8. In the **Select order lines** dialog, in the **Search & filter** box, enter the Package POL number. 
9. Optional: Filter the results using the filters in the **Select order lines** dialog.
10. Click **Search** and select the Package from the search results. 
11. Click **Save & close**. The existing title is now linked to the Package POL. It can be located by searching for its Title, original POL number, Package POL number, or Package name.


## Searching for a receiving title

You can search for  orders to be received in the **Search & filter** pane. To search for orders, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:



*   **Keyword.** Searches through all fields in the drop-down list. This is the default search.
*   **Title.** Title of the ordered material.
*   **Package.** The name of the package to which a receiving title is attached.
*   **Product ID.** Identifying number, typically assigned in Orders when the order was created.
*   **PO number.** The purchase order number.
*   **POL number.** The purchase order line number.
*   **Vendor reference number.** The vendor reference number for the purchase order line associated with this receiving title. 

You can also search for orders by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### Order status

In the **Search & filter** pane, click **Order status** and select any applicable filters:



*   **Closed.** Orders that are closed.
*   **Open.** Orders that are open.
*   **Pending.** Orders that are pending.

Only open orders can be received.


### Vendor

To search for orders from a specific vendor, follow these steps:



1. In the **Search & filter** pane, click **Vendor**.
2. Click **Organization look-up**.
3. In the **Select Organization** dialog, search for the vendor.
4. Select the vendor you want to filter by. The search results appear in the Receiving pane.


### Order type

In the **Search & filter** pane, click **Order type** and select any applicable filters:
 


*   **One-time.** One-time orders that are received within the year.
*   **Ongoing.** Ongoing orders that span multiple years.


### Material type

To search for orders of a specific material type, follow these steps:



1. In the **Search & filter** pane, click **Material type**.
2. Select the material type from the drop-down list. The search results appear in the Receiving pane. 


### Order format

In the **Search & filter** pane, click **Order format** and select any applicable filters:



*   **Electronic Resource.** Order lines containing an electronic resource.
*   **Physical Resource.** Order lines containing a physical resource.
*   **P/E Mix.** Order lines containing a physical and electronic mixed resource.
*   **Other.** Order lines containing a different type of resource.


### Tags

To search for orders assigned specific tags, follow these steps:



1. In the **Search & filter** pane, click **Tags**.
2. Select the tag(s) from the drop-down list. The search results appear in the Receiving pane.


### Location

To search for orders assigned to a specific permanent location, follow these steps:



1. In the **Search & filter** pane, click **Location**.
2. Click **Location look-up**.
3. In the **Select permanent location** dialog, select an **Institution**, **Campus**, **Library**, and **Location** using the drop-down lists.
4. Click **Save and close**. The search results appear in the Receiving pane.


### Receiving status

In the **Search & filter** pane, click **Receiving status** and select any applicable filters:



*   **Expected.** The order is expected to arrive.
*   **Received.** The order has arrived and been received. 


### Acquisition units

To search for orders assigned to a specific acquisition unit, follow these steps:



1. In the **Search & filter** pane, click **Acquisition units**.
2. Select the acquisition unit(s) from the drop-down list. The search results appear in the Receiving pane. 

Note: The Receiving app does not currently support restricting user permissions based on acquisition unit.  


### Received date

To search by date received from received pieces, follow these steps:


1. In the **Search & filter** pane, click **Received date**.
2. Enter a start date in the **From** box and an end date in the **To** box.
3. Click **Apply**. The search results appear in the Receiving pane.  

### Expected receipt date

To search by the expected receipt date from expected pieces, follow these steps:


1. In the **Search & filter** pane, click **Expected receipt date**.
2. Enter a start date in the **From** box and an end date in the **To** box.
3. Click **Apply**. The search results appear in the Receiving pane. 


### Receipt due

To search by the receipt due date from the order purchase order line, follow these steps:


1. In the **Search & filter** pane, click **Receipt due**.
2. Enter a start date in the **From** box and an end date in the **To** box.
3. Click **Apply**. The search results appear in the Receiving pane. 



To clear all filters, go to the **Search & filter** pane and click **Reset all**.


## Viewing receiving titles details

Receiving title details can be viewed by any user with the [Receiving: View permission](#permissions). 


### Search results

Once you search for a receiving title, the following information appears in the Receiving pane:



*   **Title.** The title of the material to be received.
*   **Expected receipt date.** The date the material is expected to be received.
*   **Package.** The name of the package the receiving title is associated with (if applicable).
*   **POL number.** The purchase order line number.  Click on this number to open the related POL in the Orders app.
*   **Receiving note.** Notes about receiving the material.
*   **Locations.** The location(s) to which the order is assigned.
*   **Order status.** The status of the order, either open, closed, or pending.

In the search results, click on a receiving title to view it. The receiving title pane displays with additional information about the title.


### Title information

This section displays the material details defined under [Creating a receiving title](#creating-a-receiving-title). 


### POL details

This section displays the details of the purchase order lines.



*   **POL number.** The purchase order line number.
*   **Expected receipt date.** The date the piece is expected to be received.
*   **Receiving note.** Notes about receiving the material.
*   **Order type.** The type of order, either one-time or ongoing.
*   **Vendor.** The organization from which the material was purchased. 
*   **Material supplier.** The supplier of the material.
*   **Requester.** The person who requested the item"
*   **Rush.** This flag indicates whether rush handling should be applied to this order



### Expected

This section displays the pieces of the order that are still expected to be received. See [Adding an expected piece](#adding-an-expected-piece) for more information.


### Received

This section displays the pieces of the order that have been received. See [Receiving an order](#receiving-an-order) for more information.


## Editing receiving title information



1. Find the receiving title you want to edit and select it.
2. In the receiving title pane, click **Edit**.
3. In the receiving title window, you can modify [Item details](#item-details) and [PO line details](#po-line-details). Note: The **Title look-up** and **POL number look-up** functions are different in editing mode. See details below.
4. Fill out the desired fields.
5. Click **Save & close.** A confirmation message appears and the receiving title is updated.


### Title look-up

The **Title look-up** function replaces the current title with a title that already exists as an instance in Inventory. This doesn't replace existing publishing or subscription details, but it does add any contributors or product IDs associated with the new title. Once you make this change, the material is longer searchable by the original title.



1. Click **Title look-up**. 
2. In the **Select instance** dialog, in the **Search & filter** box, enter part or all of the title.
3. Optional: Filter your results using the filters in the **Select instance** dialog.
4. Click **Search** and select the title from your search results. The title updates once all changes are saved.


### POL number look-up

The **POL number look-up** function replaces the current POL number with a POL number that already exists in Inventory. This doesn't replace any item details, only the POL number. Once you make this change, the material is no longer searchable by the original POL number.



1. Click **POL number look-up**.
2. In the **Select order lines** dialog, in the **Search & filter** box, enter the POL number.
3. Optional: Filter your results using the filters in the **Select order lines** dialog.
4. Click **Search** and select the POL number from your search results. The POL number updates once all changes are saved.


## Adding an expected piece

An expected piece is a part of an order you expect to receive. For example, if you order a magazine subscription, you might expect to receive 12 different pieces during the year. If you order a book that comes with supplemental materials such as a CD or map, you might expect to receive multiple pieces with the order. The order does not initially display each piece that comes with it. Adding expected pieces to an order allows you to track which pieces of the order have been received and which are still expected. 

Expected pieces can be found under the Expected section of an order. Expected pieces can also be received from this section. See [Quick receive](#quick-receive) for more information.

Note: To add an expected piece to an order, the **Manually add pieces for receiving** checkbox must have been selected in the [Order line](../orders/#po-line-details) when the order was created.



1. Find the receiving title to which you want to add a piece and select it.
2. In the **Expected** section, click **Add piece**.
3. In the **Add piece** dialog, fill out desired fields. See below for more information.
4. Click **Save & close**. The new piece is displayed under the Expected section.


### Add piece



*   **Caption.** Enter a caption for the piece. 
*   **Expected receipt date.** The date the piece is expected to be received.
*   **Select location.** The location, as selected in Orders. You can change the location by clicking [Assign a different location](#assign-a-different-location). 
*   **Piece format.**  The order format, as selected in Orders. It can not be modified. 
*   **Comment.** Enter any comments about the piece.
*   **Create item.** Selecting the **Create item** checkbox connects the new piece to an instance in Inventory. This option is only available for pieces linked to an order with the purchase order line **Create inventory** value set to “Instance/holding/item.” . Note: In order to create an item in Inventory, a default instance status, instance type, and loan type must already be set up in Settings.  See [Settings > Orders]({{< ref "/settings_orders.md" >}}) for more information.*   **Supplement.** Selecting the **Supplement** checkbox indicates that the piece is a supplementary material such as a CD or a map. 


#### Assign a different location

Note: When the system is told to create a holding, a holding is created for the chosen location. If the location is changed for a specific piece and no holding exists for that location already, a new holding is created.



1. In the **Add piece** dialog, click **Assign a different location**. 
2. In the **Select permanent location** dialog, select an **Institution**, **Campus**, **Library**, and **Location**.
3. Click **Save and close**. The changes appear in the **Select location** field of the **Add piece** dialog. The location is confirmed once the piece is saved. 


## Editing an expected or received piece

To edit an expected or received piece, make sure the correct receiving title is displayed by using the **Search & filter** pane and look under the Expected and Received sections of the title.


### Editing an expected piece



1. Select the piece you want to edit.
2. In the **Edit piece** dialog, the same fields as the [Add piece](#adding-an-expected-piece) dialog appear. See above for more information.
3. Fill out the desired fields.
4. Click **Save & close.** A confirmation message appears and the piece is updated.


### Editing a received piece



1. Select the piece you want to edit. 
2. In the **Edit piece** dialog, the same fields as the **Add piece** dialog appear. See above for more information. Note: You cannot make changes to **Location**, **Piece format**, or **Create item** when editing a received piece. If the **Create item** checkbox was selected, it says **Connected** in place of **Create item**. If the checkbox was cleared, it still displays the **Create item** box, but the checkbox will be grayed out.
3. Fill out the desired fields.
4. Click **Save & close**. A confirmation message appears and the piece is updated.


## Deleting an expected or received piece

To delete an expected or received piece, make sure the correct receiving title is displayed by using the **Search & filter** pane and look under the Expected and Received sections of the title.


### Deleting an expected piece



1. Select the piece you want to edit.
2. In the **Edit piece** dialog, the same fields as the [Add piece](#adding-an-expected-piece) dialog appear. See above for more information.
3. Click **Delete.** A confirmation message appears, click **Confirm** and the piece is deleted.


### Deleting a received piece



1. Select the piece you want to delete. 
2. In the **Edit piece** dialog, the same fields as the **Add piece** dialog appear. See above for more information. 
3. Click **Delete.** A confirmation message appears, click **Confirm** and the piece is deleted.



## Receiving a piece

Receiving a piece confirms that the ordered material arrived at the library.

There are two ways to receive a piece:



*   Quick Receive
*   Receive


### Quick receive

Quick receive can be used when you want to receive one piece of an order at a time.



1. Using the **Search & filter** pane, find the receiving title from which you want to receive pieces and select it.
2. In the Expected section of the order, click on the piece you want to receive. 
3. In the **Edit piece** dialog, make any necessary edits to the piece.
4. Click **Quick receive**. The piece is now displayed under the Received section. 


### Receive

The Receive function can be used to receive multiple pieces at once. 



1. Using the **Search & filter** pane, find the receiving title you want to receive and select it.
2. In the Expected section of the receiving title, click **Receive**.
3. In the receiving title window, all of the expected pieces are displayed. Here, you can make changes to the pieces. See below for more information.
4. Select the checkbox beside each piece you want to receive. Note: If you want to receive all of the pieces, click the top checkbox.
5. Click **Receive**. The selected pieces are now displayed under the Received section.


#### Receive



*   **Caption.** Create or change the caption of the piece. 
*   **Barcode.** Create a barcode for the piece. You can only add a barcode if the piece is already **Connected** to an instance in Inventory, or if the **Create item** checkbox is selected.
*   **Piece format.** The order format, as selected in Orders. It can not be modified. 
*   **Request.** Information from the Requests app about this ordered material. If there is a request open for the piece, this field says “Yes”. 
*   **Comment.** Enter any comments about the piece.
*   **Select location.** The location, as selected in Orders. You can change the location by clicking [Assign a different location](#assign-a-different-location).
*   **Item status.** This field is populated with the item status that will appear in Inventory after the item is received. The item status will change from “On order” to “In process.”
*   **Call number.** Enter the call number for the piece. You can only add a call number if the piece is already **Connected** to an instance in Inventory, or if the **Create item** checkbox is selected.
*   **Create item.** Selecting the **Create item** checkbox links the new piece to an instance in Inventory. This option is onlyavailable for pieces linked to an order with the purchase order line **Create inventory** value set to “Instance/holding/item.” Note: In order to create an item in Inventory, a default instance status, instance type, and loan type must already be set up in Settings.  See [Settings > Orders]({{< ref "/settings_orders.md" >}}) for more information.



## Unreceiving an order



1. In the Received section of the receiving title, click **Unreceive**.
2. In the receiving title window, all of the received pieces are displayed. 
3. Optional: Make changes to the **Comment** field.
4. Select the checkbox beside each piece you want to unreceive. Note: If you want to unreceive all of the received pieces, select the top checkbox.
5. Click **Unreceive**. The selected pieces are now displayed under the Expected section. 

You can also open the Receiving app from the action menu of an open order by clicking **Receive**.
