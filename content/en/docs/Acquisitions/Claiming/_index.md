---
title: "Claiming"
linkTitle: "Claiming"
date: 2025-03-21
weight: 05
tags: ["parenttopic"]
---

**This section of the documentation contains links to external sites. Please be advised that these sites are not maintained by the FOLIO Documentation Group and may be aligned with a different FOLIO release.**

# **Claiming**


 The Claiming app allows you to view a list of any pieces requiring claiming and to take the appropriate next action (send, delay, mark unreceivable).

Definition of terms related to the Claiming app:
- **Customs field**. A search filter on the library-defined fields, populated in the POL.
- **Delay claim**. An action that delays the sending of a claim for a piece marked Late to the vendor.
- **Group by organization**. An action that groups pieces marked Late by organization when viewing a list. This action overrides any previous sorting actions.
- **Send claim**. An action that sends a claim for a piece marked Late to the vendor via the Export Manager app.
- **Ship to**. A search filter on the shipping destination of items to your library, for example if your library has more than one branch. Addresses can be set up in **Settings > Tenant > Addresses** and selected in the **PO**.
- **Unreceivable**. An action that marks a piece unreceivable if it will never arrive at the library.

## Permissions
|permissionDisplayName (OKAPI)|Capability/Capability Set (EUREKA)|Type|ApplicationID|Action| 
|---|---|---|---|---|
|*Claims: View claiming*|*Orders-Storage Claiming* (orders-storage.claiming.all)|Data|app-acquisitions-1.0.6|All orders-storage claiming perms|
|*Receiving: View, edit*|*UI-Receiving* (ui-receiving.edit)|Data|app-acquisitions-1.0.6|Edit|

## Keyboard shortcuts
Keyboard shortcuts allow you to perform actions in this app using the keyboard. See [Platform essentials > Keyboards shortcuts](../../docs/platform-essentials/keyboard-shortcuts/keyboardshortcuts/) for more information.

## Viewing pieces to claim

For a piece to show up as **Late**, the Claiming active box needs to be checked in the POL and an Expected receipt date added. For more on this, see [Claiming a piece](../../docs/acquisitions/receiving/#claiming-a-piece). 

You can choose which columns to display by selecting from the Actions menu.
- **Expected date**. The date entered in the Expected receipt date field of a piece.
- **Organization code**. A unique identifier for the organization/vendor that is supplying the piece.
- **Organization name**. The name of the organization/vendor that is supplying the piece.
- **Status**. The status of the piece.
- **Title**. The receiving title to which the piece is attached.
- **Display summary**. A description of a piece that can be used for public display. If this field is added/updated, the value displays on the corresponding field in the item record. Note: in previous releases, this field was labeled Caption.
- **Chronology**. The chronology of the piece, such as “year”, “month.” If this field is added/updated, the value displays on the corresponding field in the item record.
- **Enumeration**. The enumeration of the piece which indicates the sequential numeric and/or alphabetic designation used by a publisher to identify the individual bibliographic or physical parts and to show the relationship of each part to the bibliographic unit as a whole. If this field is added/updated, the value displays on the corresponding field in the item record.
- **POL number**. The purchase order line number.

Before selecting any pieces, you can choose to group the pieces by organization by choosing that option from the Actions menu. You can also filter on criteria including Organization, Ship to address, Piece location and library-defined custom fields. By default, "Piece status = Late" and "Claim active = True" are pre-selected. Unselecting these statuses allows viewing of pieces that are not late and/or do not have Claim active set.

## Acting on claims

Once all pieces or specific pieces are selected from the list by marking the checkboxes, the Actions menu offers the following options:
- **Group by organization**
- **Send claim**
- **Delay claim**
- **Unreceivable**

### Send claim

To send a claim, you need to have added an integration in Integration details in the Organization app, choosing as Integration type **Claiming**, either **CSV** or **EDI** as File format, and either **File download** or **FTP** for Transmission method. To add an integration, see [Adding integration details to a vendor organization](../../docs/acquisitions/organizations/#adding-integration-details-to-a-vendor-organization).

1. Click on **Actions** and select **Send claim**.
2.	Choose a **Claim expiry date** when prompted and add an optional internal/external note.
3.	Click **Save & close**.
4.	Go to **Export manager** app.
5.	Select either **All** or **Organizations** tab.
6.	If viewing the Organizations tab, under **Integration type** select **Claims**.
7.	View Job ID, status, etc. Start time, End time, Export method.
8.	Click on Job ID link to download CSV or EDI file.
9.	Click on row to view a summary plus Error details.

Status of piece changes from **Late** to **Claim sent**.

### Delay claim

If you know you must wait for a longer period of time before submitting a claim to a vendor, you may update a piece to delay the claim by entering a **Delay to** date in the modal.

1. Click on **Actions** and select **Delay claim**.
2. Choose a **Delay to** date when prompted.
3. Click **Save & close**.

Status of piece changes from **Late** to **Claim delayed**.

### Unreceivable

If a piece will not arrive at the library (e.g. the title is out of print) and will never be received by the library, select **Unreceivable** to mark the piece as such.

1. Click on **Actions** and select **Unreceivable**.
2. Click **Save & close** to mark as unreceivable.

Status of piece changes from **Late** to **Unreceivable**.

Note: if this action is performed in error or the piece becomes receivable, in the **Receiving app** you can search for the piece, click on it in the **Unreceivable** accordion and, in the **Edit piece** modal, click on the dropdown menu next to **Save & close** and select **Expect**. This will move the piece back to the **Expected** accordion and update the piece status accordingly.



## Searching for pieces 

You can search for claimable pieces in the **Search & filter** pane. To search for claimable pieces, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:

**Keyword.** Searches through all fields in the drop-down list. This is the default search. Note: Keyword will also search any custom fields that have been configuredwith a type of text field or text area.

**Titel (Receiving titles).** Title of the ordered material.

**Package (POL Package name).** The name of the package to which a receiving title is attached.

**Product ID (Fort the specific title or the package).** The Product ID of the item.

**PO number.** The number for the purchase order.

**POL number.** The number for the purchase order line.

**Vendor reference number.** The vendor reference number for this order line.

### Vendor 

To search for orders placed with a specific vendor, follow these steps:

1. In the Search & filter pane, click Vendor.

2. Click Organization look-up.

3. In the Select Organization dialog, search for the vendor.

4. Select the vendor you want to filter by. The search results appear in the Claiming pane.

### Order type 

In the **Search & filter** pane, click **Order type** and select any applicable filters:

**One-time.** One-time orders.

**Ongoing.** Ongoing orders.

### Material type 

1. In the **Search & filter** pane, click **Material type**.

2. Select the material type from the drop-down list. The search results appear in the Claiming pane.

### Order format

1. In the **Search & filter** pane, click **Order format**.

2. Select the order format from the drop-down list. The search results appear in the Claiming pane.

### Tags

To search for orders assigned with specific tags, follow these steps:

1. In the **Search & filter** pane, click **Tags**.

2. Select the tag(s) from the drop-down list. The search results appear in the Claiming pane.

### Location

To search for pieces assigned to a specific permanent location, follow these steps:

1. In the Search & filter pane, click Location.

2. Click Location look-up.

3. In the Select permanent location dialog, select an Institution, Campus, Library, and Location using the drop-down lists.

4. Click Save and close. The search results appear in the Claiming pane.

### POL claim active (default)

1. In the **Search & filter** pane, click **POL claim active**.

2. Select the status from the drop-down list. The search results appear in the Claiming pane.

### Receiving status (default)

1. In the **Search & filter** pane, click **Receicing status.**

2. Select the status from the drop-down list. The search results appear in the Claiming pane.

### Acqusition unit

To search for orders assigned to a specific acquisitions unit, follow these steps:

1. In the **Search & filter** pane, click **Acquisitions unit**.

2. Select the acquisitions unit from the drop-down list. The search results appear in the Claiming pane.

### Rush 

1. In the **Search & filter** pane, click **Rush**.

2. Select the material type from the drop-down list. The search results appear in the Claiming pane.

### Received date

To search for orders based on the date the xxx was opened, follow these steps:

1. In the Search & filter pane, click Received Date.

2. Enter a start date in the From box and an end date in the To box.

3. Click Apply. The search results appear in the Claiming pane.

### Expected receipt date

To search for piece based on the expected receipt date, follow these steps:

1. In the Search & filter pane, click Date created(Title)

2. Enter a start date in the From box and an end date in the To box.

3. Click Apply. The search results appear in the Claiming pane.

### Receipt due

To search for title based on the date the title was created, follow these steps:

1. In the Search & filter pane, click Date created(Title)

2. Enter a start date in the From box and an end date in the To box.

3. Click Apply. The search results appear in the Claiming pane.

### Created by (Piece)

To search for piece created by specific user, follow these steps:

1. In the Search & filter pane, click Created by(Piece).

2. Click Find User.

3. In the Select User dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Claiming pane.

### Date created (Piece)

To search for pieces based on the date the piece was created, follow these steps:

1. In the Search & filter pane, click Date created (Piece).

2. Enter a start date in the From box and an end date in the To box.

3. Click Apply. The search results appear in the Claiming pane.

### Updated by (Piece)

To search for pieces updated by specific user, follow these steps:

1. In the Search & filter pane, click Updated by(Piece).

2. Click Find User.

3. In the Select User dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Claiming pane.

### Created by (Title)

To search for title created by specific user, follow these steps:

1. In the Search & filter pane, click Created by(Title).

2. Click Find User.

3. In the Select User dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Claiming pane.

### Date created (Title)

To search for title based on the date the title was created, follow these steps:

1. In the Search & filter pane, click Date created(Title)

2. Enter a start date in the From box and an end date in the To box.

3. Click Apply. The search results appear in the Claiming pane.

### Updated by (Title)

To search for title updated by specific user, follow these steps:

1. In the Search & filter pane, click Updated by(Title).

2. Click Find User.

3. In the Select User dialog, search for the user.

4. Select the user you want to filter by. The search results appear in the Claiming pane.

### Date updated (Title)

To search for title based on the date the title was updated, follow these steps:

1. In the Search & filter pane, click Date updated(Title).

2. Enter a start date in the From box and an end date in the To box.

3. Click Apply. The search results appear in the Claiming pane.

### Ship to

To search for order based on their ship to address, follow these steps. Addresses are created in [Settings > Tenant > Addresses](../../../settings/settings_tenant/settings_tenant/#settings--tenant--addresses).
1. In the Search & filter pane, click Ship to.

3. Select the address name from the drop-down list. The search results appear in the Claiming pane.

### Custom fields Membership

1. In the **Search & filter** pane, click **Custom fields Membership**.

3. Select the status from the drop-down list. The search results appear in the Claiming pane.
