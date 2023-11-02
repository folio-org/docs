---
title: "Data export"
linkTitle: "Data export"
date: 2023-11-02
weight: 10
tags: ["parenttopic"]
---

The Data Export app allows you to:
- **Export bibliographic data from Source Record Storage (SRS)** in MARC21 format.
- **Export Instance, Holdings, and Item data stored by the Inventory app.** A file in MARC21 format is generated from non-MARC data in this case.
- **Export Authority data stored by the MARC Authority app** in MARC21 format.
- **Export a list of UUIDs for selected records** in a .csv file

The Data Export app usually comes with a few default job profiles, which determine how information is exported in the generated MARC file. To create your own customized job profiles, you can configure job profiles in the Settings app. For more information, see [Settings \> Data Export](../../settings/settings_data_export/settings_data_export/).

Definition of terms related to the Data Export app:

-   **CQL.** Contextual Query Language. A CQL query can be used in certain circumstances to identify the FOLIO records to export.
-   **Job profile.** Determines how information from FOLIO is exported to the generated MARC file.
-   **SRS.** Source Record Storage. A storage layer in FOLIO. If an instance has an underlying MARC record, then this record is stored in SRS.
-   **UUID.** Universally unique identifier. Each record in FOLIO has a UUID.

## Permissions

In order to view and interact with the Data Export app, a user needs to be assigned the following permission:

-   **UI: Data export module is enabled**. This permission allows the user to see and use the Data Export app.

Note: This is the only permission available for the Data Export app. You are unable to view and access Data Export if you do not have this permission assigned to you. You can assign permissions to users in the Users app.

## Quick exports from the Inventory App

Quick exports can be performed from the Inventory app. A quick export creates two files for selected records - a file of UUIDs (.csv) and a file of MARC records (.mrc).

1.  Open the **Inventory** app and use the **Search & Filter** pane to generate a list of records that match your search criteria. 
2.  In the right-hand-side **Inventory** pane, find the records you want to export, and for each record, select the **checkbox** in the first column.
3.  Click **Actions \> Export instances (MARC)**. Depending on your browser and its configurations, the file of UUIDs for the selected records automatically downloads or you are prompted to save it. The creation of a MARC (.mrc) file is logged in the Data export app and if you open that app you can find and download the MARC file containing your selected records.

## Quick exports from the MARC Authority App

Quick exports can be performed from the MARC Authority app. A quick export creates two files for selected records - a file of UUIDs (.csv) and a file of MARC records (.mrc)

1.  Open the **MARC Authorities** app and use the **Search & Filter** pane to generate a list of records that match your search criteria.
2.  In the right-hand-side **MARC authority** pane, find the records you want to export, and for each record, select the **checkbox** in the first column.
3.  Click **Actions \> Export selected records (CSV/MARC)**. Depending on your browser and its configuration, the file of UUIDs for the selected records automatically downloads or you are prompted to save it. The creation of a MARC (.mrc) file is logged in the Data export app and if you open that app you can fiind and download the MARC file containing your selected records.

## Triggering an export from the Data Export App by uploading a file

The Data Export app accepts two types of data and file types that identify sets of records for export: a CSV file listing UUIDs or a CQL query in CQL format. Triggering an export generates a .mrc file.

### Uploading UUIDs

A data export can be triggered by providing the list of record identifiers (UUIDs) in a .csv file.

1.  In the **Jobs** pane, either drag and drop your file into the box, or click **or choose file** to locate the file on your computer.
2.  In the **Select job profile to run the export** window, select the job profile to run. Export job profiles are set up for different types of records to export, so you'll have to select the right profile for the record type the list of UUIDs are for (e.g., instance records, holdings records, authority records)
3.  In the **Are you sure you want to run this job** dialog, select the correct record type from the drop down list under **UUIDS provided for this export**, then click **Run**. The window closes and the job appears under the Running section in the Jobs pane. When the job completes, the export file appears in the **Logs** list.

###  Uploading CQL query

Note: The file you upload needs to be a CQL file.

1.  In the **Jobs** pane, either drag and drop your file into the box, or click **or choose file** to locate the file on your computer.
2.  In the **Select job profile to run the export** window, select the job profile to run.
3.  In the **Are you sure you want to run this job** dialog, select **Run**. The window closes and the job appears under the Running section in the Jobs pane. WHen the job completes, the export file appears in the **Logs** list.

## Viewing export logs

Once an export is completed, whether it was completed without any errors, completed with errors, or failed, it appears in the Logs list in the Logs pane.

The Logs list contains the following columns:

-   **File name.** Name of the MARC file that was generated.
-   **Status.** Status of the export: Completed, Completed with errors, or Fail.
-   **Total.** Number of records in the export.
-   **Exported.** Number of records exported.
-   **Failed.** Number of records that failed.
-   **Job profile.** Name of the job profile used.
-   **Started running.** Date and time the export started.
-   **Ended running.** Date and time the export finished.
-   **Run by.** User or system by which the export was generated.
-   **ID.** Identification number of the export.

You can click on any column name to sort by that column.

### Viewing all logs

Logs are never deleted. The twenty-five most recent logs are displayed in the Logs list in the Logs pane. To view all logs, in the **Logs** pane, click **View all**. The Logs window appears.

## Searching and filtering logs

After viewing all logs, you can search for files in the **Search & filter** pane. To search for a file, enter your search terms (presently, only ID values) into the box.

You can also search for logs by selecting any of the filters in the Search & filter pane:

### Errors in export

To filter logs by whether or not they contain errors, select one of the following:
- **No.** Logs without errors
- **Yes.** Logs with errors

### Started running

Enter a start date in the **From** box and an end date in the **To** box, then click Apply. The search results appear in the Logs pane.

### Ended running

Enter a start date in the **From** box and an end date in the **To** box, then click Apply. The search results appear in the Logs pane.

### Job profile

Select the job profile you want from the drop-down list. The search results appear in the Logs pane.

### User

Click on **User look-up** and select the user you want. The search results appear in the Logs pane.

## Retrieving data export results

For all exports with the Status of *Completed* or *Completed with errors*, you can click on the **File name** in the Logs pane to retrieve your data export results. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.

## Troubleshooting failed exports

For all exports with the Status of *Fail* or *Completed with errors*, click in the **row** of the export to view the error log. For all failed exports, a MARC file is not generated.
