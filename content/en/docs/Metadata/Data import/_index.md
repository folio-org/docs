---
title: "Data import"
linkTitle: "Data import"
date: 2022-03-21
weight: 20
tags: ["parenttopic"]
---

The Data import app allows you to import one or more records into the Inventory app or load invoices into the Acquisitions app. With data import, you can import MARC bibliographic records to create and/or update records in the Inventory app and Source Record Storage (SRS).

Definition of terms related to the Data Import app:

-   **Job profile.** Contains all the steps needed to complete an individual data import job.
-   **SRS.** Source Record Storage. A storage layer in FOLIO. If an instance has an underlying MARC record, then this record is stored in SRS.

## Permissions

In order to view and interact with the Data import app, a user needs to be assigned the following permission:

-   **Data import: all permissions.** This permission allows the user to see and use the Data import app.

Note: This is the only permission available for the Data import app. You are unable to view and access Data import if you do not have this permission assigned to you. You can assign permissions to users in the Users app.

## Starting a data import job

The Data import app accepts MARC and EDIFACT files for import.

1.  In the **Jobs** pane, either drag and drop your file into the box, or click **or choose file** to locate the file on your computer.
2.  In the **Job profiles** window, select the job profile to run. If the list is long, you can search for job profiles by using the search bar at the top of the window to search through the Name and Description fields. To search for job profiles, enter terms in the search box and click **Search**.
3.  In the **job profile details** pane, click **Actions \> Run**.
4.  In the **Are you sure you want to run this job** dialog, click **Run**. The window closes and the job status appears in the Jobs pane.

### Assessing the job profile

After selecting a profile, you can see more details about the profile in the right pane. You can see the Name, Accepted data type, Description, Tags, Overview, which has the attached Action profiles, and a list of previous Jobs using this profile. Clicking on an Action profile opens that profile in the Settings app.

## Viewing import logs

Once an import is completed, whether it was completed without any errors, completed with errors, or failed, it appears in the Logs table in the Logs pane.

The Logs table contains the following columns:

-   **File name.** Name of the MARC file that was imported.
-   **Status.** Status of the import:: Completed, Completed with errors, or Fail.
-   **Records.** Number of records in the import.
-   **Job profile.** Name of the job profile used.
-   **Ended running.** Date and time the import finished.
-   **Run by.** User or system by which the import was generated.
-   **ID.** Identification number of the import.

You can click on any column name to sort by that column.

### Viewing all logs

Logs are never deleted. The nine most recent logs are displayed in the Logs table in the Logs pane. To view all logs, in the **Logs** pane, click **View all**. The Logs window appears.

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

Single record imports are records loaded from an external source, like OCLC. These records are imported through the Inventory app, but the logs appear in Data import.

To filter logs by whether or not they are inventory single record imports, in the **Search & filter** pane, click **Inventory single record imports** and select one of the following:

-   **No.** All other types of logs.
-   **Yes.** Logs for Inventory single record imports.

## Retrieving data export results

For all exports with the Status of *Completed* or *Completed with errors*, you can click on the **File name** in the Logs pane to retrieve your data export results. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Troubleshooting failed exports

For all exports with the Status of *Fail* or *Completed with errors*, click in the **row** of the export to view the error log. For all failed exports, a MARC file is not generated.
