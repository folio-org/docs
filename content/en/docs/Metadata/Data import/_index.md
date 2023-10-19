---
title: "Data import"
linkTitle: "Data import"
date: 2023-10-19
weight: 20
tags: ["parenttopic"]
---

The Data import app allows you to: 
- **Import one or more Bibliographic MARC records for use by the Inventory app.**  To create or update (overlay) records.
- **Import one or more Authority MARC records for use by the MARC Authority app.**  To create or update (overlay) records.
- **Load EDIFACT invoices for use by the Invoices app.**  Supports the Folio acquisitions workflow.

Definition of terms related to the Data Import app:

-   **Action profile.** Contains instructions on what actions to take when certain conditions are present when an import job is run.
-   **Field mapping profile.** Contains instructions for mapping field data being imported to field data within Folio.
-   **Holdings.** Holdings data linked to one or more instance records, which may be created from a MARC record's data or from other data sources and/or apps.
-   **Instance.** A non-MARC bibliographic record in Folio, which may be created from a MARC record's data or from other data sources and/or apps.
-   **Job profile.** Contains all the steps needed to complete an individual data import job. A job profile connects specific match, action and field mapping profiles together into a set of instructions for importing data.
-   **Match profile.** Contains instructions on how records being imported are matched with existing records within Folio.
-   **SRS.** Source Record Storage. A storage layer in FOLIO. If an instance has an underlying MARC record, then the MARC record is stored in SRS.
-   **SRS Holdings.** Holdings data specified in MARC record information.

## Permissions

In order to view and interact with the Data import app, a user needs to be assigned one or more of the following permissions:

-   **Data import: Can upload files, import, and view logs.** This permission allows the user to see and use the Data import app. The user can perform all functions other than deleting logs.

-   **Data import: Can delete import logs.** This permission allows the user to delete logs in the Data import app.
  
-   **Data import: Can view only.** Assign this permission if a user only needs to view logs and details of import jobs (e.g. check to see if an import has completed) but is NOT permitted to import files using the Data Import app.

Note: These are the only permissions available for the Data import app. You are unable to view and access Data import if you do not have one or more of these permissions assigned to you. You can assign permissions to users in the Users app.

## Starting a data import job

The Data import app accepts MARC and EDIFACT files for import.

1.  In the **Jobs** pane, either drag and drop your file into the box, or click **or choose files** to locate the file on your computer. Note that the file must have one of the permitted file extensions that are defined in the Settings App for Data Import.
2.  In the **Job profiles** window, select the job profile to run. If the list is long, you can search for job profiles by using the search bar at the top of the window to search through the Name and Description fields. To search for job profiles, enter terms in the search box and click **Search**.
3.  In the **job profile details** pane, click **Actions \> Run**.
4.  In the **Are you sure you want to run this job** dialog, click **Run**. The window closes and the job status appears in the Jobs pane.

### Assessing the job profile

After selecting a profile, you can see more details about the profile in the right pane. You can see the Name, Accepted data type, Description, Tags, Overview, which has the attached Action profiles, and a list of previous Jobs using this profile. Clicking on an Action profile opens that profile in the Settings app.

## Viewing import logs

Once an import is completed, whether it was completed without any errors, completed with errors, or failed, it appears in the Logs table in the Logs pane.

The Logs table contains the following columns:

-   **File name.** Name of the file that was imported. If the import was a single record import then **no file name** appears in the File name column.
-   **Status.** Status of the import:: Completed, Completed with errors, or Fail.
-   **Records.** Number of records in the import.
-   **Job profile.** Name of the job profile used.
-   **Started running.** Date and time the import started.
-   **Ended running.** Date and time the import finished.
-   **Run by.** User or system by which the import was generated.
-   **ID.** Identification number of the import.

You can click on any column name to sort by that column.

### Viewing all logs

Logs are never deleted unless a user with appropriate permission selects a log for deletion. Users need the permission **Can delete import logs** in order to delete log entries.

The most recent logs for imports other than single record imports are displayed in the Logs list in the Logs pane when you first select the Data Import app. To view all logs, in the **Logs** pane, click **Actions** then select **View all**.

#### Searching and filtering logs

After viewing all logs, you can search for files in the **Search & filter** pane. To search for a file, enter your search terms into the box. Select the **Keyword** drop-down list to search through one of the following fields:

-   **Keyword (ID, File name).** Keyword search through the ID and File name fields.
-   **ID.** Identification of the import.
-   **File name.** Name of the import file.

You can also search for logs by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.

##### Errors in import

To filter logs by whether or not they contained errors, select one of the following:

-   **No.** Logs that don't contain any errors.
-   **Yes.** Logs with errors.

##### Date

To search for logs based on the date they were run, follow these steps:

1.  In the **Search & filter** pane, click **Date**.
2.  Enter a start date in the **From** box and an end date in the **To** box.
3.  Click **Apply**. The search results appear in the Logs pane.

##### Job profile

To search for logs based on the job profile, follow these steps:

1.  In the **Search & filter** pane, click **Job profile**.
2.  Select the job profile you want from the drop-down list. The search results appear in the Logs pane.

##### User

To search for logs based on the user who ran the report, follow these steps:

1.  In the **Search & filter** pane, click **User**.
2.  Select the user you want from the drop-down list. The search results appear in the Logs pane.

##### Inventory single record imports

Single record imports are MARC records loaded from an external source, like OCLC. These records are imported through the Inventory app, but the logs appear in Data import.

To filter logs by whether or not they are inventory single record imports, in the **Search & filter** pane, click **Inventory single record imports** and select one of the following:

-   **No.** All other types of logs.
-   **Yes.** Logs for Inventory single record imports.

## Retrieving data import results

For all imports with the Status of *Completed* or *Completed with errors*, you can click on the **File name** in the Logs pane to retrieve your data import results. You are presented with a summary of records created, updated, discarded or in error. Clicking on the title link will display the system error if the import failed.

## Troubleshooting failed imports

For all imports with the Status of *Failed* or *Completed with errors*, click in the **row** of the import to view the error log. For all failed imports, a record is not created or updated.


