---
title: "Inventory"
linkTitle: "Inventory"
date: 2022-11-21
weight: 30
tags: ["parenttopic"]
---

The Inventory app allows you to manage your collections (physical and/or virtual). Inventory stores bibliographic, holdings, and item data in the form of Instance, Holdings, and Item records. Instance records may be created within FOLIO or generated from records in source record storage (SRS). Data within Inventory integrates with other apps like Orders, Check in, Check out, and Requests.

Definition of terms related to the Inventory app:

-   **Instance record.** A record that contains bibliographic and administrative information about a particular resource. The Instance record is what is known as the bibliographic record. They are mostly derived from full bibliographic records (in MARC or other formats) and are intended to provide information for library staff to identify and select records in order to perform work on associated holdings and items.
-   **Holdings record.** A record that contains information such as location, call number, and volumes owned, that enables staff to locate and manage library holdings for materials in all formats. A Holdings record must be associated with an Instance record.
-   **Item record.** A record that contains information needed to identify and track a single item or piece. The Item record contains data specific to a single volume or piece, such as barcode and circulation status. An Item record must be associated with a Holdings record.
-   **HRID.** Human readable identifier, also called eye readable ID.
-   **UUID.** Universally unique identifier.
-   **SRS.** Source Record Storage. A storage layer in FOLIO. If an instance has an underlying MARC record, then this record is stored in SRS.
-   **Intellectual item.** This status can be used for an item record that does not correspond to a single, distinct physical object. May also be referred to as a “dummy record.”

## Permissions

The permissions listed below allow you to interact with the Inventory app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app.

The following are all the Inventory permissions:

-   **Inventory: All permissions.** This permission allows the user to perform all actions in Inventory.
-   **Inventory: Create order from instance.” This permission allows the user to initiate the creation of a new purchase order or a new purchase order line (in the Orders app) from an Instance record in Inventory.
-   **Inventory: Import single bibliographic records.** This permission allows the user to import and overlay Instance records from external sources. External sources must be configured in Settings.
-   **Inventory: Mark items in process.** This permission allows the user to update an item record's Item status to In process.
-   **Inventory: Mark items in process (non-requestable).** This permission allows the user to update an item record's Item status to In process (non-requestable).
-   **Inventory: Mark items intellectual item.** This permission allows the user to update an item record's Item status to Intellectual.
-   **Inventory: Mark items long missing.** This permission allows the user to update an item record's Item status to Long missing.
-   **Inventory: Mark items restricted.** This permission allows the user to update an item record's Item status to Restricted.
-   **Inventory: Mark items unavailable.** This permission allows the user to update an item record's Item status to Unavailable.
-   **Inventory: Mark items unknown.** This permission allows the user to update an item record's Item status to Unknown.
-   **Inventory: Mark items withdrawn.** This permission allows the user to update an item record's Item status to Withdrawn. The user can also view and edit items.
-   **Inventory: Move holdings.** This permission allows the user to move holdings records from one instance record to another. The user can also search and view instances, holdings, and items.
-   **Inventory: Move items.** This permission allows the user to move an item record from one holding record to another. The user can also search and view instances, holdings, and items.
-   **Inventory: View instance records being suppressed for staff.** This permission allows the user to search and view instance records that are suppressed for staff. (Not currently implemented; by default all users who can view records can view those suppressed for staff.)
-   **Inventory: View instances, holdings, and items.** This permission allows the user to view instances, holdings, and items. 
-   **Inventory: View, create holdings.** This permission allows the user to create new holdings records. The user can also view holdings.
-   **Inventory: View, create instances.** This permission allows the user to create new instance records. The user can also view instances.
-   **Inventory: View, create items.** This permission allows the user to create new item records. The user can also view items.
-   **Inventory: View, create, edit holdings.** This permission allows the user to edit existing holdings records. The user can also view and create holdings.
-   **Inventory: View, create, edit instances.** This permission allows the user to edit existing instance records. The user can also view and create instances.
-   **Inventory: View, create, edit items.** This permission allows the user to edit existing item records. The user can also view and create items.
-   **Inventory: View, create, edit, delete holdings.** This permission allows the user to delete holdings records. The user can also view and edit holdings.
-   **Inventory: View, create, edit, delete items.** This permission allows the user to delete item records. The user can also view and edit items.
-   **Inventory: View, create, edit, mark missing items.** This permission allows the user to update an item record's Item status to Missing. The user can also view and edit items.

Note: Some actions in Inventory require permissions in other apps. For example, **View source** requires permissions in quickMARC.

## Creating an instance record manually in FOLIO

1.  In the Inventory pane, click **Actions \> New**.
2.  In the **New Instance** window, fill in the Administrative data, Title data, Identifier, Contributor, Descriptive data, Instance notes, Electronic access, Subject, Classification, Instance relationship (analytics and bound-with), and Related instances sections. For more information on the fields and actions available in these sections, see the section descriptions below.
3.  Once you have included all of the information you want in the instance record, click **Save & close**. The instance record is saved.

### Administrative data

The Administrative data section contains technical information about the instance record.

-   **Suppress from discovery.** If you want to suppress the record from your discovery layer, select the **Suppress from discovery** checkbox.
-   **Staff suppress.** If you want to suppress the record, and its associated holdings and item records, from staff who do not have the proper permissions to view the record, select the **Staff suppress** checkbox. If selected, staff need to have the permission Inventory: View instance records being suppressed for staff in order to view the record.
-   **Previously held.** If the resource was previously held by your library, select the **Previously held** checkbox. A library may adopt a policy to select the Previously held checkbox in the case where the library no longer owns the bibliographic resource described in the instance record, but for administrative reasons wishes to retain the record in the inventory and indicate previous ownership. For example, permission for library users to view or use items in a consortial collection may require proof that the library at some time owned those items.
-   **Instance HRID.** The human readable identifier, also called eye readable ID, a system-assigned sequential ID.
-   **Source (required).** Format of the instance source record, if a source record exists. For example, FOLIO if it's a record created in Inventory, MARC if it's a MARC record created in MARCcat, or EPKB if it's a record coming from eHoldings. The system assigns the source automatically.
-   **Cataloged date.** Date when an instance is considered "cataloged."
-   **Instance status term.** Select the instance status type to be assigned to the record. For example, the instance status may be: cataloged, uncataloged, batch loaded, or not yet assigned. Instance status types are configured by your library in the Settings app. See [Settings \> Inventory \> Instance](../../settings/settings_inventory/settings_inventory/#settings--inventory--instance-status-types) status types for more information.
-   **Mode of issuance.** A bibliographic categorization reflecting whether a resource is issued in one or more parts, the way it is updated, and whether its termination is predetermined or not. You can configure the values that appear in the drop-down list in [Settings \> Inventory \> Modes of issuance](../../settings/settings_inventory/settings_inventory/#settings--inventory--modes-of-issuance). For records created in FOLIO, you may assign a value, but for instance records with an underlying MARC record in the SRS database the value is determined from the MARC fixed field values.
-   **Statistical code.** Statistical codes are locally assigned values used to filter and sort records. Multiple statistical codes can be added to a record. Statistical codes are configured by your library in the Settings app. See [Settings \> Inventory \> Statistical codes](../../settings/settings_inventory/settings_inventory/#settings--inventory--statistical-codes) for more information.

#### Adding a statistical code

1.  Click **Add statistical code**.
2.  Select the statistical code from the drop-down list.
3.  Repeat steps 1-2 as needed. The statistical code is saved once you save the instance.

#### Deleting a statistical code

1.  Find the statistical code you want to delete.
2.  Click the **trash can icon** next to the code. The code is removed from the record and is deleted once you save the instance.

-   **Administrative note.** Administrative notes are free text fields that can be used to record information about the instance record or actions taken on it.

#### Adding an administrative note

1.  Click **Add administrative note**.
2.  Enter text.
3. Repeat steps 1-2 as needed. The administrative note is saved once you save the instance.

#### Deleting an administrative note

Click the **trash can icon** next to the administrative note you wish to delete. The note is removed from the record and is deleted once you save the instance.

### Title data

The Title data section contains information about the title of the resource.

-   **Resource title (required).** The primary title (or label) associated with the resource.
-   **Alternative titles.** An alternative title for the resource. For example, the original language version title of a movie. You can add multiple alternative titles to a record.
-   **Index title.** Title normalized for browsing and searching based on the title without initial articles.
-   **Series statements.** A series title associated with the resource. For example, Harry Potter or Lecture Notes in Mathematics.
-   **Preceding titles.** The immediately preceding title by which the resource was formerly identified. You can add multiple preceding titles to a record. For example, there may be multiple preceding titles which merged to form the one current title.
-   **Succeeding titles.** The immediately succeeding title of the resource. You can add multiple succeeding titles to a record. For example, there may be multiple succeeding titles if the current publication splits into multiple succeeding publications.

#### Adding an alternative title

1.  Click **Add alternative title**.
2.  Select the alternative title **Type** from the drop-down list. Alternative title types are configured by your library in the Settings app. See [Settings \> Inventory \> Alternative title types](../../settings/settings_inventory/settings_inventory/#settings--inventory--alternative-title-types) for more information.
3.  Enter the **Alternative title** in the box.
4.  Repeat steps 1-3 as needed. The alternative title is saved once you save the instance.

#### Adding a series statement

1.  Click **Add series**.
2.  Enter the **Series statement** in the box.
3.  Repeat steps 1-2 as needed. The series statement is saved once you save the instance.

#### Adding a preceding title

Note: Adding a preceding title is optional, but if you click **Add preceding title**, you must enter a **Title** or [delete the preceding title](#deleting-an-alternative-title-preceding-title-succeeding-title-or-series-statement) in order to save the instance record.

1.  Click **Add preceding title**.
2.  Enter the **Title** in the box, or to connect the preceding title to another instance in your Inventory, follow these steps:
    1.  Click the **+**.
    2.  In the **Select instance** dialog, in the **Search & filter** pane, enter all or part of the title in the search box and click **Search**.
    3.  Optional: Filter results by Language, Resource Type, or Location.
    4.  In the **Search results** pane, click the **Title** to select it. The title is connected to the instance record as a preceding title. The Title, Instance HRID, ISBN, and ISSN fields are automatically populated with information from the record, and Not connected changes to Connected.
3.  Optional: If you didn't connect the Title to another instance, enter the **ISBN** or **ISSN** into their respective boxes.
4.  Repeat steps 1-3 as needed. The preceding title is saved once you save the instance.

#### Adding a succeeding title

Note: Adding a succeeding title is optional, but if you click **Add succeeding title**, you must enter a **Title** or [delete the succeeding title](#deleting-an-alternative-title-preceding-title-succeeding-title-or-series-statement) in order to save the instance record.

1.  Click **Add succeeding title**.
2.  Enter the **Title** in the box, or to connect to the succeeding title represented by another instance in your Inventory, follow these steps:
    1.  Click the **+**.
    2.  In the **Select instance** dialog, in the **Search & filter** pane, enter all or part of the title in the search box and click **Search**.
    3.  Optional: Filter results by Language, Resource Type, or Location.
    4.  In the **Search results** pane, click the **Title** to select it. The title is connected to the instance record as a succeeding title. The Title, Instance HRID, ISBN, and ISSN fields are automatically populated with information from the record, and Not connected changes to Connected.
3.  Optional: If you didn't connect the Title to another instance, enter the **ISBN** or **ISSN** into their respective boxes.
4.  Repeat steps 1-3 as needed. The succeeding title is saved once you save the instance.

#### Deleting an alternative title, preceding title, succeeding title, or series statement

1.  Find the alternative title, preceding title, succeeding title, or series statement you want to delete.
2.  Click the **trash can icon** next to the alternative title, preceding title, succeeding title, or series statement. The alternative title, preceding title, succeeding title, or series statement is removed from the record and is deleted once you save the instance.

### Identifier

An extensible set of name-value pairs of identifiers associated with the resource.

#### Adding an identifier

Note: Adding an identifier is optional, but if you click **Add identifier**, you must enter a **Type** or [delete the identifier](#deleting-an-identifier) in order to save the instance record.

1.  Click **Add identifier**.
2.  Select the identifier **Type** from the drop-down list. Identifier types are configured by your library in the Settings app. See [Settings \> Inventory \> Resource identifier types](../../settings/settings_inventory/settings_inventory/#settings--inventory--resource-identifier-types) for more information.
3.  Enter the **Identifier** in the box.
4.  Repeat steps 1-3 as needed. The identifier is saved once you save the instance.

#### Deleting an identifier

1.  Find the identifier you want to delete.
2.  Click the **trash can icon** next to the identifier. The identifier is removed from the edit record display and is permanently deleted once you save the instance.

### Contributor

A contributor is any entity who has contributed to the bibliographic resource.

#### Adding a contributor

Note: Adding a contributor is optional, but if you click **Add contributor**, you must enter a **Name** and **Name type** or [delete the contributor](#deleting-a-contributor) in order to save the instance record.

1.  Click **Add contributor**.
2.  Enter the contributor's **Name** in the box.
3.  Select the **Name type** from the drop-down list.
4.  Optional: Select the contributor's role **Type** from the drop-down list. Contributor types are configured by your library in the Settings app. See [Settings \> Inventory \> Contributor types](../../settings/settings_inventory/settings_inventory/#settings--inventory--contributor-types) for more information.
5.  Optional: Enter a role type in the **Type, free text** box.
6.  Optional: Click **Make primary** to make the contributor the primary contributor.
7.  Repeat steps 1-6 as needed. The contributor is saved once you save the instance.

#### Deleting a contributor

1.  Find the contributor you want to delete.
2.  Click the **trash can icon** next to the contributor. The contributor is removed from the record and is deleted once you save the instance.

### Descriptive data

Descriptive data contains descriptive information about the resource.

-   **Publications.** Data about the resource relating to its publication, distribution, manufacture, etc.
-   **Editions.** The edition statement.
-   **Physical descriptions.** Physical description of the described resource, including its extent, dimensions, and other physical details.
-   **Resource type (required).** A unique term for the resource that can be assigned from the RDA content term list or locally defined. Configured in [Settings \> Inventory \> Resource types](../../settings/settings_inventory/settings_inventory/#settings--inventory--resource-types).
-   **Nature of content.** Nature of content is an RDA categorization.
-   **Formats.** A unique term for the format that can be assigned from the RDA carrier term list or locally defined. Configured in [Settings \> Inventory \> Formats](../../settings/settings_inventory/settings_inventory/#settings--inventory--formats).
-   **Languages.** The set of languages used by the resource.
-   **Publication frequency.** The interval at which serial issues are released or an integrating resource is updated. For example, daily, weekly, monthly, quarterly, etc.
-   **Publication range.** Range of sequential designation/chronology of publication, or date range.

#### Adding publication

Note: Adding publication information is optional, but if you click **Add publication**, you must enter a **Publisher**, **Place**, or **Publication date** or [delete the publication](#deleting-a-publication-edition-description-nature-of-content-format-language-publication-frequency-or-publication-range) in order to save the instance record.

1.  Click **Add publication**.
2.  Optional: Enter a **Publisher** in the box.
3.  Optional: Enter a **Publisher role** in the box.
4.  Optional: Enter a **Place** in the box.
5.  Optional: Enter a **Publication date** in the box.
6.  Repeat steps 1-5 as needed. The publication data is saved once you save the instance.

#### Adding an edition

1.  Click **Add edition**.
2.  Enter the **Edition** in the box.
3.  Repeat steps 1-2 as needed. The edition statement is saved once you save the instance.

#### Adding a physical description

1.  Click **Add description**.
2.  Enter a **Physical description** in the box.
3.  Repeat steps 1-2 as needed. The physical description is saved once you save the instance.

#### Adding a nature of content

1.  Click **Add nature of content**.
2.  Select the **Nature of content term** from the drop-down list.
3.  Repeat steps 1-2 as needed. The nature of content is saved once you save the instance.

#### Adding a format

1.  Click **Add format**.
2.  Select the **Format** from the drop-down list.
3.  Repeat steps 1-2 as needed. The format is saved once you save the instance.

#### Adding a language

Note: Adding a language is optional, but if you click **Add Language**, you must enter a **Language** or [delete the language](#deleting-a-publication-edition-description-nature-of-content-format-language-publication-frequency-or-publication-range) in order to save the instance record.

1.  Click **Add language**.
2.  Select the **Language** from the drop-down list.
3.  Repeat steps 1-2 as needed. The language is saved once you save the instance.

#### Adding a publication frequency

1.  Click **Add frequency**.
2.  Enter the **Publication frequency** in the box.
3.  Repeat steps 1-2 as needed. The publication frequency is saved once you save the instance.

#### Adding a publication range

1.  Click **Add range**.
2.  Enter the **Publication range** in the box.
3.  Repeat steps 1-2 as needed. The publication range is saved once you save the instance.

#### Deleting a publication, edition, description, nature of content, format, language, publication frequency or publication range

1.  Find the publication, edition, description, nature of content, format, language, publication frequency or publication range
2.  Click the **trash can icon** next to the publication, edition, description, nature of content, format, language, publication frequency or publication range. The publication, edition, description, nature of content, format, language, publication frequency or publication range is removed from the record and is deleted once you save the instance.

### Instance notes

In the Instance notes section, you can add any notes about the instance record.

#### Adding a note

Note: Adding a note is optional, but if you click **Add note**, you must enter a **Note** or [delete the note](#deleting-a-note) in order to save the instance record.

1.  Click **Add note**.
2.  Select the **Note type** from the drop-down list. You can configure the values that appear in the drop-down list in [Settings \> Inventory \> Instance note types](../../settings/settings_inventory/settings_inventory/#settings--inventory--instance-note-types).
3.  Enter a **Note** in the box.
4.  Optional: If you only want the note to be visible to staff with the permission Inventory: View instance records being suppressed for staff, select the **Staff only** checkbox.
5.  Repeat steps 1-4 as needed. The note is saved once you save the instance.

#### Deleting a note

1.  Find the note you want to delete.
2.  Click the **trash can icon** next to the note. The note is removed from the record and is deleted once you save the instance.

### Electronic access

In the Electronic access section, you can add online access information for the resource.

#### Adding electronic access

Note: Adding electronic access is optional, but if you click **Add electronic access**, you must enter a **URI** or [delete the electronic access](#deleting-electronic-access) in order to save the instance.

1.  Click **Add electronic access**.
2.  Optional: Select a **Relationship** from the drop-down list.
3.  Optional: Enter a **URI** in the box.
4.  Optional: Enter **Link text** in the box.
5.  Optional: Enter the **Materials specified** in the box.
6.  Optional: Enter a **URL public note** in the box.
7.  Repeat steps 1-6 as needed. The electronic access is saved once you save the instance.

#### Deleting electronic access

1.  Find the electronic access you want to delete.
2.  Click the **trash can icon** next to the electronic access. The electronic access is removed from the record and is deleted once you save the instance.

### Subject

In the Subject section, you can add any subjects that pertain to the resource.

#### Adding a subject

1.  Click **Add subject**.
2.  Enter the **Subject** in the box.
3.  Repeat steps 1-2 as needed. The subject is saved once you save the instance.

#### Removing a subject

1.  Find the subject you want to delete.
2.  Click the **trash can icon** next to the subject. The subject is removed from the record and is deleted once you save the instance.

### Classification

In the Classification section, you can add classification information for the resource.

#### Adding a classification

Note: Adding a classification is optional, but if you click **Add classification**, you must enter a **Classification identifier type** and **Classification** or [delete the classification](#deleting-a-classification) in order to save the instance record.

1.  Click **Add classification**.
2.  Select a **Classification identifier type** from the drop-down list. Configured in [Settings \> Inventory \> Classification identifier types](../../settings/settings_inventory/settings_inventory/#settings--inventory--classification-identifier-types).
3.  Enter a **Classification** in the box.
4.  Repeat steps 1-3 as needed. The classification is saved once you save the instance.

#### Deleting a classification

1.  Find the classification you want to delete.
2.  Click the **trash can icon** next to the classification. The classification is removed from the record and is deleted once you save the instance.

### Instance relationship (analytics and bound-with)

In the Instance relationship section, you can add any relationships between the instance and other instances.

-   **Parent instances.** The parent instance is the record chosen as the primary record and to which all other child records are linked. Information about parent instances (Title, Instance HRID, Publisher, Publication date, ISBN, ISSN) including a link to the corresponding parent instance record displays on the child instance record(s).
-   **Child instances.** A child instance record is any record that has been associated with a parent record. Information about child instances (Title, Instance HRID, Publisher, Publication date, ISBN, ISSN) including a link to each corresponding child instance record displays on the parent instance record.

#### Adding a parent instance

Note: Adding a parent instance is optional, but if you click **Add parent instance**, you must enter **Parent instances** and **Type of relation** or [delete the parent instance](#removing-a-parent-or-child-instance) in order to save the instance record.

1.  Click **Add parent instance**.
2.  Enter the **Parent instances** in the box.
3.  Select the **Type of relation** from the drop-down list.
4.  Repeat steps 1-3 as needed. The parent instance is saved once you save the instance.

#### Adding a child instance

Note: Adding a child instance is optional, but if you click **Add child instance**, you must enter **Child instance** and **Type of relation** or [delete the child instance](#removing-a-parent-or-child-instance) in order to save the instance record.

1.  Click **Add child instance**.
2.  Enter the **Child instance** in the box.
3.  Select the **Type of relation** from the drop-down list.
4.  Repeat steps 1-3 as needed. The child instance is saved once you save the instance.

#### Removing a parent or child instance

1.  Find the parent or child instance you want to delete.
2.  Click the **trash can icon** next to the parent or child instance. The parent or child instance is removed from the record and is deleted once you save the instance.

### Related instances

The Related instances section displays any linked parent or child instances.

## Creating a Fast Add instance record

You can use Fast Add to create an instance record with a limited set of information that is most likely to be needed. To see the complete list of information that can be added to the record, see [Creating an instance record manually in FOLIO](#creating-an-instance-record-manually-in-folio), [Adding holdings to a record](#adding-holdings-to-a-record), and [Adding an item to a record](#adding-an-item-to-a-record).

1.  In the **Inventory** pane, click **Actions \> New Fast Add Record**.
2.  In the New fast add record, fill in the Instance, Holdings, and Item sections. For more information on the fields and actions available in these sections, see the section descriptions below.
3.  Once you have included all of the information you want in the instance record, click **Save & close**. The instance record is saved.

### Instance

The Instances section contains select instance record fields. For all fields available in an instance record, see [Creating an instance record manually in FOLIO](#creating-an-instance-record-manually-in-folio).

-   **Suppress from discovery.** Fast add records are suppressed from your discovery layer by default. If you want to display the record in your discovery layer, clear the **Suppress from discovery** checkbox.
-   **Instance status term.** Select the instance status type to be assigned to the record. For example, the instance status may be: cataloged, uncataloged, batch loaded, or not yet assigned. Instance status types are configured by your library in the Settings app. See [Settings \> Inventory \> Instance status types](../../settings/settings_inventory/settings_inventory/#settings--inventory--instance-status-types) for more information.
-   **Resource title (required).** The primary title (or label) associated with the resource.
-   **Publication date.** The year of publication, distribution, etc.
-   **ISBN.** International Standard Book Number.
-   **ISSN.** International Standard Serial Number.
-   **Resource type (required).** A unique term for the resource that can be assigned from the RDA content term list or locally defined. Configured in [Settings \> Inventory \> Resource types](../../settings/settings_inventory/settings_inventory/#settings--inventory--resource-types).
-   **Contributors.** Any entities who have contributed to the instance.

#### Adding a contributor

Note: Adding a contributor is optional, but if you click **Add contributor**, you must enter a **Name** and **Name type** or [delete the contributor](#deleting-a-contributor-1) in order to save the instance record.

1.  Click **Add contributor**.
2.  Enter the contributor's **Name** in the box.
3.  Select the **Name type** from the drop-down list.
4.  Optional: Click **Make primary** to make the contributor the primary contributor.
5.  Repeat steps 1-4 as needed. The contributor is saved once you save the fast add record.

#### Deleting a contributor

1.  Find the contributor you want to delete.
2.  Click the **trash can icon** next to the contributor. The contributor is removed from the record and is deleted once you save the fast add record.

### Holdings

The Holdings section contains select holdings record fields. For all fields available in a holdings record, see Creating a holdings record.

-   **Permanent location (required).** The default location of the resource, which can be a physical location where the resource is stored or an online location. Permanent location is assigned at the holdings level, but can be overridden at the item level, if needed. Select a **Permanent location** from the drop-down list, or click **Location look-up** to select a location.
-   **Temporary location.** A temporary location for the resource, which can be a physical location where the resource is stored or an online location. Temporary location can be assigned at the holdings level and overridden at the item level, if needed. Select a **Temporary location** from the drop-down list, or click **Location look-up** to select a location.
-   **Call number type.** The classification system used for the call number. Select the **Call number type** from the drop-down list. Configured in [Settings \> Inventory \> Call number types](../../settings/settings_inventory/settings_inventory/#settings--inventory--call-number-types).
-   **Call number prefix.** Prefix of the call number on the holdings level. For example, FIC.
-   **Call number.** Call number is an identifier assigned to an item, usually printed on a label attached to the item. The call number is used to determine the resource's physical position in a shelving sequence. For example, K1 .M44.
-   **Call number suffix.** Suffix of the call number on the holdings level. For example, the year (2001).

### Item

The Item section contains select item record fields. For all fields available in an item record, see Adding an item to a record.

-   **Barcode.** Generally a numerical sequence attached to the resource and validated by a barcode scanner. Must be a unique value.
-   **Material type (required).** Describes the material nature of a specific item, with the intention to permit more specific information than resource type alone. Configured in [Settings \> Inventory \> Material types](../../settings/settings_inventory/settings_inventory/#settings--inventory--material-types).
-   **Permanent loan type (required).** The default loan type for a given item. For example, Can circulate, Course reserves, Reading room, Selected, etc. Configured in [Settings \> Inventory \> Loan types](../../settings/settings_inventory/settings_inventory/#settings--inventory--loan-types).
-   **Item notes (required).** Any notes about the item that you want to appear to staff during check in or check out.
-   **Electronic access.** Online access information for the item.

#### Adding check in / check out notes

A check in or check out note is required by default.

1.  Select the **Note type** from the drop-down list. Configured in [Settings \> Inventory \> Item note types](../../settings/settings_inventory/settings_inventory/#settings--inventory--item-note-types).
2.  Enter a **Note** in the box.
3.  Optional: If you want the note to be visible to only staff with the proper permissions to view the note, select the **Staff only** checkbox.
4.  To add another note, click **Add check in / check out note** and repeat steps 1-3. The note is saved once you save the fast add record.

#### Removing check in / check out notes

1.  Find the note you want to delete.
2.  Click the **trash can icon** next to the note. The note is removed from the record and is deleted once you save the fast add record.

#### Adding electronic access

1.  Click **Add electronic access**.
2.  Optional: Select a **Relationship** from the drop-down list.
3.  Optional: Enter a **URI** in the box.
4.  Optional: Enter **Link text** in the box.
5.  Optional: Enter the **Materials specified** in the box.
6.  Optional: Enter a **URL public note** in the box.
7.  Repeat steps 1-6 as needed. The electronic access is saved once you save the fast add record.

#### Removing electronic access

1.  Find the electronic access you want to delete.
2.  Click the **trash can icon** next to the electronic access. The electronic access is removed from the record and is deleted once you save the fast add record.

## Creating an instance record using the Import action in FOLIO

Note: Import options are configured in [Settings \> Inventory \> Integrations]((../../settings/settings_inventory/settings_inventory/#settings--inventory--integrations). 

1.  In the default or middle pane, click **Actions > Import**.
2.  In the **Single Record Import** dialog box, select the source of the record to be imported (e.g., Library of Congress, OCLC WorldCat, BnF).
3.  Enter the record number, without any prefixes, in the **Enter [source] identifier** box.
4.  Click **Import**.

A new instance record is created along with an underlying SRS record. Only the editable **Administrative Data** elements in the instance can be edited directly in Inventory. These elements are entered as described in [Administrative Data](#administrative-data).

Any other edits to the instance record data must be made by editing the source record using [quickMARC](quickmarc).

## Adding holdings to a record

### Adding a MARC holdings record

1.  [Find the instance record](#searching-for-a-record) to which you want to add holdings and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click **Add MARC holdings record**.
3.  Edit the new record following the instructions in [Editing a MARC record using quickMARC](quickmarc/#editing-a-marc-record-using-quickmarc).
4.  Once you have included all of the information you want in the holdings record, click **Save & close**. The record is saved.

### Adding a FOLIO holdings record

1.  [Find the instance record](#searching-for-a-record) to which you want to add holdings and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click **Add holdings**.
3.  In the **Holdings record** window, fill in the Administrative data, Location, Holdings details, Holdings notes, Electronic access, Acquisition, and Receiving history sections. For more information on the fields and actions available in these sections, see the section descriptions below.
4.  Once you have included all of the information you want in the holdings record, click **Save & close**. The record is saved.

#### Administrative data

The Administrative data section contains technical information about the holdings.

-   **Suppress from discovery.** If you want to suppress the record from your discovery layer, select the **Suppress from discovery** checkbox.
-   **Holdings HRID.** The human readable ID, also called eye readable ID. A system-assigned sequential ID which maps to the Holdings ID.
-   **Source.** Format of the holdings source record, if a source record exists. For example, FOLIO if it's a record created in Inventory, MARC if it's a MARC record created in MARCcat, or EPKB if it's a record coming from eHoldings.
-   **Former holdings ID.** Former holdings ID
-   **Holdings type.** Indicates the type of bibliographic format of the holdings record. For example, print or electronic. Configured in [Settings \> Inventory \> Holdings types](../../settings/settings_inventory/settings_inventory/#settings--inventory--holdings-types).
-   **Statistical code.** Statistical codes (e.g. ASER; name: Active serial; type: SERM (Serial management) or books; name: Book, print (books); type ARL (Collection stats) etc.). Configured in Settings.

##### Adding former holdings IDs

1.  Click **Add former holdings ID**.
2.  Enter the **Former holdings ID** in the box.
3.  Repeat steps 1-2 as needed. The former holdings ID is saved once you save the holdings record.

##### Adding a statistical code

1.  Click **Add statistical code**.
2.  Select the statistical code from the drop-down list.
3.  Repeat steps 1-2 as needed. The statistical code is saved once you save the holdings record.

##### Deleting a former holdings ID or statistical code

1.  Find the former holdings ID or statistical code you want to delete.
2.  Click the **trash can icon** next to the ID or code. The ID or code is removed from the record and is deleted once you save the holdings record.

#### Location

The Location section contains information on the physical or electronic location of the holdings.

-   **Permanent (required).** The default location of the resource, which can be a physical location where the resource is stored or an online location. Permanent location is assigned at the holdings level, but can be overridden at the item level, if needed. Select a **Permanent location** from the drop-down list, or click **Location look-up** to select a location.
-   **Temporary.** A temporary location for the resource, which can be a physical location where the resource is stored or an online location. Temporary location can be assigned at the holdings level and overridden at the item level, if needed. Select a **Temporary location** from the drop-down list, or click **Location look-up** to select a location.
-   **Shelving order.** A system-generated normalization of the call number that allows for call number sorting in reports and in search results.
-   **Shelving title.** ???
-   **Copy number.** The copy number of the holdings.
-   **Call number type.** The classification system used for the call number. Select the **Call number type** from the drop-down list. Configured in [Settings \> Inventory \> Call number types](../../settings/settings_inventory/settings_inventory/#settings--inventory--call-number-types).
-   **Call number prefix.** Prefix of the call number on the holdings level. For example, FIC.
-   **Call number.** Call Number is an identifier assigned to an item, usually printed on a label attached to the item. The call number is used to determine the items physical position in a shelving sequence (e.g. K1 .M44)
-   **Call number suffix.** Suffix of the call number on the holdings level. For example, the year (2001).

#### Holdings details

The Holding details section contains additional details about the holdings.

-   **Number of items.** Number of items in the holding?
-   **Holdings statements.** Specifies the exact content to which the library has access, typically for continuing publications.
-   **ILL policy.** Select list of values defining the library's lending policy, the ILL policy. For example, Will lend, Will not lend, Will reproduce, Will not reproduce, etc. Configured in [Settings \> Inventory \> ILL policy](../../settings/settings_inventory/settings_inventory/#settings--inventory--ill-policy).
-   **Digitization policy.** Notes about the digitization policy.
-   **Retention policy.** Notes about the retention policy.

##### Adding a holdings statement

1.  Click **Add holdings statement**.
2.  Optional: Enter a **Holdings statement**.
3.  Optional: Enter a **Holdings statement public note**. Bibliographic public note associated with the holdings statement.
4.  Optional: Enter a **Holdings statement staff note**. Bibliographic staff note associated to the holdings statement.
5.  Repeat steps 1-4 as needed. The holdings statement is saved once you save the holdings record.

##### Adding a holding statements for supplement

Specifies the exact content of Supplements to which the library has access, typically for continuing publications.

1.  Click **Add holdings statement for supplements**.
2.  Optional: Enter a **Holdings statement for supplements**.
3.  Optional: Enter a **Holdings statement for supplements public note**.
4.  Optional: Enter a **Holdings statement for supplements staff note**.
5.  Repeat steps 1-4 as needed. The holdings statement is saved once you save the holdings record.

##### Adding a holding statements for indexes

Specifies the exact content of Indexes to which the library has access, typically for continuing publications.

1.  Click **Add holdings statement for indexes**.
2.  Optional: Enter a **Holdings statement for indexes**.
3.  Optional: Enter a **Holdings statement for indexes public note**.
4.  Optional: Enter a **Holdings statement for indexes staff note**.
5.  Repeat steps 1-4 as needed. The holdings statement is saved once you save the holdings record.

##### Deleting a holding statement

1.  Find the holdings statement you want to delete.
2.  Click the **trash can icon** next to the holdings statement. The holdings statement is removed from the record and is deleted once you save the holdings record.

#### Holdings notes

The Holdings notes section contains any notes about the holdings.

##### Adding a note

1.  Click **Add note**.
2.  Select the **Note type** from the drop-down list. Configured in [Settings \> Inventory \> Holdings note types](../../settings/settings_inventory/settings_inventory/#settings--inventory--holdings-note-types).
3.  Enter a **Note** in the box.
4.  Optional: If you want the note to be visible to only staff with the proper permissions to view the note, select the **Staff only** checkbox.
5.  Repeat steps 1-4 as needed. The note is saved once you save the instance.

##### Removing a note

1.  Find the note you want to delete.
2.  Click the **trash can icon** next to the note. The note is removed from the record and is deleted once you save the holdings.

#### Electronic access

In the Electronic access section, you can add online access information for the resource.

##### Adding electronic access

Note: Adding electronic access is optional, but if you click **Add electronic access**, you must enter a **URI** or [delete the electronic access](#deleting-electronic-access) in order to save the holdings.

1.  Click **Add electronic access**.
2.  Optional: Select a **Relationship** from the drop-down list.
3.  Optional: Enter a **URI** in the box.
4.  Optional: Enter **Link text** in the box.
5.  Optional: Enter the **Materials specified** in the box.
6.  Optional: Enter a **URL public note** in the box.
7.  Repeat steps 1-6 as needed. The electronic access is saved once you save the holdings record.

##### Deleting electronic access

1.  Find the electronic access you want to delete.
2.  Click the **trash can icon** next to the electronic access. The electronic access is removed from the record and is deleted once you save the holdings record.

#### Acquisition

The Acquisition section contains information on the acquisition of the holdings.

-   **Acquisition method.** The method by which the holding was acquired.
-   **Order format.** The order format of the holding. For example, DVD or monograph.
-   **Receipt status.** Receipt status. For example, Pending, Awaiting receipt, Partially Received, Fully received, Receipt not required, and Cancelled.

#### Receiving history

Receiving history is used for serials and continuing resources? Shows the materials that have already been received?

##### Adding receiving history

1.  Click **Add receiving history**.
2.  Optional: If you want to display the enumeration and chronology to the public, select the **Public display** checkbox.
3.  Optional: Enter the **Enumeration**.
4.  Optional: Enter the **Chronology**.
5.  Repeat steps 1-4 as needed. The receiving history is saved once you save the holdings record.

##### Deleting receiving history

1.  Find the receiving history you want to delete.
2.  Click the **trash can icon** next to the receiving history. The receiving history is removed from the record and is deleted once you save the holdings record.

## Adding an item to a record

1.  [Find the record](#searching-for-a-record) to which you want to add an item and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click **Add item**.
3.  In the **Item record** window, fill in the Administrative data, Item data, Enumeration data, Condition, Item notes, Loan and availability, Location, and Electronic access sections.  For more information on the fields and actions available in these sections, see the section descriptions below.
4.  Once you have included all of the information you want in the item record, click **Save & close**. The item record is saved.

### Administrative data

-   **Record last updated.** Date and time when the record was last updated. Click **Record last updated** to see the next three fields.
-   **Source.** Name of the user who last updated the record.
-   **Record created.** Date and time when the record was created.
-   **Source.** Name of the user who created the record.
-   **Suppress from discovery.** If you want to suppress the record from your discovery layer, select the **Suppress from discovery** checkbox.
-   **Item HRID.** The human readable ID, also called eye readable ID. A system-assigned sequential ID which maps to the Item ID
-   **Barcode.** Generally a numerical sequence attached to the resource and validated by a barcode scanner. Must be a unique value.
-   **Accession number.** A unique number assigned to an item in the order in which it is added to a library collection. Most libraries assign accession numbers in a continuous numerical sequence, but some use a code system to indicate type of material and/or year of accession in addition to order of accession. Also called inventar number.
-   **Item identifier.** Item identifier number. For example, imported from the union catalog (read only).
-   **Former identifier.** Previous identifiers assigned to the item.
-   **Statistical code.** Statistical codes (e.g. ASER; name: Active serial; type: SERM (Serial management) or books; name: Book, print (books); type ARL (Collection stats) etc.)

#### Adding a former identifier

1.  Click **Add former identifier**.
2.  Enter a **Former identifier** in the box.
3.  Repeat steps 1-2 as needed. The former identifier is saved once you save the item.

#### Adding a statistical code

1.  Click **Add statistical code**.
2.  Select the statistical code from the drop-down list.
3.  Repeat steps 1-2 as needed. The statistical code is saved once you save the item.

#### Deleting a former identifier or statistical code

1.  Find the former identifier or statistical code you want to delete.
2.  Click the **trash can icon** next to the identifier or code. The identifier or code is removed from the record and is deleted once you save the item.

### Item data

The Item data section contains additional information on the item.

-   **Material type (required).** Describes the material nature of a specific item, with the intention to permit more specific information than resource type alone. Configured in [Settings \> Inventory \> Material types](../../settings/settings_inventory/settings_inventory/#settings--inventory--material-types).
-   **Copy number.** Copy number is the piece identifier. The copy number reflects if the library has one (or more) copies of a single-volume monograph; one (or more) copies of a multi-volume, (e.g. Copy 1, or C.7.)
-   **Call number type.** The classification system used for the call number. Select the **Call number type** from the drop-down list. Configured in [Settings \> Inventory \> Call number types](../../settings/settings_inventory/settings_inventory/#settings--inventory--call-number-types).
-   **Call number prefix.** Prefix of the call number on the item level.
-   **Call number.** Call number is an identifier assigned to an item, usually printed on a label attached to the item. The call number is used to determine the resource's physical position in a shelving sequence. For example, K1 .M44.
-   **Call number suffix.** Suffix of the call number on the item level.
-   **Number of pieces.** Number of pieces. Used when an item is checked out or returned to verify that all parts are present (e.g. 7 CDs in a set).
-   **Description of pieces.** Description of pieces. For example, 500 puzzle pieces.

### Enumeration data

The Enumeration data section contains enumeration information for any serials or multipart monographs.

-   **Enumeration.** The descriptive information for the numbering scheme of a serial, usually identified by level and a descriptive caption. For example, level 0 = v. and level 1 = no. This means that each issue of the serial has a volume and an issue number that would appear (v.71:no.2-4).
-   **Chronology.** The descriptive information for the dating scheme of a serial, usually identified by level. For example, level 0 = year level 1 = month. This means that each issue of the serial has a month and a year on each issue (1985:July-Dec.)
-   **Volume.** Volume is intended for multipart monographs. For example, a biography of George Bernard Shaw in three volumes.
-   **Year, caption.** In multipart monographs, a caption is used to label a level of chronology. For example, year 1985.

#### Adding a year, caption

1.  Click **Add year, caption**.
2.  Enter a **Year, caption** in the box.
3.  Repeat steps 1-2 as needed. The year, caption is saved once you save the item.

#### Deleting a year, caption

1.  Find the year, caption you want to delete.
2.  Click the **trash can icon** next to the year, caption. The year, caption is removed from the record and is deleted once you save the item.

### Condition

The Condition section contains information on the condition of the item.

-   **Number of missing pieces.** Number of missing pieces
-   **Missing pieces.** Description of the missing pieces.
-   **Date.** Date when the piece(s) went missing
-   **Item damaged status.** Whether the item is damaged or not damaged
-   **Date.** Date when the pieces were damaged.

### Item notes

The Item notes section contains any notes about the item.

#### Adding a note

1.  Click **Add note**.
2.  Select the **Note type** from the drop-down list. Configured in [Settings \> Inventory \> Item note types](../../settings/settings_inventory/settings_inventory/#settings--inventory--item-note-types).
3.  Enter a **Note** in the box.
4.  Optional: If you want the note to be visible to only staff with the proper permissions to view the note, select the **Staff only** checkbox.
5.  Repeat steps 1-4 as needed. The note is saved once you save the item.

#### Deleting a note

1.  Find the note you want to delete.
2.  Click the **trash can icon** next to the note. The note is removed from the record and is deleted once you save the item.

### Loan and availability

The Loan and availability section contains information on the lending status of the item.

-   **Permanent loan type (required).** The default loan type for the item. For example, Can circulate, Course reserves, Reading room, Selected, etc. Configured in [Settings \> Inventory \> Loan types](../../settings/settings_inventory/settings_inventory/#settings--inventory--loan-types).
-   **Temporary loan type.** A temporary loan type for the item. For example, Can circulate, Course reserves, Reading room, Selected, etc. Configured in [Settings \> Inventory \> Loan types](../../settings/settings_inventory/settings_inventory/#settings--inventory--loan-types).
-   **Status.** Name of the item state. For example, Available, Checked out, In transit, Awaiting pickup, On order, etc. By default, the item's status is set to Available.
-   **Check in / check out notes.** Any notes about the item that you want to appear to staff during check in or check out.

#### Adding check in / check out notes

A check in or check out note is required by default.

1.  Select the **Note type** from the drop-down list. Configured in [Settings \> Inventory \> Item note types](../../settings/settings_inventory/settings_inventory/#settings--inventory--item-note-types).
2.  Enter a **Note** in the box.
3.  Optional: If you want the note to be visible to only staff with the proper permissions to view the note, select the **Staff only** checkbox.
4.  To add another note, click **Add check in / check out note** and repeat steps 1-3. The note is saved once you save the fast add record.

#### Removing check in / check out notes

1.  Find the note you want to delete.
2.  Click the **trash can icon** next to the note. The note is removed from the record and is deleted once you save the fast add record.

### Location

The Location section contains information on the physical or electronic location of the item.

-   **Permanent.** The default location of the resource, which can be a physical location where the resource is stored or an online location. Permanent location is assigned at the holdings level, but can be overridden at the item level, if needed. Select a **Permanent location** from the drop-down list, or click **Location look-up** to select a location.
-   **Temporary.** A temporary location for the resource, which can be a physical location where the resource is stored or an online location. Temporary location can be assigned at the holdings level and overridden at the item level, if needed. Select a **Temporary location** from the drop-down list, or click **Location look-up** to select a location.

### Electronic access

In the Electronic access section, you can add online access information for the resource.

#### Adding electronic access

Note: Adding electronic access is optional, but if you click **Add electronic access**, you must enter a **URI** or [delete the electronic access](#deleting-electronic-access) in order to save the instance..

1.  Click **Add electronic access**.
2.  Optional: Select a **Relationship** from the drop-down list.
3.  Optional: Enter a **URI** in the box.
4.  Optional: Enter **Link text** in the box.
5.  Optional: Enter the **Materials specified** in the box.
6.  Optional: Enter a **URL public note** in the box.
7.  Repeat steps 1-6 as needed. The electronic access is saved once you save the instance.

#### Deleting electronic access

1.  Find the electronic access you want to delete.
2.  Click the **trash can icon** next to the electronic access. The electronic access is removed from the record and is deleted once you save the instance.

## Generating an In transit items report

The In transit items report displays all items with the Item status of In transit.

-   In the Inventory pane, click **Actions \> In transit items report (CSV)**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Saving instances UUIDs

Produces a .csv file that is ONLY a listing of UUIDs

1.  [Find the instances, holdings, or items](#searching-for-a-record) with the instances UUIDs you want to save.
2.  In the Inventory pane, click **Actions \> Save instances UUIDs**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Saving instances CQL query

Produces a file that contains the 'commands' used in the query, in Contextual Query Language (CQL), as defined on dev.folio.org.

1.  [Find the instances, holdings, or items](#searching-for-a-record) with the instances CQL queries you want to save.
2.  In the Inventory pane, click **Actions \> Save instances CQL query**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Exporting instances (MARC)

See [Exporting instances (MARC)](../data-export/#exporting-instances-marc).

## Exporting instances (JSON)

Exporting instances to JSON is not implemented at this time.

## Searching for a record

When you search for a record in Inventory, you can toggle between searching on an instance, holdings, or item level. Searching for an instance record supports bibliographic data searches. Searching for a holdings or item record allows you to search through instance record data along with holdings and item specific data elements.

You can search for instance, holdings, or items by clicking on either **Instance**, **Holdings**, or **Item** in the **Search & filter** pane. The elements available for searching and filtering are different based on your selection, but the results always display instance records.

To search, first select the record type (instance, holdings, or item); enter your search terms into the box and click **Search**. Select the **Keyword (title, contributor, identifier)** drop-down list to search through one of the following:

-   **Keyword (title, contributor, identifier)**. Keyword search through title, contributor, and identifier fields.
-   **Contributor.** Keyword search through all contributor fields. 
-   **Title (all).** Keyword search through all title fields. This includes searching the equivalent of title proper, alternative titles (including uniform titles) and, series titles, but not preceding and succeeding titles.
-   **Identifier (all).** Searches through all identifier types. Not normalized: the search may be left truncated, otherwise the entire identifier, including any prefix, must be entered.
-   **ISBN.** Searches the number exactly as it appears in the data. For example, if there are hyphens in the data, the hyphens must be entered in the search.
-   **ISSN.** Searches should include hyphens.
-   **OCLC number, normalized.** Searches for the OCLC number with or without any prefixes.
-   **Instance notes (all).** Keyword search across all Instance notes; includes administrative notes. 
-   **Instance administrative notes.** Keyword search of instance record administrative notes.
-   **Subject.** Keyword search through all subject fields. This may include Library of Congress Subjects, FAST, and other subject vocabularies, including Genre/Form terms.
-   **Effective call number (item), shelving order.** Retrieves Instance records based on the shelving order element in the item record.
-   **Instance HRID.** Human readable identifier for the instance record.
-   **Instance UUID.** Universally unique identifier for the instance record.
-   **All.** Searches across all fields in all record types. May impact performance.
-   **Query search.** A search for advanced users to query by property names using CQL.
-   **Browse call numbers.** The call number browse is based on the shelving order element in the item record; only Instances with item records will be retrieved. It includes LC, Dewey Decimal, NLM, SuDoc and Local call numbers.
-   **Browse contributors.** The contributor browse is based on the contributor field in Instance records. Names should be entered as they appear in the contributor field.
-   **Browse subjects.** The subject browse is based on the Subject field in instance records.
-   **Call number, eye readable.** Requires you to enter the call number exactly as it appears in the holdings record, including punctuation.
-   **Call number, normalized.** Ignores any characters other than numbers and letters, such as punctuation and spaces.
-   **Holdings notes (all).** Keyword search across all Holdings notes; includes administrative notes. 
-   **Holdings administrative notes.** Keyword search of holdings record administrative notes.
-   **Holdings HRID.** Human readable identifier for the holdings record.
-   **Holdings UUID.** Universally unique identifier for the holdings record.
-   **Barcode.** Allows you to scan, copy/paste, or type a barcode.
-   **Effective call number (item) eye readable.** Requires you to enter the call number exactly as it appears in the holdings record, including the punctuation and call number prefix.
-   **Effective call number (item), normalized.** Ignores any characters other than numbers and letters, such as punctuation and spaces.
-   **Item notes (all).** Keyword search across all item notes; includes administrative notes, check in and check out notes.
-   **IItem administrative notes.** Keyword search of item record administrative notes.
-   **Circulation notes.** Keyword search across check in and check out notes.
-   **Item HRID.** Human readable identifier for the item record.
-   **Item UUID.** Universally unique identifier for the item record.

You can also search for instance, holdings, or item records by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. The filters available vary depending on whether you are searching for an instance, holdings, or item record. See the sections below for more information.

When using filters, keep the following in mind:

-   Multiple filters can be combined to further limit searches.
-   Multiple values in the same filter are combined with "OR."
-   Multiple values in different filters are combined with "AND."

For example, a search filtered by multiple locations finds resources that match any of those locations. However, a search filtered by a location and a language finds resources in that location and in that language.

### Effective location (item)

To search for instances, holdings, or items based on their effective location, follow these steps:

1.  In the **Search & filter** pane, under **Effective location (item)**, click the drop-down list.
2.  Either enter the location or select it from the list.
3.  Repeat step 2 to add more than one location. Your search results appear in the Inventory pane.

### Language

To search for instances in a specific language, follow these steps:

1.  In the **Search & filter** pane, click **Language**.
2.  Click the drop-down list and either enter the language or select it from the list.
3.  Repeat step 2 to add more than one language. Your search results appear in the Inventory pane.

### Resource type

To search for instances with a specific resource type, follow these steps:

1.  In the **Search & filter** pane, click **Resource Type**.
2.  Click the drop-down list and either enter the resource type or select it from the list.
3.  Repeat step 2 to add more than one resource type. Your search results appear in the Inventory pane.

### Format

To search for instances with a specific format, follow these steps:

1.  In the **Search & filter** pane, click **Format**.
2.  Click the drop-down list and either enter the format or select it from the list.
3.  Repeat step 2 to add more than one format. Your search results appear in the Inventory pane.

### Mode of issuance

To search for instances based on their mode of issuance, follow these steps:

1.  In the **Search & filter** pane, click **Mode of issuance**.
2.  Click the drop-down list and either enter the mode or select it from the list.
3.  Repeat step 2 to add more than one mode. Your search results appear in the Inventory pane.

### Nature of content

To search for instances based on their nature of content, follow these steps:

1.  In the **Search & filter** pane, click **Nature of content**.
2.  Click the drop-down list and either enter the nature of content or select it from the list.
3.  Repeat step 2 to add more than one nature of content. Your search results appear in the Inventory pane.

### Staff suppress

To search for instances by whether or not they are suppressed to staff, in the **Search & filter** pane, click **Staff suppress** and select one of the following:

-   **Yes.** The instance is suppressed to staff.
-   **No.** The instance is not suppressed to staff.

### Suppress from discovery

To search for instances, holdings, or items by whether or not they are suppressed from discovery, in the **Search & filter** pane, click **Suppress from discovery** and select one of the following:

-   **Yes.** The instance, holding, or item is suppressed from discovery
-   **No.** The instance, holding, or item is not suppressed from discovery.

### Statistical code

To search for instances, holdings, or items based on their statistical code, follow these steps:

1.  In the **Search & filter** pane, click **Statistical code**.
2.  Click the drop-down list and either enter the code/code name or select it from the list.
3.  Repeat step 2 to add more than one statistical code. Your search results appear in the Inventory pane.

### Date created

To search for instances based on the date they were created, follow these steps:

1.  In the **Search & filter** pane, click **Date created**.
2.  Enter a start date in the **From** box and an end date in the **To** box.
3.  Click **Apply**. Your search results appear in the Inventory pane.

### Date updated

To search for instances based on the date they were last updated, follow these steps:

1.  In the **Search & filter** pane, click **Date updated**.
2.  Enter a start date in the **From** box and an end date in the **To** box.
3.  Click **Apply**. Your search results appear in the Inventory pane.

### Instance status

To search for instances based on the instance status, follow these steps:

1.  In the **Search & filter** pane, click **Instance status**.
2.  Select the status from the list.
3.  Repeat step 2 to select multiple instance statuses. 
4.  Your search results appear in the Inventory pane.

### Source

To search for instances based on their source, follow these steps: 

1.  In the **Search & filter** pane, click **Source.**
2.  Select the source from the list.
3.  Repeat step 2 to select multiple sources
4.  Your search results appear in the Inventory pane.

Note: Sources may vary across institutions. The following are examples of sources that may appear:
-   **FOLIO.** The instance was created in FOLIO.
-   **MARC.** The instance was created by uploading MARC records.

### Tags

To search for instances based on assigned tags, follow these steps: 

1.  In the **Search & filter** pane, click **Tags**.
2.  Click the drop-down list and either enter the tag or select it from the list.
3.  Repeat step 2 to add more than one tag. Your search results appear in the Inventory pane.

### Holdings permanent location

To search for holdings or items based on their holdings permanent location, follow these steps:

1.  In the **Search & filter** pane, click **Holdings permanent location**.
2.  Click the drop-down list and either enter the holdings permanent location or select it from the list.
3.  Repeat step 2 to add more than one holdings permanent location. Your search results appear in the Inventory pane.

### Holdings type

To search for holdings or items based on their holdings type, follow these steps:

1.  In the **Search & filter** pane, click **Holdings type**.
2.  Click the drop-down list and either enter the holdings type or select it from the list.
3.  Repeat step 2 to add more than one holdings type. Your search results appear in the Inventory pane.

### Item status

To search for items based on their item status, follow these steps:

1.  In the **Search & filter** pane, under **Item status**, click the drop-down list.
2.  Either enter the item status or select it from the list.
3.  Repeat step 2 to add more than one status. Your search results appear in the Inventory pane.

### Material type

To search for items based on their material type, follow these steps:

1.  In the **Search & filter** pane, click **Material type**.
2.  Click the drop-down list and either enter the material type or select it from the list.
3.  Repeat step 2 to add more than one material type. Your search results appear in the Inventory pane.


## Viewing an instance record

Once you search for an instance, holding, or item, the following information appears in the Inventory pane:

-   **Title.** Title of the instance.
-   **Contributors.** Contributors of the instance.
-   **Publishers.** Publisher of the instance.
-   **Relation.** Relation to other instances?

In the search results, click any result to view the instance record.

### Viewing holdings records

Holdings records can be viewed once you have an instance record opened.

To view a holdings record, follow these steps:

1.  [Find the instance](#searching-for-a-record) with the holdings record you want to view and select it.
2.  In the **Instance record details** pane, the **Holdings** section, click **View holdings**. The Holding record details window appears.

### Viewing an item record

Item records can be viewed once you have an instance record opened.

To view an item record, follow these steps:

1.  [Find the instance](#searching-for-a-record) with the item record you want to view and select it.
2.  In the **Instance record details** pane, expand  the **Holdings** accordion.
3. Click the **Item barcode** of the item you want to view. The Item record details window appears.

## Editing an instance record

1.  [Find the instance](#searching-for-a-record) you want to edit and select it.
2.  In the **Instance record details** pane, click **Actions \> Edit**.
3.  Make your desired changes to the instance record.
4.  Click **Save and close**. The instance record is updated.

## Editing an instance record with underlying MARC

See [Editing a MARC record using quickMARC](quickmarc/#Editing a MARC record using quickmarc).

## Updating an instance record with underlying MARC using the Overlay source bibliographic record action in FOLIO

1.  [Find the instance](#searching-for-a-record) you want to edit and select it.
2.  In the **Instance record details** pane, click **Actions \> Overlay source bibliographic record**.
3. In the **Single Record Import** dialog box, select the source of the record to be imported (e.g., Library of Congress, OCLC WorldCat, BnF).
4.  Enter the record number, without any prefixes, in the **Enter [source] identifier** box.
5.  Click **Import**.

The selected instance record and any underlying source data will be replaced by the re-imported record. The instance uuid and hrid as well as manually configurable Administrative Data such as suppression from discovery, instance status, cataloged date, and any statistical codes assigned will remain the same. Some configurations may be made locally to the import profile used for single record import. These changes are made in the [settings for Data Import](../../settings/settings_data_import/settings_data_import/).

## Duplicating an instance record

1.  [Find the instance](#searching-for-a-record) you want to duplicate and select it.
2.  In the **Instance record details** pane, click **Actions \> Duplicate**.
3.  In the **New instance** window, make your desired changes to the record.
4.  Click **Save and close**. The instance is duplicated.

## Moving items within an instance

To move items to a different holdings record within the same instance record, follow these steps:

1.  [Find the instance](#searching-for-a-record) with the items you want to move and select it.
2.  In the **Instance record details** pane, click **Actions \> Move items within an instance**. A drag and drop column and checkbox column appear in the Holdings tables.
3.  In the **Holdings** section, you can move items to another holding by following either of these steps:
    1.  Click the **drag and drop column** of the item you want to move and drag it over to the Holdings table to which you want to move it. A confirmation message appears and the item appears in its new Holdings table.
    2.  Select the checkbox in the row of the item you want to move and click **Move to \> [Holdings record]**. A confirmation message appears and the item appears in its new Holdings table.
4.  Optional: Repeat step 3 as needed.
5.  Once you are finished, click **Actions \> Stop items movement within an instance**.

## Moving holdings or items to another instance

1.  [Find the instance](#searching-for-a-record) with the holdings or items you want to move and select it.
2.  In the **Instance record details** pane, click **Actions \> Move holdings/items to another instance**.
3.  In the **Select instance** dialog, in the **Search & filter** pane, search for the instance to which you want to move the holdings or items by entering search words in the box.
4.  Optional: Filter your results by Language, Resource Type, or Location.
5.  In the **Search results**, click on the instance to select it. Both instance records appear in the window and have drag and drop columns and checkbox columns in their Holdings tables.
6.  To move **holdings** to another instance, follow either of these steps:
    1.  Click the **\^** next to the **Holdings name** of the holding record you want to move and drag it over to the Holdings section to which you want to move it. In the **Confirm move** dialog, click **Continue**. The holding appears in its new Holdings section.
    2.  Click **Move to \> [Instance record]**. In the **Confirm move** dialog, click **Continue**. The holding appears in its new Holdings section.
7.  To move **items** to another instance, follow either of these steps:
    1.  Click the **drag and drop column** in the row of the item you want to move and drag it over to the Holdings table to which you want to move it. In the **Confirm move** dialog, click **Continue**. The item appears in its new Holdings table.
    2.  Select the **checkbox** in the row of the item you want to move and click **Move to \> [Instance record Holdings record]**. In the **Confirm move** dialog, click **Continue**. The item appears in its new Holdings table.
8.  Once you are finished, click the **X** at either of the instance records.

## Viewing requests

1.  [Find the instance](#searching-for-a-record) with the requests you want to view and select it.
2.  In the **Instance record details** pane, click **Actions \> View requests (number of requests)**. The Requests on items window appears.

## Deleting an instance record

Note: An instance record cannot be deleted, but it may be suppressed.

1.  [Find the instance](#searching-for-a-record) you want to delete and select it.
2.  In the **Instance record details** pane, click **Actions \> Edit**.
3.  In the **Edit** window, under **Administrative data**, click **Suppress from discovery**.
4.  Click **Save and close**. The instance record is updated.

## Editing holdings records

1.  [Find the instance](#searching-for-a-record) with the holdings record you want to edit and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click **View holdings**.
3.  In the **Holdings record** window, click **Actions \> Edit**.
4.  Make your desired changes to the holding record.
5.  Click **Save and Close**. The holding record is updated.

## Duplicating holdings records

1.  [Find the instance](#searching-for-a-record) with the holdings record you want to edit and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click **View holdings**.
3.  In the **Holdings record** window, click **Actions \> Duplicate**.
4.  Make your desired changes to the holding record.
5.  Click **Save and Close**. The holding record is duplicated.

## Deleting holdings records

1.  [Find the instance](#searching-for-a-record) with the holdings record you want to edit and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click **View holdings**.
3.  In the **Holdings record** window, click **Actions \> Delete**.
4.  In the **Confirm deletion of holdings record** dialog, click **Delete**. The holding record is deleted.

## Editing an item record

1.  [Find the instance](#searching-for-a-record) with the item you want to edit and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click the **Item barcode** of the item.
3.  In the **Item record details** window, click **Actions \> Edit**.
4.  Make your desired changes to the item record.
5.  Click **Save and close**. The item record is updated.

## Duplicating an item record

1.  [Find the instance](#searching-for-a-record) with the item you want to duplicate and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click the **Item barcode** of the item.
3.  In the **Item record details** window, click **Actions \> Duplicate**.
4.  Make your desired changes to the item record.
5.  Click **Save and close**. The item record is duplicated.

## Deleting an item record

1.  [Find the instance](#searching-for-a-record) with the item you want to delete and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click the **Item barcode** of the item.
3.  In the **Item record details** window, click **Actions \> Delete**.
4.  In the **Confirm deletion of item** dialog, click **Delete**. The item record is deleted.

## Marking item status

1.  [Find the instance](#searching-for-a-record) with the item you want to change.
2.  In the **Instance record details** pane, in the **Holdings** section, click the **Item barcode** of the item.
3.  In the **Item record details** window, click **Actions \> Mark as …**.
4.  In the **Confirm item status ** dialog, click **Confirm**. The item record is updated and its Item status changes to the value selected.

Note: See **[Platform Essentials](../../platform-essentials/item-status/itemstatus/)** for more information on Item status.

## Creating a new order

1.  [Find the instance](#searching-for-a-record) for which you want to add an order.
2.  In the **Instance record details** pane, click **Actions \> New order**.
3.  In the **Create order** dialog box, you can enter an existing PO number to add a new purchase order line to an existing purchase order: [Orders > Adding an order line to an order](../../acquisitions/orders/#adding-an-order-line-to-an-order), or leave the PO number field black to create a new purchase order and purchase order line: [Orders > Creating an order](../../acquisitions/orders/#creating-an-order)

## Creating a new request

1.  [Find the instance](#searching-for-a-record) with the item you want to create a new request for and select it.
2.  In the **Instance record details** pane, in the **Holdings** section, click the **Item barcode** of the item.
3.  In the **Item record details** window, click **Actions \> New Request**.
4.  In the New request window, Select a **Request type**. The options that appear depend on the Item status of the item you are requesting.
5.  Optional: Enter a **Request expiration date**. If the request is still open by the selected date, it closes and its status changes to Closed - Unfilled.
6.  In the **Requester information** box, either scan the requester's barcode or enter the barcode and click **Enter**.
7.  If you do not have the requester's barcode, click **Requester look-up** to search for the patron:
    1.  In the **Select User** dialog, search for the requester.
    2.  Once you find the requester, select them from the **User Search Results** list. They are applied to the request and their information appears.
8.  Select the **Fulfilment preference**.
9.  Select the **Pickup service point** or **Delivery address**, depending on your selection in the previous step.
10. Click **Save & close**. The request is saved and the Request Detail pane appears. The patron receives an email notification saying their request was received by the library, if you have this notification configured.
