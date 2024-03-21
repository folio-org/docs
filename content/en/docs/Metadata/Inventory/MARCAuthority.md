---
title: "MARC authority"
linkTitle: "MARCauthority"
date: 2022-11-30
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
-   **quickMARC: View, edit MARC authority record.** This permission allows the user to view and edit MARC authority records.

## Creating MARC authority records 
MARC authority records are created via [Data import](../../data-import/)
## Searching for authority records
You can search for MARC authority records in the **Search & filter** pane. Enter your search terms in the box and click **Search**. Select the **Keyword** drop-down list to search through one of the following:

-   **Keyword.** Keyword search through the title, contributor, and identifier fields.
-   **Identifier (all).** Keyword search through all identifier types. 
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
3.  On the same row, click the **Keyword** drop-down list and select a field. 
4.  To enter search terms into additional rows, you must select an operator from the **AND** drop-down list.
5.  Click the **AND** drop-down list and select an operator from the list below:
-   **AND.** Results include records containing all of the search terms.
-   **OR.**  Results include all records containing at least one of the search terms.
-   **NOT.** Results do not include records containing the search terms in this row.
6.  Continue entering additional search terms and selecting the appropriate fields for each row.
7.  Click **Search**.

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

Some filters can also be applied to Browse results.

When using filters, keep the following in mind:

-   Multiple filters can be combined to limit searches further.
-   Multiple values in the same filter are combined with "OR."
-   Multiple values in different filters are combined with "AND."


## Exporting MARC authority records

MARC authority records can be exported in the same way that instance records are exported as MARC (See [Exporting instances (MARC)](../../data-export/#exporting-instances-marc).
Note: At this time, full MARC export via Quick Export is not implemented. Following these steps will instead export a .csv of the selected files’ UUIDs for use in the Data Export module.

1.  Open the **MARC authority** app. 
2.  In the **MARC authority** pane, find the records you want to export, and for each record, select the **checkbox** in the first column. Note that associated references in the results list will also be checked; the message at the top of the pane will display the accurate number of records selected.
3.  Click **Actions \> Export selected records (CSV/MARC)**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it. The export is logged in the Data export app.

To view the exported records, follow the instructions in [Retrieving data export results](../../data-export/#retrieving-data-export-results)

## Viewing a MARC authority record
The full MARC record opens in the third pane once you search for and select an authority record. The heading or reference you selected will be highlighted in the record.
## Editing MARC authority records 
### Updating MARC authority records via [Data import](../../data-import/)
### Editing MARC authority records via quickMARC
When viewing the MARC authority record you wish to edit, click **Edit** in the upper right. The record opens in edit mode. 
In the Edit MARC authority record window, you can perform the following actions:
-   **Add a field.** To add a field, click the **+**. The new field appears below.
-   **Delete a field.** To delete a field, click the **trash can icon**. The field is deleted.
-   **Move a field up.** To move a field up, click the **up arrow** in the row of the field you want to move. The field is moved one row up.
-   **Move a field down.** To move a field down, click the **down arrow** in the row of the field you want to move. The field is moved one row down.
-   **Edit text within a field.** Click into a field to make changes to the text.
Once you have made your desired changes, click **Save & close**. A confirmation record appears, and the record is updated.

### Validations and restrictions
 
A subfield is defined by a \$ (dollar sign).  
Tags must consist of 3 numeric characters.  
Indicators must consist of single characters.

The following validation rules and restrictions apply:

-   Fields 001 and 999ff are system supplied and cannot be edited or deleted.
-   The LDR cannot be edited.
-   1xx is required and non-repeatable.
-   No other validation is performed.

## Deleting MARC authority records

Edit permission in the MARC authority app also enables a user to delete records. 
To delete a MARC authority record, follow these steps:
Click **Actions \> Delete**
In the **Confirm deletion of authority record** dialog, click **Delete**. The authority record is deleted.

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
