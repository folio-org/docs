---
title: "MARC authority"
linkTitle: "MARCauthority"
date: 2024-04-19
weight: 30
tags: ["parenttopic"]
---

The MARC authority app allows the management of MARC authority records within FOLIO.

Definition of terms related to the MARC authority app:

-   **Access point.** Element in a bibliographic record intended to be searched, e.g., contributor's name, title, subject. Also referred to as a “heading.”
-   **Authority record.** A record that records the authorized forms of names, subjects, and subject subdivisions to be used in constructing access points in MARC records, the forms of these names, subjects, and subject subdivisions that should be used as references to the authorized forms, and the interrelationships among these forms.
-   **Authorized access point.** An access point that is represented by an authority record.
-   **Heading.** Same as: access point.
-   **Reference.** An entry in an authority record that points the user to either the authorized access point or a related authorized access point.

## Permissions

The permissions listed below allow you to interact with the Inventory app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app.

-   **MARC Authority: View MARC authority record.** This permission allows the user to view authority records.
-   **MARC Authority: Edit MARC authority record.** This permission allows the user to edit authority records.
-   **MARC Authority: Delete MARC authority record.** This permission allows the user to delete authority records.
-   **MARC Authority: Create new MARC authority record.** This permission allows the user to create authority records.
-   **quickMARC: View, edit MARC authority record.** This permission allows the user to view and edit MARC authority records.

## Keyboard shortcuts

Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform Essentials \> Keyboard shortcuts](../../../platform-essentials/keyboard-shortcuts/keyboardshortcuts/) for more information.

## Viewing a MARC authority record

The full MARC record opens in the third pane once you search for and select an authority record. The heading or reference you selected will be highlighted in the record.

## Creating MARC authority records 

### Creating new MARC authority records via Data Import

MARC authority records can be created via [Data import](../../data-import/). To create one or more authority records via Data Import, see instructions on [starting a data import job](../../data-import/#starting-a-data-import-job).

### Creating new MARC authority records in the MARC Authority app

To create a new authority record in the MARC authority app, follow these steps:

1. Open the **MARC authority app**.
2. Click **Actions \> New**.
3. Follow instructions for [editing authority records via quickMARC](#editing-marc-authority-records-via-quickmarc).

## Editing MARC authority records 

### Updating MARC authority records via [Data import](../../data-import/)

MARC authority records can be updated via [Data import](../../data-import/). To update one or more authority records via Data Import, see instructions on [starting a data import job](../../data-import/#starting-a-data-import-job).

### Editing MARC authority records via quickMARC

When viewing the MARC authority record you wish to edit, click **Edit** in the upper right. The record opens in edit mode. 

In the Edit MARC authority record window, you can perform the following actions:

-   **Add a field.** To add a field, click the **+**. The new field appears below.
-   **Delete a field.** To delete a field, click the **trash can icon**. The field is deleted.
-   **Move a field up.** To move a field up, click the **up arrow** in the row of the field you want to move. The field is moved one row up.
-   **Move a field down.** To move a field down, click the **down arrow** in the row of the field you want to move. The field is moved one row down.
-   **Edit text within a field.** Click into a field to make changes to the text. To add a literal dollar sign (\$) in a field, enter {dollar}.
-   Once you have made your desired changes, click **Save & close**. A confirmation record appears, and the record is updated.

### Validations and restrictions
 
A subfield is defined by a \$ (dollar sign).  
Tags must consist of 3 numeric characters.  
Indicators must consist of single characters.

The following validation rules and restrictions apply:

-   Fields 001 and 999ff are system supplied and cannot be edited or deleted.
-   1xx is required and non-repeatable.
-   The leader (LDR) field can be edited via dropdown menus under each position. Only Record status (Status, corresponds with position 05), Type of record (Type, position 06), Encoding Level (Elvl, position 17), and Punctuation policy (Punct, position 18) can be edited.
-   No other validation is performed.

## Deleting MARC authority records

To delete a MARC authority record, follow these steps:

1. Click **Actions \> Delete**
2. In the **Confirm deletion of authority record** dialog, click **Delete**. The authority record is deleted.

## Searching for authority records
You can search for MARC authority records in the **Search & filter** pane. Enter your search terms in the box and click **Search**. Select the **Keyword** drop-down list to search through one of the following:

-   **Keyword.** Keyword search through the title, contributor, and identifier fields.
-   **Identifier (all).** Keyword search through all identifier types.
-   **LCCN.** Keyword search through all Library of Congress control numbers.
-   **Personal name.** Keyword search through the personal name field. The search terms must be ordered as follows: Last Name, First Name, Initial. 
-   **Corporate/Conference name.** Keyword search through the name corporate/conference name field. 
-   **Geographic name.** Keyword search through the geographic name field. The search terms must be ordered as follows: City, State/Province, Country. 
-   **Name-title.** Keyword search through the name-title field. The search terms must be ordered as follows: Last Name, First Name, Title. 
-   **Uniform title.** Keyword search through the uniform title field.
-   **Subject.** Keyword search through all subject fields. This may include a single term, phrase, or a group of terms.
-   **Children’s subject heading.** Keyword search through all children's subject heading fields. 
-   **Genre.** Keyword search through all genre/form fields.
-   **Advanced search.** Keyword search through multiple fields. 

### Advanced Search

Advanced Search allows you to add additional requirements to your search. 

To use Advanced Search, follow these steps:

1.  Select **Advanced Search** in the Search segment drop-down list on **Search & filter** pane. A pop-up box will appear.
2.  Enter a search term into the first box.
3.  On the same row, click the **Contains all** drop-down list and select an option from the list below:
- **Exact phrase.** Results include records that contain only an exact match to the search term.
- **Contains all.** Results include records that contain the entire search term, but individual words can appear in any order.
- **Starts with.** Results include records that include a field that starts with the search term.
- **Contains any.** Results include records that include any of the words included in the search term.
4.  On the same row, click the **Keyword** drop-down list and select a field. See [searching for authority records](#searching-for-authority-records) for a list of fields.
5.  To enter search terms into additional rows, you must select an operator from the **AND** drop-down list.
6.  Click the **AND** drop-down list and select an operator from the list below:
-   **AND.** Results include records containing all of the search terms.
-   **OR.**  Results include all records containing at least one of the search terms.
-   **NOT.** Results do not include records containing the search terms in this row.
7.  Continue entering additional search terms and selecting the appropriate fields for each row.
8.  Click **Search**.

After performing a search, you can limit results by selecting any of the filters in the **Search & filter** pane.

When using filters, keep the following in mind:

-   Multiple filters can be combined to limit searches further.
-   Multiple values in the same filter are combined with "OR."
-   Multiple values in different filters are combined with "AND."

## Browsing authority headings and references
You can browse for MARC authority records in the **Search & filter** pane. Enter your search terms in the box and click **Search**. Select the **Select a browse option** drop-down list to search through one of the following: 

-   **Personal name.** 
-   **Corporate/Conference name.** 
-   **Geographic name.** 
-   **Name-title.** 
-   **Uniform title.** 
-   **Subject.** 
-   **Genre.** 

Some filters can also be applied to Browse results:

-   **Authority source.**
-   **References.**
-   **Type of heading.**

When using filters, keep the following in mind:

-   Multiple filters can be combined to limit searches further.
-   Multiple values in the same filter are combined with "OR."
-   Multiple values in different filters are combined with "AND."

## Exporting MARC authority records

MARC authority records can be exported in the same way that instance records are exported as MARC (See [Exporting instances (MARC)](../../data-export/#exporting-instances-marc).

1.  Open the **MARC authority** app. 
2.  In the **MARC authority** pane, find the records you want to export, and for each record, select the **checkbox** in the first column. Note that associated references in the results list will also be checked; the message at the top of the pane will display the accurate number of records selected.
3.  Click **Actions \> Export selected records (CSV/MARC)**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it. The export is logged in the Data export app.

To view the exported records, follow the instructions in [Retrieving data export results](../../data-export/#retrieving-data-export-results)

## Reporting

Users can generate reports within the MARC Authority app and retrieve them via [Export Manager](../../../export-manager/). Two reports are available, MARC authority headings updates and Failed updates: linked bibliographic fields. 

The MARC authority headings updates report shows which MARC authority records' 1XX fields have been updated during a particular date range. It contains the following fields: date and time that the authority record was last updated, original heading, new heading, original 1XX, new 1XX, authority source file name, number of bibliographic records linked, and the FOLIO account name of the record updater.

To generate the MARC authority headings updates report:
1.  Open the **MARC authority** app.
2.  Click **Actions \> MARC authority headings updates (CSV)**
3.  Enter a start date and end date.
4.  Click **Export**
5.  Open the **Export manager** app.
6.  Locate the correct job and click its **Job ID** to download the CSV report.

The Failed updates: linked bibliographic fields report shows when a MARC authority record's 1XX or 010$a field is updated but the linked bibliographic field(s) has not updated. It contains the following fields: date and time of the failed link, bibliographic title, bibliographic UUID, MARC tag of the bibliographic field that failed to update, linked authority identifier, and reason for error.

To generate the Failed updates: linked bibliographic fields report: 
1.  Open the **MARC authority** app.
2.  Click **Actions \> Failed updates: linked bibliographic fields (CSV)**
3.  Open the **Export manager** app.
4.  Locate the correct job and click its **Job ID** to download the CSV report.
