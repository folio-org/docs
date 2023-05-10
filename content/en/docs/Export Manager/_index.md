---
title: "Export manager"
linkTitle: "Export manager"
date: 2022-12-05	
weight: 625
---

The Export manager app allows users to view manual or automated file exports for specific export operations. The Export manager app supports the following types of exports: Bursar, Circulation log, eHoldings, Bulk edit, and EDIFACT orders. While these exports are initiated from other apps and areas of FOLIO, the Export manager app allows administrative staff to check on the status of scheduled exports, view error details, and download files for review.

## Permissions

The permissions listed below allow you to interact with the Export manager app and determine what you can and cannot do within the app. If none of these permissions are assigned to a user, they are unable to see the Export manager app or any related information.

Note: For information on assigning permissions to users, see [Assigning permissions to a user record]({{< ref "/users.md#assigning-permissions-to-a-user-record" >}}).

The following are all the Export manager app permissions:

*  **Export manager: All.** This permission enables the Export manager app for the user and allows the user to view and access logs, download files from the Export manager app, and download and re-send EDIFACT export jobs. 
*  **Export manager: Download and re-send files.** This permission allows the user to download and re-send EDIFACT export jobs.

Since exports begin in other FOLIO apps, not in the Export Manager app, a user needs additional permissions to begin an export, but may download files given the **Export manager: All** permission.

## Viewing export jobs

The Export manager app allows users to view export logs initiated from the following apps or functions:

*   Bulk edit
*   Bursar
*   Circulation log
*   EDIFACT orders
*   eHoldings 

Once an export is initiated in any of these areas, a log of the export appears in the Export manager app. The app’s **Search & filter** pane displays two tabs: **All** and **Organizations**. The **Organizations** tab supports EDIFACT order export, while all other supported exports are accessible using the **All** tab.

Column display in the results pane will vary based on the tab selected in the **Search & filter** pane.

The **All** tab results pane  displays the following columns:

*   **Job ID.** Identification number of the export.
*   **Status.** Status of the export:: Scheduled, In progress, Successful, Failed.
*   **Job type.** The type of export that resulted in the corresponding job. Job types include: Bursar, Circulation log, eHoldings, BULK_EDIT_IDENTIFIERS, and BULK_EDIT_UPDATE.
*   **Description.** Appears on Bursar exports with a summary count of charges and refunds  included in the job.
*   **Source.** The user who initiated the export. Entries may include ‘System’ for automated exports or ‘folio’ for jobs resulting from bulk edit or a re-run EDIFACT export.
*   **Start time.** Date and time the export began.
*   **End time.** Date and time the export finished.

Click on any column name, except **Description** and **Source**, to sort by that column.

The **Organizations** tab results pane displays the following columns:

*   **Job ID.** Identification number of the export.
*   **Status.** Status of the export:: Scheduled, In progress, Successful, Failed.
*   **Description.** Appears on Bursar exports with a summary count of charges and refunds included in the job.
*   **Source.** The user who initiated the export. Entries may include ‘System’ for automated exports or ‘folio’ for jobs resulting from bulk edit or a re-run EDIFACT export.
*   **Start time.** Date and time the export began.
*   **End time.** Date and time the export finished.
*   **Export method.** This value corresponds to the **Integration name** on the associated Organization record’s [Integration details]({{< ref "/organizations.md#adding-integration-details-to-a-vendor-organization" >}}).

Click on any column name, except **Description**, **Source**, and **Export method**, to sort by that column.

For jobs with a status of **Successful**, click on the hyperlinked job ID to download the file.

To view additional details about the job, including **Error details**, click on the job row.

### Searching and filtering jobs

You can search for jobs in the Search & filter pane. To search for a job by **Job ID**, enter your search terms into the box.

Search for logs by selecting any of the filters in the Search & filter pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.

####Status

To filter by **Status**, select a filter  filter:
* **Scheduled.** This export has been scheduled, but not yet run.
* **In progress.** This export is currently running.
* **Successful.** This export has run to completion.
* **Failed.** This export could not be performed. Error details are available by clicking on rows with this status.

####Job type

To filter by **Job type**, select a filter:
* **Bursar.** This export contains charges and/or refunds transferred to the bursar. Output format is .dat.
* **Circulation log.** This export contains search results from the Circulation log. Output format is .csv.
* **eHoldings.** This export contains package and title details from eHoldings. Output format is .csv.
* **Bulk edit** This export contains downloaded information from Bulk edit. Output format is .csv.

####System

To filter by whether or not the job was system-generated, select one of the following:
* **Yes.** The export was initiated automatically.
* **No.** A user manually initiated the export.

####Source

To search for logs based on the user who initiated the export:
In the **Search & filter** pane, click **Source**.
Click **Find user**.
In the **Select User** dialog, search for the user.
Select the user you want to filter by. 

####Start time

To search for logs based on the date they started running:

In the **Search & filter pane**, click **Start time**.
Enter a start date in the **From** box and an end date in the **To** box.
Click **Apply**. The search results appear in the **Export jobs** pane.

####End time

To search for logs based on the date they ended running:

In the **Search & filter pane**, click **End time**.
Enter a start date in the **From** box and an end date in the **To** box.
Click **Apply**. The search results appear in the **Export jobs** pane.

####Export method

This filter is available only on the **Organizations** pane . To search for exports by export method:

In the **Search & filter** pane, click **Export method**.
Select the export method from the drop-down list. 

The search results appear in the **Export jobs** pane.

####Organizations

This filter is available only on the **Organizations** pane. 

To search for exports associated with a specific organizations:

In the **Search & filter** pane, click **Organization**.
Click **Organization look-up**.
In the **Select Organization** dialog, search for the organization.
Select the organization you want to filter by. The search results appear in the **Export jobs** pane.


### Errors in jobs

If a job has a status of **Failed**, click on the row to view additional information, including **Error details**.

## Managing EDIFACT orders export jobs

A FOLIO tenant may be configured to support the export of EDIFACT orders to a vendor. This requires [configuration of **Integration details** on the Organization record]({{< ref "/organizations.md#adding-integration-details-to-a-vendor-organization" >}}). All exports are recorded and accessible in the **Export manager** app under the **Organizations** pane . The file is available for download in FOLIO, with no expiry date. If a library needs a new copy of the EDIFACT file that was created, they must use the download or resend options within the **Export manager** app. The **Resend** action will send a new copy of the previously exported EDIFACT file to the organization’s FTP site, where the library and the vendor can once again access the file.

### Resending an EDIFACT orders export job

To resend an export:
In the **Search & filter** pane, click **Organization**.
Locate the export you wish to resend and click on the row to access the export record.
Click **Actions > Resend**.
A green toast message appears to indicate the file upload has started successfully.

### Rerunning an EDIFACT orders export job

Rerunning an export job will trigger a new export job, generating a new file, containing different orders. The job will use the same configuration, but the results will appear different. 

To rerun an export:
In the **Search & filter** pane, click **Organization**.
Locate the export you wish to rerun and click on the row to access the export record.
Click **Actions > Rerun**.
The rerun export appears at the top of the export logs and the file can be downloaded by clicking on the new export record, and clicking **Actions > Download**. 
