---
title: "Receiving"
linkTitle: "Receiving"
date: 2024-05-08
weight: 50
tags: ["parenttopic"]
---

The Receiving app allows you to indicate that materials ordered through the creation of purchase order lines in the Orders app have been received by the library. You can open the app directly from the FOLIO app bar or from the Orders app by clicking **Receive** on the action menu of an order that has an **Open** or **Closed** status.


Definition of terms related to the Receiving app:



*   **Package.** A purchase order that represents the acquisition of multiple titles. 
*   **Piece.** A subsection of a receiving title that is expected to be received. For example, if the ordered title is a journal subscription, then a piece of that title could be volume one of the journal.
*   **Receive.** To confirm that an all or part of an order has been delivered to the library.
*   **Receiving title.** The title of the ordered material. There may be one or more pieces attached.
*   **Unreceive.** To indicate that an order previously listed as “received” has not been delivered to the library.


## Permissions

The permissions listed below allow you to interact with the Receiving app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Receiving app or any related information.



*   **Receiving: Assign acquisition units to new receiving title.** This permission allows the user to apply an acquisition unit to a new title created in the Receiving app.
*   **Receiving: Export search results.** This permission allows the user to export receiving search results in .csv format.
*   **Receiving: Manage acquisition units.** This permission allows the user to add or update acquisition units on receiving records that may have been inherited from corresponding order records.
*   **Receiving: View.** This permission allows the user to view receiving information for orders.
*   **Receiving: View, edit.** This permission allows the user to receive and edit pieces that are associated with a purchase order line.
*   **Receiving: View, edit, create.** This permission allows the user to view, edit, and create piece records.
*   **Receiving: View, edit, delete.** This permission allows the user to view, edit and delete pieces in the Receiving app.



## Keyboard shortcuts
Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform essentials > Keyboard shortcuts](../../platform-essentials/keyboard-shortcuts/keyboardshortcuts/) for more information.



## Creating a receiving title

Usually, an order consists of a receiving title that may have one or more pieces attached. For example, if you order a journal, the receiving title would be the journal name and the attached pieces would include each issue of the journal.

Purchase order lines can also be used to represent Packages. A package order line is created in the Orders app as a single purchase order line, but it can’t be located or received in the Receiving app because it represents the acquisition of multiple titles (for example, a monographic standing order). In order to receive the titles that are included in a package, you must either [add the titles to the purchase order line](../orders/#adding-package-titles-to-an-order-line) or create the receiving titles in the Receiving app and link them to the Package POL.

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



*   **Title.** The title of the material to be received. Note: For non-package POLs the receiving title is created automatically. For Package POLs you can use the **Title look-up** to link a pre-existing inventory instance to the Package POL or you may add a title manually by entering it in the text field. If manually adding a title, the Inventory record(s) will be created according to the **Create inventory** setting on the POL after the first piece is added to the receiving title. You will see the title appear in the **Package titles** accordionon the POL.
*   **Publisher.** Publisher of the material. If linking to a pre-existing instance record, this field may be pre-filled based on the data from the instance record.
*   **Publication date.** Date the material was published. If linking to a pre-existing instance record, this field may be pre-filled based on the data from the instance record.
*   **Edition.** Edition of the material. If linking to a pre-existing instance record, this field may be pre-filled based on the data from the instance record.
*   **Subscription from.** Start date of subscription (if applicable).
*   **Subscription to.** End date of subscription (if applicable).
*   **Subscription interval.** Number of days the subscription lasts (if applicable).
*   **Claiming active.** If this title is eligible for claiming with the vendor, check this box. This will activate the **Claiming interval** field.
*   **Claiming interval.** This field becomes active after checking **Claiming active**. Enter the desired interval in days.
*   **Acquisition units.** The acquisition units assigned to the title.
*   **Contributor.** The contributor of the material. If linking to a pre-existing instance record, this field may be pre-filled based on the data from the instance record.
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



*   **POL number.** The purchase order line number for the package. This can only be populated by using the **POL number look-up**. See [Creating a receiving title](#creating-a-receiving-title) for more information.
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

You can search for orders to be received in the **Search & filter** pane. To search, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:



*   **Keyword.** Searches through all fields in the drop-down list. This is the default search.
*   **Title (Receiving titles).** Title of the ordered material.
*   **Package (POL Package name).** The name of the package to which a receiving title is attached.
*   **Product ID (For the specific title or the package).** Identifying number, assigned in Orders when the order was created or when the receiving title was created/linked to a package.
*   **PO number.** The purchase order number.
*   **POL number.** The purchase order line number.
*   **Vendor reference number.** The vendor reference number for the purchase order line associated with this receiving title. 

You can also search for orders by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### Order status

In the **Search & filter** pane, click **Order status** and select any applicable filters:



*   **Closed.** Orders that are closed.
*   **Open.** Orders that are open.
*   **Pending.** Orders that are pending.

Note: Receiving is only possible if an order is in "Open" or "Closed" status. If attempting to receive against a closed order, a pop-up window will appear that says "The order linked to this Title is closed. Are you sure you want to receive this piece(s)?"


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


### Acquisition unit

To search for titles assigned to a specific acquisition unit, follow these steps:



1. In the **Search & filter** pane, click **Acquisition units**.
2. Select the acquisition unit(s) from the drop-down list. The search results appear in the Receiving pane. 


### Rush

In the **Search & filter** pane, click **Rush** and select **Yes** or **No.**
 

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

### Created by

To search for receiving title created by a specific user, follow these steps:

1. In the **Search & filter** pane, click **Created by**.

2. Click **Find User**.

3. In the **Select User** dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Receiving pane.


### Date created

To search for receiving titles based on the date they were created, follow these steps:

1. In the **Search & filter** pane, click **Date created**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Receiving pane.

### Updated by

To search for receiving titles updated by a specific user, follow these steps:

1. In the **Search & filter** pane, click **Updated by**.

2. Click **Find User**.

3. In the **Select User** dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Receiving pane.


### Date updated

To search for receiving titles based on the date they were updated, follow these steps:

1. In the **Search & filter** pane, click **Date updated**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Receiving pane.

### Created by (Piece)

To search for pieces created by a specific user, follow these steps:

1. In the **Search & filter** pane, click **Created by (Piece)**.

2. Click **Find User**.

3. In the **Select User** dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Receiving pane.


### Date created (Piece)

To search for pieces based on the date they were created, follow these steps:

1. In the **Search & filter** pane, click **Date created (Piece)**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Receiving pane.

### Updated by (Piece)

To search for pieces updated by a specific user, follow these steps:

1. In the **Search & filter** pane, click **Updated by (Piece)**.

2. Click **Find User**.

3. In the **Select User** dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Receiving pane.


### Date updated (Piece)

To search for pieces based on the date they were updated, follow these steps:

1. In the **Search & filter** pane, click **Date updated (Piece)**.

2. Enter a start date in the **From** box and an end date in the **To** box.

3. Click **Apply**. The search results appear in the Receiving pane.

To clear all filters, go to the **Search & filter** pane and click **Reset all**.


## Exporting search results

To export a file of title and/or piece information in comma-separated values (.csv) format, follow these steps:

In the **Search & filter** pane, use the search and filter options to select a set of receiving records.

In the search results pane, click **Actions** and select,**Export results (CSV)**.

In the **Export settings** dialog, the following message will display: “This export could take a few minutes. If you reload or close the page the export will not be completed. Once the file is ready it could take another minute for your browser to finish downloading the file. You can continue to work with titles and pieces in a different browser tab if needed.”

To export all fields from the title and piece leave the **Title fields** and **Piece fields** default values set to **All**.  To select specific fields to export, click on the radio button below “All” and use the drop-down list to select the specific fields to export.

Click **Export**. The file downloads to your local download location.


### Title fields

*   Title
*   Publisher
*   Published date
*   Edition
*   Subscription from
*   Subscription to
*   Contributors
*   Product IDs
*   Order type
*   Vendor
*   Requester
*   Rush
*   Created by
*   Created on
*   Updated by
*   Updated on

### Piece fields

*   Display summary
*   Copy number
*   Enumeration
*   Chronology
*   Barcode
*   Call number
*   Piece format
*   Expected receipt date
*   Comment
*   Location
*   Supplement
*   Display on holding
*   Item HRID
*   Receiving status
*   Internal note
*   External note
*   Created by (Piece)
*   Created on (Piece)
*   Updated by (Piece)
*   Updated on (Piece)



## Viewing receiving titles details

Receiving title details can be viewed by any user with the permission [Receiving: View](#permissions).


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

This section displays the material details defined under [Item details](#item-details). 


### POL details

This section displays the details of the purchase order lines.



*   **POL number.** The purchase order line number.
*   **Expected receipt date.** The date the piece is expected to be received.
*   **Receiving note.** Notes about receiving the material.
*   **Order type.** The type of order, either one-time or ongoing.
*   **Vendor.** The organization from which the material was purchased. 
*   **Access provider.**  The name of the access provider organization.  This field only displays for orders with an order format set to **Electronic resource** or **P/E Mix.**
*   **Material supplier.** The name of the material supplier organization.  This field only displays for orders with an order format set to **Physical resource** or **P/E Mix.** 
*   **Requester.** The person who requested the item.
*   **Receiving workflow.** The receiving workflow from the corresponding purchase order line, either 'Synchronized order and receipt quantity' or 'Independent order and receipt quantity'.
*   **Rush.** This flag indicates whether rush handling should be applied to this order.



### Expected

This section displays a table list of the pieces of the order that are still expected to be received. See [Adding an expected piece](#adding-an-expected-piece) for more information.  To customize the columns that appear in the table list, follow these steps:

1. In the Expected section of the receiving title, select the **Actions** button.  
2. The listed columns are all selected by default under **Show columns** in the Actions list.  
3. Deselect any columns that you want to remove from the Expected table list.
4. Your selections persist until you logout of FOLIO.



### Received

This section displays a table list of the pieces of the order that have been received. To customize the columns that appear in the table list, follow these steps:

1. In the Received section of the receiving title, select the **Actions** button.  
2. The listed columns are all selected by default under **Show columns** in the Actions list.  
3. Deselect any columns that you want to remove from the Received table list.
4. Your selections persist until you logout of FOLIO.



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

The **POL number look-up** function replaces the current POL number with a POL number that already exists in Orders. This doesn't replace any item details, only the POL number. Once you make this change, the material is no longer searchable by the original POL number.



1. Click **POL number look-up**.
2. In the **Select order lines** dialog, in the **Search & filter** box, enter the POL number.
3. Optional: Filter your results using the filters in the **Select order lines** dialog.
4. Click **Search** and select the POL number from your search results. The POL number updates once all changes are saved.


## Adding an expected piece

An expected piece is a part of an order you expect to receive. For example, if you order a monthly magazine subscription, you might expect to receive 12 different pieces during the year. If you order a book that comes with supplemental materials such as a CD or map, you might expect to receive multiple pieces with the order. 

The **Receiving workflow** selected on the purchase order line determines the behavior of expected pieces. When the **Receiving workflow** is set to 'Synchronized order and receipt quantity', as soon as the order is opened, the Receiving app will automatically create pieces to match the quantity on the purchase order line. Additional pieces may be added to the receiving title, but this will increase the quantity on the purchase order line and may impact the estimated cost of that line and any related encumbrances. A red warning displays on these receiving titles to alert staff users to this behavior.

When the **Receiving workflow** is set to 'Independent order and receipt quantity', as soon as the order is opened, no pieces will be created automatically. A staff user can create any necessary pieces and this will not impact the quantity specified on the purchase order line.

Expected pieces can be found  in the Expected section of a Receiving app record. Expected pieces can also be received from this section. See [Quick receive](#quick-receive) for more information.

1. Find the receiving title to which you want to add a piece and select it.
2. In the **Expected** section, click **Actions**.  In the action menu, select **Add piece**.
3. Add information about the piece in the **Add piece** dialog. See below for more information about each field.
4. To add another piece after saving or quick receiving this piece, click the dropdown next to **Save & close** and select **Save and create another**. After you save & close or quick receive, the **Add piece** dialog form is populated with details from the previous piece form. 
5. To save and receive the piece simultaneously, click the dropdown next to **Save & close** and select **Quick receive**.  The new piece is saved and listed in the Received section.
6. To save without adding another piece, Click **Save & close**. The new piece is saved and listed in the Expected section.


### Add piece
#### Piece details


*   **Display summary.** A description of a piece that can be used for public display. If this field is added/updated, the value displays on the corresponding field in the item record. Note: in previous releases, this field was labeled **Caption**.
*   **Copy number.** The copy number of the piece. If this field is added/updated, the value displays on the corresponding field in the item record.
*   **Enumeration.** The enumeration of the piece which indicates the sequential numeric and/or alphabetic designation used by a publisher to identify the individual bibliographic or physical parts and to show the relationship of each part to the bibliographic unit as a whole. If this field is added/updated, the value displays on the corresponding field in the item record.
*   **Chronology.**  The chronology of the piece, such as “year”, “month.” If this field is added/updated, the value displays on the corresponding field in the item record.
*   **Piece format.**  The order format, as selected in Orders. 
*   **Expected receipt date.** The date the piece is expected to be received.
*   **Comment.** Comments or notes about the piece.
*   **Internal note.** A note for staff related to the piece.
*   **External note.** A note meant to relay information to a vendor related to a claim.
*   **Create item.** Select the **Create item** checkbox to connect the new piece to an item in Inventory. This option is only available for pieces linked to an order with the purchase order line **Create inventory** value set to “Instance, holdings, item.” . Note: In order to create an item in Inventory, a default instance status, instance type, and loan type must already be set up in Settings.  See [Settings > Orders](../../settings/settings_orders/settings_orders/) for more information.
*   **Supplement.** Select the **Supplement** checkbox to indicate that the piece is supplementary material such as a CD or a map. 
*   **Display on holdings.**  Select the **Display on holdings** checkbox to indicate that information about this piece should be displayed in the Inventory app in the Acquisition section of the holdings record.  See [Inventory > Acquisition](../../inventory/#acquisition) for more information.
*   **Order line locations.**  A list of locations that were selected on the purchase order line.
*   **Select holdings.**  In the drop down list, select the location for this piece. You can change the location by clicking [Create new holdings for location](#create-new-holdings-for-location). 

#### Create new holdings for location

Note: If the location is changed for a specific piece and no holding exists for that location already, a new holdings record is created.

1. In the **Add piece** dialog, click **Create new holdings for location**. 
2. In the **Select locations** dialog, select an **Institution**, **Campus**, **Library**, and **Location**.
3. Click **Save and close**. The changes appear in the **Select holdings** field of the **Add piece** dialog. The location is confirmed once the piece is saved.

#### Item details
Note: This section of the **Add piece** modal becomes active as soon as the **Create item** xheckbox is selected.

*   **Barcode.** The item barcode. This value must be unique and will update the item record if filled in.
*   **Call number.** The item level call number. This will update the item record if filled in.
*   **Accession number.** The item's accession number. This will update the item record if filled in.
*   **Item status.** The current status of the associated item record. Expected pieces typically have a status of 'On order', which updated to 'In process' once the piece is received.
*   **Request.** Displays a count of requests for the item, if applicable.


## Editing an expected or received piece

To edit an expected or received piece, make sure the correct receiving title is displayed by using the **Search & filter** pane and look under the Expected and Received sections of the title.


### Editing an expected piece



1. Select the piece you want to edit.
2. In the **Edit piece** dialog, the same fields as the [Add piece](#adding-an-expected-piece) dialog appear. See above for more information. The **Edit piece** modal also displays a **Status log** for the piece.
3. Edit the contents of fields, as needed.
4. To add another piece after saving or quick receiving this piece, click the dropdown next to **Save & close** and select **Save and create another**. After you save & close or quick receive, the **Add piece** dialog form is populated with details from the previous piece form. 
5. To save and receive the piece, click the dropdown next to **Save & close** and select **Quick receive**.  
6. To save without adding another piece, Click **Save & close**. A confirmation message appears and the piece is updated.


### Editing a received piece



1. Select the piece you want to edit. 
2. In the **Edit piece** dialog, the same fields as the **Add piece** dialog appear. See above for more information. Note: You cannot make changes to **Piece format** or **Create item** when editing a received piece. If the **Create item** checkbox was selected when the piece was created, the text **Connected** is displayed. If the checkbox was cleared, it still displays the **Create item** box, but the checkbox is not editable. 
3. Fill out the desired fields.
4. Click **Save & close**. A confirmation message appears and the piece is updated.


## Deleting an expected or received piece

To delete an expected or received piece, make sure the correct receiving title is displayed by using the **Search & filter** pane and look under the Expected and Received sections of the title.


### Deleting an expected piece



1. Select the piece you want to delete.
2. In the **Edit piece** dialog, the same fields as the [Add piece](#adding-an-expected-piece) dialog appear. See above for more information.
3. Click the dropdown next to **Save & close** and select **Delete.** A confirmation message appears, click **Confirm** and the piece is deleted. Note: if connected to an item, the item record will also be deleted.


### Deleting a received piece



1. Select the piece you want to delete. 
2. In the **Edit piece** dialog, the same fields as the **Add piece** dialog appear. See above for more information. 
3. Click the dropdown next to **Save & close** and select **Delete.** A confirmation message appears, click **Confirm** and the piece is deleted. Note: if connected to an item, the item record will not be deleted since it is no longer listed as 'On order'.



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
4. Click the dropdown next to **Save & close** and select **Quick receive**. The piece is now displayed under the Received section. 


### Receive

The Receive function can be used to receive multiple pieces at once. 



1. Using the **Search & filter** pane, find the receiving title you want to receive and select it.
2. In the Expected section of the receiving title, click the **Actions** button and select **Receive**.
3. A receiving note popup window will display if the purchase order line field **[Must acknowledge receiving note](../orders/#item-details)** is checked.  Click **Continue** to close the popup window.
4. In the receiving title window, all of the expected pieces are displayed. Here, you can make changes to the pieces. See below for more information.
5. Select the checkbox beside each piece you want to receive. Note: If you want to receive all of the pieces, click the top checkbox.
6. Click **Receive**. The selected pieces are now displayed under the Received section.


#### Receiving screen

*   **Display summary.** A description of a piece that can be used for public display. If this field is added/updated, the value displays on the corresponding field in the item record. Note: in previous releases, this field was labeled **Caption**.
*   **Enumeration.** The enumeration of the piece which indicates the sequential numeric and/or alphabetic designation used by a publisher to identify the individual bibliographic or physical parts and to show the relationship of each part to the bibliographic unit as a whole. If this field is added/updated, the value displays on the corresponding field in the item record.
*   **Chronology.**  The chronology of the piece, such as “year”, “month.” If this field is added/updated, the value displays on the corresponding field in the item record.
*   **Copy number.** The copy number of the piece. If this field is added/updated, the value displays on the corresponding field in the item record.
*   **Accession number.** The item's accession number. This will update the item record if filled in.
*   **Barcode.** The item barcode. This value must be unique and will update the item record if filled in.
*   **Piece format.**  The order format, as selected in Orders.
*   **Expected receipt date.** The date the piece is expected to be received.
*   **Request.** Displays a count of requests for the item, if applicable.
*   **Comment.** Comments or notes about the piece.
*   **Select location.** A dropdown menu to select the holdings location to associate with the piece. If the holdings location does not yet exist, click [Create new holdings for location](#create-new-holdings-for-location).
*   **Item status.** The current status of the associated item record. Expected pieces typically have a status of 'On order', which updated to 'In process' once the piece is received.
*   **Call number.** The item level call number. This will update the item record if filled in.
*   **Create item.** This will show as 'Connected' and provide a clickable link to the item in Inventory, if applicable.
*   **Display on holdings.**  Select the **Display on holdings** checkbox to indicate that information about this piece should be displayed in the Inventory app in the Acquisition section of the holdings record.  See [Inventory > Acquisition](../../inventory/#acquisition) for more information.
*   **Supplement.** Select the **Supplement** checkbox to indicate that the piece is supplementary material such as a CD or a map. 



## Unreceiving an piece



1. In the Received section of the receiving title, click **Actions**.  In the action menu, select **Unreceive.**
2. In the receiving title window, all of the received pieces are displayed in a table list containing barcode, display summary, enumeration, piece format, request, comment, select location, and call number. 
3. Optional: Make changes to the **Comment** field.
4. Select the checkbox beside each piece you want to unreceive. Note: If you want to unreceive all of the received pieces, select the top checkbox.
5. Click **Unreceive**. The selected pieces are now displayed under the Expected section.

## Marking a piece unreceivable
If a piece will not arrive at the library (e.g. the title is out of print) and will never be received by the library, use the following steps to mark the piece unreceivable:
1. Using the **Search & filter** pane, find the receiving title you want to mark unreceivable and select it.
2. In the Expected section of the receiving title, click on the piece.
3. The **Edit piece** modal will appear.
4. Click on the dropdown menu next to **Save & close** and select **Unreceivable**.
5. The piece status will update to 'Unreceivable' and the piece will move to the **Unreceiveable** accordion on the receiving record.

Note: if this action is performed in error or the piece becomes receivable, you can click on the piece in the **Unreceivable** accordion and, in the **Edit piece** modal, click on the dropdown menu next to **Save & close** and select **Expect**. This will move the piece back to the **Expected** accordion and update the piece status accordingly.

## Claiming a piece
If a piece has not arrived from the vendor by the expected receipt date or is damaged/unacceptable upon arrival, the library may wish to file a claim with the vendor to seek replacement or a refund. 

A library may configure a **Claiming interval** on the Organization record for the vendor. A **Claiming interval** represents the number of days after a piece's **Expected receipt date** when an unreceived piece will be marked **Late**. If a **Claiming interval** is entered on the Organization record, this will appear as the default claiming interval on purchase order lines associated with the vendor, but the default may be changed when the **Claiming active** box is checked on the purchase order line. The interval may also be changed on each receiving title; for example, if a package POL has mutliple titles that should each have different claiming intervals assigned.

Once a piece is marked **Late**, a library may wish to send a claim to the vendor. In the Quesnelia release of FOLIO, pieces can be marked as **Claim sent**, but automatic transmission to the vendor is not yet implemented. A library may wish to filter by **Receiving status** and use the **Export results (CSV)** option to send information to their vendor to support the claim.

To update a piece to 'Claim sent', use the following steps:
1. Using the **Search & filter** pane, find the receiving title for which you want to send a claim and select it.
2. In the Expected section of the receiving title, click on the piece.
3. The **Edit piece** modal will appear.
4. Click on the dropdown menu next to **Save & close** and select **Send claim**.
5. In the **Send claim** modal, enter a **Claim expiry date**. This is the date by which the claim needs to be resolved. If the piece status is not resolved before that date, the piece status will update back to **Late** to facilitate subsequent claims.
6. Optional: add internal and external notes, if desired.
7. Click **Save & close**.
8. The piece status will update to 'Claim sent' and remain in the **Expected** accordion on the receiving record.


If a library knows they must wait for a longer period of time before submitting a claim to a vendor, they may update a piece to delay the claim:
1. Using the **Search & filter** pane, find the receiving title for which you want to send delay a claim and select it.
2. In the Expected section of the receiving title, click on the piece.
3. The **Edit piece** modal will appear.
4. Click on the dropdown menu next to **Save & close** and select **Delay claim**.
5. In the **Delay piece** modal, enter a **Delay to** date.
6. Click **Save & close**.
7. The piece status will update to 'Claim delayed' and remain in the **Expected** accordion on the receiving record.
Note: When the delay date has passed, the piece status reverts to 'Late' or 'Expected' depending on the expected receipt date and the claiming interval for the receiving title. If the status of the piece has already been changed to 'Received' or 'Unreceivable', the status will not update after the delad date has passed.


## Viewing a piece's status log
The status of a piece can update when any of the following actions occur:
*  The piece is created.
*  The piece is received.
*  The piece is unreceived.
*  The piece has not been received and it is past its expected receipt date.
*  A claim is sent or delayed for the piece, which has not been received by the library.

These status changes are tracked and can be reviewed in the piece record's status log. To access the status log:
1. Using the **Search & filter** pane, find the receiving title and select it.
2. Click on the piece.
3. The **Edit piece** modal will appear.
4. Expand the **Status log** accordion at the bottom of the piece.
5. A table will appear with the following columns:
*  **Status change.** The status of the piece.
*  **Date.** The date the status change occurred.
*  **Interval.** This column only holds data for **Send claim** and **Delay claim** updates.
*  **Updated by.** The name of the user who made the update.

