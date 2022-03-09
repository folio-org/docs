---
title: "quickMARC"
linkTitle: "QuickMARC"
weight: 4
tags: ["subtopic"]   
---

quickMARC is FOLIO's MARC editing tool, which allows you to make edits to instance records with underlying MARC records. For all instances whose source record is a MARC record you have the option to edit the MARC using quickMARC. quickMARC saves to Source Record Storage (SRS) and updates both the Source Record and the Inventory instance record. quickMARC has minimal validation and is best used in addition to other cataloging tools.

Note: quickMARC is a module that you can access through the Inventory app; it is not its own app. For more information, see Accessing quickMARC.

Definition of terms related to quickMARC:

-   **Instance record.** A record that contains bibliographic and administrative information about a particular resource. The Instance record is what is known as the bibliographic record. They are mostly derived from full bibliographic records (in MARC or other formats) and are intended to provide information for library staff to identify and select records in order to perform work on associated holdings and items. 
-   **SRS.** Source Record Storage. A storage layer in FOLIO. If an instance has an underlying MARC record, then this record is stored in SRS.

## Permissions

The permissions listed below allow you to interact with quickMARC and determine what you can and cannot do within the module. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the quickMARC module or any related information.

The following are all the quickMARC permissions:

-   **quickMARC: Duplicate and create a new MARC bibliographic record.** This permission allows the user to duplicate and create new MARC records.
-   **quickMARC: View, edit.** This permission allows the user to view and edit quickMARC records.

## Accessing quickMARC

quickMARC is a module that is contained within the Inventory app. In order for an instance record to be viewed and edited in quickMARC, its source must be MARC. 

Note: If an instance record was created manually in the Inventory app, then it doesn't have an underlying MARC record and cannot be used with quickMARC.

1.  Open the **Inventory app**.
2.  Find the record you want to view or edit, and select it.
3.  In the **Instance record details** pane, click **Actions \> Edit in quickMARC**. The Edit MARC record window appears.

## Editing a MARC record using quickMARC

To edit a MARC record, click on the Edit in quickMARC option, located in the Actions menu of an Inventory Instance record. A MARC view of the record will display.

1.  Open the **Inventory app**.
2.  Find the record you want to view or edit, and select it.
3.  In the **Instance record details** pane, click **Actions \> Edit in quickMARC**.
4.  In the Edit MARC record window, you can perform the following actions:
    -   **Add a field.** To add a field, click the **+**. The new field appears below.
    -   **Delete a field.** To delete a field, click the **trash can icon**. The field will be deleted.
    -   **Move a field up.** To move a field up, click the **up arrow** in the row of the field you want to move. The field is moved one row up.
    -   **Move a field down.** To move a field down, click the **down arrow** in the row of the field you want to move. The field is moved one row down.
    -   **Edit text within a field.** Click into a field to make changes to the text.
5.  Once you have made your desired changes, click **Save & close**. A confirmation record appears and the record is updated.

### Validations and restrictions

The following validations and restrictions must be followed when working with records using quickMARC:

-   Field 999ff cannot be edited or deleted.
-   Field 005 cannot be edited.
-   Only positions 5, 8, 17, 18, and/or 19 in the Leader can be edited.
-   There must be one, and not more than one, field 245 for the record to save to SRS.
-   008 bytes Type and BLvl must match positions 6 and 7 in the Leader for the record to save to SRS .
-   The Leader must contain 24 characters, including null spaces, for the record to save to SRS.
-   Each field number/tag must contain three characters for the record to save to SRS. For example, 020, 110, etc.
-   A subfield is defined by a \$ (dollar sign).
-   Administrative information listed cannot be edited in quickMARC. The following fields must be edited from the instance record:
    -   Suppress from discovery
    -   Staff suppressed
    -   Previously held
    -   Cataloged date
    -   Instance status term

### Record status

The record status shows the state of the MARC record in relation to the instance record and the SRS. You can view the record status at the top of the Edit MARC record window. When a MARC record is saved in quickMARC, any changes made to the record are reflected in SRS and in the instance record.

There are three record statuses:

-   **Current.** The record is up to date and should be the same as the instance record and SRS.
-   **In progress.** A change has been made to the record that has not made it to the instance record and/or SRS yet.
-   **Error.** Something is preventing an update from moving to the instance record or SRS.

## Deriving a new MARC record using quickMARC

To create a new MARC record, you must derive a new record from an existing MARC record.

1.  Start with an instance record that has an underlying MARC source record and the same {format/type} as the record you wish to create.
2.  Click **Actions \> Derive new MARC bibliographic record.**
3.  Edit the new record following the instructions in [Editing a MARC record using quickMARC](#editing-a-marc-record-using-quickmarc).
