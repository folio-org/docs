---
title: "Settings > Data import"
linkTitle: "Data import"
date: 2022-03-21
weight: 70
tags: ["subtopic"]   
---

The Data export section of the Settings app is where you can configure the source and structure of the import files, map incoming records to existing records, configure the types of action to be taken on an import (creating new records, updating existing records, etc.), and define ways to transform the data and map data to particular fields (add a value to the information to the incoming record when importing such as a proxy).

It is recommended that you configure the Data import settings in the following order:

1.  Field mapping profile
2.  Action profile
3.  Match profile
4.  Job profile

## Permissions

In order to interact with Data import settings, a user needs to be assigned the following permission:

-   **Settings (Data import): Can view, create, edit, and remove.** This permission allows the user to see and use the Data import settings.

Note: This is the only permission available for Data import settings. You are unable to view and access Data import settings if you do not have this permission assigned to you. You can assign permissions to users in the Users app.

## Settings \> Data import \> Job profiles

Job profiles define the type of import at the highest level. A job profile contains all of the steps needed to complete an individual data import job: field mapping, action, and matching.

### Creating an import job profile

1.  In the **Job profiles** pane, click **Actions \> New job profile**.
2.  In the New job profile window, enter a **Name** for the job profile.
3.  Select the **Accepted data type**: MARC or EDIFACT. This is the accepted format of the imported record.
4.  Optional: Enter a **Description** of the job profile.
5.  In the **Overview** accordion, you can add or remove **Match Profiles** and **Action Profiles.** When you add a **Match Profile**, you repeat this process for when matches are found and when non-matches are found. Using this, you can nest several **Match Profiles** together to enable matching on multiple data fields. Any **Action Profile** or **Match Profile** you wish to add must already exist before adding them to the **Job Profile**.
6.  Click **Save as profile & Close**. A confirmation message appears and the job is created.

### Searching for an import job profile

Use the search bar to search for job profiles contained in the Job profile table.

The Job profiles table contains the following columns:

-   **Name.** Name of the job profile.
-   **Tags.** Any tags assigned to the job profile
-   **Updated.** Date the job profile was last updated.
-   **Updated by.** User who last updated the job profile.

You can click on any column name to sort by that column.

### Viewing an import job profile

To view the details of a job profile, follow these steps:

-   In the **Job profiles** pane, find the profile you want to view and select it. The **import job profile details** window appears.

### Editing an import job profile

1.  In the **Job profiles** pane, find and select the job profile you want to edit.
2.  In the **job profile details** pane, click **Actions \> Edit**.
3.  Make your desired changes to the job profile.
4.  Click **Save as profile & Close**. A confirmation message appears and the job profile is updated.

### Duplicating an import job profile

1.  In the **Job profiles** pane, find and select the job profile you want to duplicate.
2.  In the **job profile details** pane, click **Actions \> Duplicate**.
3.  In the **New job profile** window, make your desired changes.
4.  Click **Save as profile & Close**. A confirmation message appears and the duplicate job profile is created.

### Deleting an import job profile

1.  In the **Job profiles** pane, find and select the job profile you want to delete.
2.  In the **job profile details** pane, click **Actions \> Delete**.
3.  In the **Delete job profile** dialog, click **Delete**. A confirmation message appears and the job profile is deleted.

### Adding a tag to an import job profile

1.  In the **Job profiles** pane, find and select the job profile you want to tag.
2.  In the **job profile details** pane, click **Tags**.
3.  In the **Tags** box, either select a tag or enter a tag. The tag is automatically applied to the job.

### Exporting an import job profile

Exporting an import job profile is not implemented at this time.

## Settings \> Data import \> Match profiles

Match profiles define the match between an incoming record and existing record. Match profiles can be used for multiple job profiles.

Before creating a match profile, you should first create action profiles and field mapping profiles.

### Creating an import match profile

1.  In the **Match profiles** pane, click **Actions \> New match profile**.
2.  In the **New match profile** window, enter a **Name** for the match profile.
3.  Optional: Enter a **Description** of the match profile.
4.  In the **Details** section, select the format of the incoming record, then select the format of the existing record to which you are matching.
5.  In the **Match criteria** section, select the field to match from the incoming record and the corresponding field to match on in the existing record.
6.  Click **Save as profile & Close**. A confirmation message appears and the match profile is created.

### Searching for an import match profile

Use the search bar to search for match profiles contained in the Match profile table.

The Match profiles table contains the following columns:

-   **Name.** Name of the match profile.
-   **Match.** The match contained within the match profile.
-   **Tags.** Any tags assigned to the match profile
-   **Updated.** Date the match profile was last updated.
-   **Updated by.** User who last updated the match profile.

You can click on any column name to sort by that column.

### Viewing an import match profile

To view the details of a match profile, follow these steps:

-   In the **Match profiles** pane, find the profile you want to view and select it. The **match profile details** window appears.

### Editing an import match profile

1.  In the **Match profiles** pane, find and select the match profile you want to edit.
2.  In the **match profile details** pane, click **Actions \> Edit**.
3.  Make your desired changes to the match profile.
4.  Click **Save as profile & Close**. A confirmation message appears and the match profile is updated.

### Duplicating an import match profile

1.  In the **Match profiles** pane, find and select the match profile you want to duplicate.
2.  In the **match profile details** pane, click **Actions \> Duplicate**.
3.  In the **New match profile** window, make your desired changes.
4.  Click **Save as profile & Close**. A confirmation message appears and the duplicate match profile is created.

### Deleting an import match profile

1.  In the **Match profiles** pane, find and select the match profile you want to delete.
2.  In the **match profile details** pane, click **Actions \> Delete**.
3.  In the **Delete match profile** dialog, click **Delete**. A confirmation message appears and the match profile is deleted.

### Exporting an import match profile

Exporting an import match profile is not implemented at this time.

## Settings \> Data import \> Actions profiles

Action profiles define specific actions to take on import with the incoming records and/or existing records.

Before creating an action profile, you should first create field mapping profiles.

### Creating an import action profile

1.  In the **Action profiles** pane, click **Actions \> New action profile**.
2.  In the **New action profile** window, enter a **Name** for the profile.
3.  Optional: Enter a **Description** of the profile.
4.  In the **Action** drop-down list, select one of the following:
    <ol type="a">
      <li><strong>Create.</strong> Select to create a new record.</li>
      <li><strong>Update.</strong> Select to update an existing record.</li>
      <li><strong>Modify.</strong> Select to modify the incoming record prior to either creating or updating a record. Use for incoming MARC records only.</li>
    </ol>
5.  In the **FOLIO record type** drop-down list, select the record type that results from the action selected.
6.  Optional: To associate a field mapping profile with the action profile, click **Link Profile**. This field mapping profile must already exist to link to it. An action profile can only be linked to one field mapping profile. If an action profile is edited, those edits are reflected in all field mapping and job profiles where the action profile is used.
    <ol type="a">
      <li>In the <strong>Select Field Mapping Profiles</strong> dialog, use the search box to find the field mapping profile you want to add to the action profile.</li>
      <li>Click the field mapping profile to select it. The field mapping profile is added to the action profile.</li>
    </ol>
7.  Click **Save as profile & Close**. A confirmation message appears and the action profile is saved.

### Searching for an import action profile

Use the search bar to search for action profiles contained in the Action profile table.

The Action profiles table contains the following columns:

-   **Name.** Name of the action profile.
-   **Action.** The action contained within the action profile.
-   **Tags.** Any tags assigned to the action profile
-   **Updated.** Date the action profile was last updated.
-   **Updated by.** User who last updated the action profile.

You can click on any column name to sort by that column.

### Viewing an import action profile

To view the details of a match profile, follow these steps:

-   In the **Action profiles** pane, find the profile you want to view and select it. The **action profile details** window appears.

### Editing an import action profile

1.  In the **Action profiles** pane, find and select the action profile you want to edit.
2.  In the **action profile details** pane, click **Actions \> Edit**.
3.  Make your desired changes to the match profile.
4.  Click **Save as profile & Close**. A confirmation message appears and the match profile is updated.

### Duplicating an import action profile

1.  In the **Action profiles** pane, find and select the action profile you want to duplicate.
2.  In the **action profile details** pane, click **Actions \> Duplicate**.
3.  In the **New action profile** window, make your desired changes.
4.  Click **Save as profile & Close**. A confirmation message appears and the duplicate action profile is created.

### Deleting an import action profile

1.  In the **Action profiles** pane, find and select the action profile you want to delete.
2.  In the **action profile details** pane, click **Actions \> Delete**.
3.  In the **Delete action profile** dialog, click **Delete**. A confirmation message appears and the action profile is deleted.

### Exporting an import action profile

Exporting an import action profile is not implemented at this time.

### Adding a tag to an import action profile

1.  In the **Action profiles** pane, find and select the action profile you want to tag.
2.  In the **action profile details** pane, click **Tags**.
3.  In the **Tags** box, either select a tag or enter a tag. The tag is automatically applied to the profile.

## Settings \> Data import \> Field mapping profiles

Field mapping profiles map fields of the incoming records to FOLIO according to the actions associated with that field mapping.

### Creating an import field mapping profile

1.  In the **Field mapping profiles** pane, click **Actions \> New field mapping profile**.
2.  In the **New field mapping profile** window, enter a **Name** for the field mapping profile.
3.  Select an **Incoming record type** from the drop-down list: MARC Bibliographic or EDIFACT invoice.
4.  Select a **FOLIO record type** from the drop-down list: Instance, Holdings, Item, Invoice, or MARC Bibliographic. Depending on your selection, different options appear. The field mapping details are designed to mimic the FOLIO record's create/edit screen as much as possible. However individual fields may be populated with a reference to a particular field in the incoming record, a default value, or a combination of both. See the sections below for more information.
5.  Optional: Enter a **Description** for the field mapping profile.
6.  Optional: To link action profiles to the field mapping profile, under **Associated action profiles**, click **Link Profile**, and follow these steps:
    <ol type="a">
      <li>In the <strong>Select Action Profiles</strong> dialog, use the search box to find the action profiles you want to associate with the field mapping profile.</li>
      <li>Select the <strong>checkboxes</strong> next to the action profiles and click **Save**. The action profiles are added to the field mapping profile.</li>
    </ol>
7.  Click **Save & close**. A confirmation message appears and the field mapping profile is created.

#### Instance

Note: Inactive fields cannot be mapped because they are controlled by the system or by the library's MARC-Instance mapping profile

-   In the **Field mapping - Instance** section, fill in the applicable fields. For more information on the fields, see [Creating an instance record manually in FOLIO](../../../metadata/inventory/#creating-an-instance-record-manually-in-folio).

#### Holdings

-   In the **Field mapping - Holdings** section, fill in the applicable fields. For more information on the fields, see [Adding holdings to a record](../../../metadata/inventory/#adding-holdings-to-a-record).

#### Item

-   In the **Field mapping - Item** section, fill in the applicable fields. For more information on the fields, see [Adding an item to a record](../../../metadata/inventory/#adding-an-item-to-a-record).

#### Invoice

-   In the **Field mapping - Invoice** section, fill in the applicable fields. Required fields are marked with an asterisk (\*). For more information on the fields, see [Creating an invoice](../../../acquisitions/invoices/#creating-an-invoice).

#### MARC Bibliographic

1.  Select the **Field mappings for MARC** from the drop-down list: Modifications or Updates.
2.  If you selected **Modifications**, follow these steps:
    <ol type="a">
      <li>In the <strong>Field mapping - MARC Bibliographic - Modifications</strong> section, in the Action column, select the modification you want to occur: Add, Delete, Edit, or Move.</li>
      <li>Enter a MARC <strong>Field</strong> in the box.</li>
      <li>Optional: By default, the <strong>Indicators</strong> and <strong>Subfield</strong> fields are populated with the asterisk (\*) wildcard, which includes all data within those fields. If needed, you can update these fields with specific data.</li>
      <li>Select a <strong>Subaction</strong> from the drop-down list. The Subaction options vary spending on the Action you selected. Fill out any fields that appear that are associated with the subaction.</li>
      <li>If you selected <strong>Add</strong> or <strong>Edit</strong> as the Action, enter Data into the box.</li>
      <li>To add another field mapping, click the <strong>+</strong> and repeat steps a-e.</li>
      <li>To delete a field mapping, click the <strong>trash can icon</strong>.</li>
    </ol>
3.  If you selected **Updates**, follow these steps:
    <ol type="a">
      <li>If updates should only affect specific fields, In the <strong>Field mapping - MARC Bibliographic - Modifications</strong> section, click <strong>Add field</strong> and fill in the <strong>Field</strong>, <strong>In.1</strong>, <strong>In.2</strong>, and <strong>Subfield</strong> boxes. To add another field, click the <strong>+</strong>. To delete a field, click the <strong>trash can icon</strong>.</li>
      <li>If any protected field should be updated by the profile, select the <strong>checkboxes</strong> in the <strong>Override</strong> column for each field that you want to update.</li>
    </ol>

### Searching for an import field mapping profile

Use the search bar to search for field mapping profiles contained in the Field mapping profile table.

The Field mapping profiles table contains the following columns:

-   **Name.** Name of the field mapping profile.
-   **FOLIO record type.** The record type affected by the field mapping profile.
-   **Tags.** Any tags assigned to the actifield mapping on profile
-   **Updated.** Date the action field mapping was last updated.
-   **Updated by.** User who last updated the field mapping profile.

You can click on any column name to sort by that column.

### Viewing an import field mapping profile

To view the details of a field mapping profile, follow these steps:

-   In the **Field mapping profiles** pane, find the profile you want to view and select it. The **field mapping profile details** window appears.

### Editing an import field mapping profile

1.  In the **Field mapping profiles** pane, find the profile you want to edit and select it.
2.  In the **field mapping profile details** window, click **Actions \> Edit**.
3.  Make your changes to the profile.
4.  Click **Save & close**. A confirmation message appears and the field mapping profile is updated.

### Duplicating an import field mapping profile

1.  In the **Field mapping profiles** pane, find the profile you want to duplicate and select it.
2.  In the **field mapping profile details** window, click **Actions \> Duplicate**.
3.  In the **New field mapping profile** window, make your desired changes to the duplicated policy.
4.  Click **Save & close**. A confirmation message appears and the field mapping profile is created.

### Deleting an import field mapping profile

1.  In the **Field mapping profiles** pane, find the profile you want to delete and select it.
2.  In the **field mapping profile details** window, click **Actions \> Delete**.
3.  In the **Delete mapping profile** dialog, click **Delete**. A confirmation message appears and the field mapping profile is deleted.

### Exporting an import field mapping profile

Exporting an import action profile is not implemented at this time.

### Adding a tag to an import field mapping profile

1.  In the **Field mapping profiles** pane, find the profile you want to tag and select it.
2.  In the **field mapping profile details** window, click **Tags**.
3.  In the **Tags** box, either select a tag or enter a tag. The tag is automatically applied to the profile.

## Settings \> Data import \> File extensions

Use File extensions to configure which file formats are allowed for import and which are blocked and cannot be imported. For example, you may want to block .mrk files from import. If a file has an extension that isn't in the list, the file can be uploaded and import is attempted. If there are problems with the file structure or data, the import fails, and that is reflected in the Data import log.

### Adding a new file extension

1.  In the **File extensions** pane, click **Actions \> New file extension**.
2.  In the **New file extension mapping** window, enter a **Description** of the file extension.
3.  Enter the **File extension** in the box.
4.  Optional: If the extension is to be blocked from import, select **Block import**.
5.  In the **Data type(s)** field, select the data types to which the extension applies: MARC and/or EDIFACT.
6.  Click **Save as file extension & Close**. A confirmation message appears and the file extension is added.

### Searching for a file extension

Use the search bar to search for file extensions contained in the File extensions table.

The File extensions table contains the following columns:

-   **Extension.** The file extension.
-   **Block import.** Whether an import of the file extension is allowed or blocked.
-   **Data type(s).** The data type associated with the file extension.

You can click on any column name to sort by that column.

### Viewing a file extension

To view the details of a file extension profile, follow these steps:

-   In the **File extensions** pane, find the file extension you want to view and select it. The **file extension details** window appears.

### Editing a file extension

1.  In the **File extensions** pane, find the file extension you want to edit and select it.
2.  In the **file extension details** pane, click **Actions \> Edit**.
3.  Make your desired changes to the file extension.
4.  Click **Save as file extension & Close**. A confirmation message appears and the file extension is updated.

### Deleting a file extension

1.  In the **File extensions** pane, find the file extension you want to delete and select it.
2.  In the **file extension details** pane, click **Actions \> Delete**.
3.  In the **Delete file extension** dialog, click **Delete**. A confirmation message appears and the file extension is deleted.

## Settings \> Data import \> MARC field protection

Use this setting to protect all or part of a particular MARC field from updates when new copies of MARC records are imported.

Field protection differs for repeatable and non-repeatable fields. If the field is repeatable, the existing field is retained and a new field is created with the new data. If the field is non-repeatable, the existing field is retained and the updated data is discarded.

### Adding a MARC field protection

The asterisk (\*) is the only available wildcard. When used, it means anything.

1.  In the **MARC field protection** pane, click **New**.
2.  Enter the **Field**.
3.  If you want to protect all data within that field, regardless of Indicator, Subfield, and Data, leave an asterisk (\*) in each field, otherwise fill in the fields.
4.  Click **Save**. The MARC field is added to the table.

### Editing a MARC field protection

1.  In the **MARC field protection** pane, click the **pencil icon** in the row of the field you want to edit.
2.  Make your desired edits.
3.  Click **Save**. The MARC field is updated.

### Deleting a MARC field protection

1.  In the **MARC field protection** pane, click the **trash can icon** in the row of the field you want to delete.
2.  In the **Delete MARC field protection** dialog, click **Delete**. A confirmation message appears and the MARC field protection is deleted.
