---
title: "quickMARC"
linkTitle: "QuickMARC"
date: 2023-11-07
weight: 30
tags: ["parenttopic"]   
---

**This section of the documentation contains links to external sites. Please be advised that these sites are not maintained by the FOLIO Documentation Group and may be aligned with a different FOLIO release.**

quickMARC is FOLIO's MARC editing tool, which allows you to make edits to instance and holdings records with underlying MARC records. For all instances or holdings whose source record is a MARC record you have the option to edit the MARC using quickMARC. quickMARC saves to Source Record Storage (SRS) and updates both the Source Record and the corresponding Inventory record. quickMARC has minimal validation and is best used in addition to other cataloging tools.

Note: quickMARC is a module that you can access through the Inventory app; it is not its own app. For more information, see Accessing quickMARC.

Definition of terms related to quickMARC:

-   **Instance record.** A record that contains bibliographic and administrative information about a particular resource. The Instance record is what is known as the bibliographic record. They are mostly derived from full bibliographic records (in MARC or other formats) and are intended to provide information for library staff to identify and select records in order to perform work on associated holdings and items. 
-  **Holdings record.** A record that contains information such as location, call number, and volumes owned, that enables staff to locate and manage library holdings for materials in all formats. A Holdings record must be associated with an Instance record.
-   **SRS.** Source Record Storage. A storage layer in FOLIO. If an instance or holdings has an underlying MARC record, then this record is stored in SRS.

## Permissions

The permissions listed below allow you to interact with quickMARC and determine what you can and cannot do within the module. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the quickMARC module or any related information.

The following are all the quickMARC permissions:

-   **quickMARC: Can Link/unlink authority records to bib records.** This permission allows the user to link and unlink authority records to access points in bibliographic records.
-   **quickMARC: Create a new MARC holdings record.** This permission allows the user to create new MARC holdings records.
-   **quickMARC: Create new MARC bibliographic record.** This permission allows the user to create a new MARC bibliographic record.
-   **quickMARC: Derive new MARC bibliographic record.** This permission allows the user to duplicate and create new MARC bibliographic records.
-   **quickMARC: View MARC bibliographic record.** This permission allows the user to view MARC bibliographic records in the Inventory app.
-   **quickMARC: View MARC holdings  record.** This permission allows the user to view MARC holdings records in the Inventory app.
-   **quickMARC: View, edit MARC bibliographic record.** This permission allows the user to view and edit MARC bibliographic records.
-   **quickMARC: View, edit MARC holdings record.** This permission allows the user to view and edit MARC holdings records.

## Accessing quickMARC

quickMARC is a module that is contained within the Inventory app. In order for an instance or holdings record to be viewed and edited in quickMARC, its source must be MARC. 

Note: If an instance record was created manually in the Inventory app, then it doesn't have an underlying MARC record and cannot be used with quickMARC.

1.  Open the **Inventory app**.
2.  Find the record you want to view or edit, and select it.
-To open an bibliographic record in quickMARC
In the **Instance record details** pane, click **Actions \> Edit MARC bibliographic record**. The Edit MARC record window appears. 
- To open a holdings record in quickMARC
Select **View holdings**, click **Actions \> Edit in quickMARC**.  The Edit MARC record window appears. 

## Editing a MARC record using quickMARC

To edit a MARC record, click on the appropriate Edit option, located in the Actions menu of an Inventory Instance or Holdings record. A MARC view of the record will display.

To edit a bibliographic record:
1.  Open the **Inventory app**.
2.  Find the record you want to view or edit, and select it.
3.  In the **Instance record details** pane, click **Actions \> Edit MARC bibliographic record**.

To edit a holdings record:
1.  Open the **Inventory app**.
2.  Find the record you want to view or edit, and select it.
3.  In the **Instance record details** pane, select **View holdings**, click **Actions \> Edit in quickMARC**.  The Edit MARC record window appears. 

In the Edit MARC record window, you can perform the following actions:
-   **Add a field.** To add a field, click the **+**. The new field appears below.
-   **Delete a field.** To delete a field, click the **trash can icon**. The field will be deleted.
-   **Move a field up.** To move a field up, click the **up arrow** in the row of the field you want to move. The field is moved one row up.
-   **Move a field down.** To move a field down, click the **down arrow** in the row of the field you want to move. The field is moved one row down.
-   **Edit text within a field.** Click into a field to make changes to the text.
Once you have made your desired changes, click **Save & close**. A confirmation message appears and the record is updated. Alternatively, click **Save & keep editing** to save the current changes and stay in edit mode. Click **Cancel** to discard changes and exit the Edit MARC record window.

### Linking to authority records

Link icons can display to the right of the following MARC tags: 100, 110, 111, 600, 610, 611, 650, 651, 700, 710, 711. These fields can be enabled or disabled for automatic linking at the tenant level with the [linking-rules API end point](https://github.com/folio-org/mod-entities-links/blob/master/doc/documentation.md#api-instance-authority-linking-rules).

#### Linking a single field to an authority record

To link a field to an authority record:
1.  Click on the link to the right of the selected field.
2.  In the MARC authority Search & filter modal, verify that the desired type of entity and authority source are selected.
3.  Search by text string or by identifier.
4.  Select and open the appropriate authority record from the results list.
5.  Click the **Link** button in the upper right.

The access point in the bibliographic record will exactly match the authorized access point in the authority record and the $0 will be populated.
The link icon to the right of the field is replaced with **Unlink from MARC Authority record** and **View MARC authority record** icons.
When a field is linked, all subfields that are part of the access point, as well as the $0 (identifier) cannot be edited.

To unlink a field from an authority record:
1.  Click on the **Unlink from MARC Authority record** icon to the right of the selected field.
2.  Click again on **Unlink** in the verification modal.

The field is no longer linked and all subfields can be edited.

#### Linking all access points in a bibliographic record to authority records

Access point fields must contain a $0 in order to be linked using this feature.

To link all access points in a bibliographic record to authority records:
1.  Click the **Link headings** button in the upper right.

The access points in the bibliographic record will exactly match the authorized access points in the authority record.
The link icon to the right of the field is replaced with **Unlink from MARC Authority record** and **View MARC authority record** icons.
When a field is linked, all subfields that are part of the access point, as well as the $0 (identifier) cannot be edited.

Fields must be unlinked individually from an authority record:
1.  Click on the **Unlink from MARC Authority record** icon to the right of the selected field.
2.  Click again on **Unlink** in the verification modal.

The field is no longer linked and all subfields can be edited.

### Validations and restrictions

A subfield is defined by a \$ (dollar sign).  
Tags must consist of 3 numeric characters.  
Indicators must consist of single characters.

The following validation rules and restrictions apply when working with bibliographic records using quickMARC: 

-   Fields 005 and 999ff are system supplied and cannot be edited or deleted.
-   The Leader must contain 24 characters, including null spaces
-   Only positions 5-8, 17, 18, and/or 19 in the Leader can be edited. Invalid values in the leader will result in an error message
-   245 is required and non-repeatable

The following validation rules and restrictions apply to working with MARC holdings records in quickMARC:

-   001, 004, 005, and 999ff are system supplied and cannot be edited or deleted.
-   The Leader must contain 24 characters, including null spaces
-   Only positions 5, 6, 17, and 18 can be edited in the Leader
-   004 is required and non-repeatable, with no indicators or subfields
-   004 must be a valid HRID for an instance record with source = MARC
-   008 is required and must contain 32 characters, including null spaces
-   010  subfields must contain more than 3 characters 
-   852 is required; value in /$b must match a valid location code

### Record status

The record status shows the state of the MARC record in relation to the corresponding Inventory record and the SRS. You can view the record status at the top of the Edit MARC record window. When a MARC record is saved in quickMARC, any changes made to the record are reflected in SRS and in the corresponding Inventory record.

There are three record statuses:

-   **Current.** The record is up to date and should be the same as the Inventory record and SRS.
-   **In progress.** A change has been made to the record that has not made it to the Inventory record and/or SRS yet.
-   **Error.** Something is preventing an update from moving to the Inventory record or SRS.

## Creating a new MARC record using quickMARC

Information on how MARC bibliographic fields are mapped to inventory instances is available in the [FOLIO Wiki](https://wiki.folio.org/display/FOLIOtips/Default+MARC+Bibliographic-to-Inventory+Instance+Mappings). 

To create a new **MARC bibliographic record** for an item without an instance or SRS record:
1.  Click **Actions \> New MARC Bib Record.**
2.  Filling in LDR field positions 06 and 07 will add fillable form fields to the 008 field.
3.  Edit the new record following the instructions in [Editing a MARC record using quickMARC](#editing-a-marc-record-using-quickmarc).
 
To derive a new **MARC bibliographic record**:
1.  Start with an instance record that has an underlying MARC source record and the same [Resource type](../inventory/#resource-type) and [Format](../#format) as the record you wish to create.
2.  Click **Actions \> Derive new MARC bibliographic record.**
3.  Edit the new record following the instructions in [Editing a MARC record using quickMARC](#editing-a-marc-record-using-quickmarc).

To create a new **MARC holdings record**:
1.   [Find the instance record](../#searching-for-a-record) to which you want to add holdings and select it. The instance source must be MARC.
2.  Click **Actions \> Add MARC holdings record.** 
3.  Edit the new record following the instructions in [Editing a MARC record using quickMARC](#editing-a-marc-record-using-quickmarc).
