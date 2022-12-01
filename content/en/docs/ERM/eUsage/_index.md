---
title: "eUsage"
linkTitle: "eUsage"
date: 2022-08-09
weight: 30
tags: ["parenttopic"]
---

The eUsage app allows you to manage usage data reports for electronic resources.

The app provides automatic harvesting of COUNTER standard usage reports via SUSHI and manual uploading of standard and non-standard statistics. Usage data providers managed in eUsage can be referred to from the Agreements app.

Definition of terms related to the eUsage app:


* **Aggregator**. A service that aggregates pre-processing statistics for multiple statistics providers and offers an endpoint to download the reports. eUsage allows you to harvest statistics for a usage data provider either directly from the provider via SUSHI or from an aggregator. The only aggregator service currently supported in FOLIO is the German National Statistics Server. 
* **COUNTER** and **SUSHI.** Standard format and protocol for electronic resource usage statistics. Detailed information is available at[ Project COUNTER](https://www.projectcounter.org/).
* **Report.** The usage data for a certain set of electronic resources within a certain reporting period in a specific type.
* **Usage data provider.** The agent that provides usage statistics for a set of electronic resources. Most likely, this is a vendor or a platform provider. The usage data provider record is the basic entity in eUsage used to manage all associated reports and harvesting processes.


## **Permissions**

The permissions listed below allow you to interact with the eUsage app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the eUsage app or any related information.

The following are all the eUsage permissions:


* **eUsage: All permissions.** Ths permission includes all other eUsage permissions.
* **eUsage: Can view usage data providers and view/download usage reports.** This is the eUsage read permission which allows the user to view usage data provider records and view and download the associated usage reports.
* **eUsage: Can create and edit usage data providers.** This permission allows the user to create and edit UDP records. It does not include the upload of usage reports to the provider.
* **eUsage: Can delete usage data providers.** This permission allows the user to delete UDP records. It does not include the deletion of the associated usage reports.
* **eUsage: Can upload usage reports.** This permission allows the user to upload COUNTER and non-COUNTER usage reports.
* **eUsage: Can start harvesting for a single provider.** This permission allows the user to start the harvester service for one UDP.
* **eUsage: Can delete usage reports.** This permission allows the user to delete COUNTER and non-COUNTER usage reports.
* **Settings (eUsage): Can view and edit settings.** This permission allows the user to view and edit the eUsage settings. It also includes starting the harvester for all usage data providers in the tenant.


## Creating a usage data provider

When you create a usage data provider, you are asked to enter the configuration details for automated harvesting. If the provider only supports manual data download, you still need to create a provider record in order to upload reports manually to this provider. For more information on manual report upload, see Uploading reports manually.



1. In the **Usage data provider** pane, click **New**.
2. In the **Create usage data provider** window, fill in the **Usage data provider information** and **Harvesting configuration** sections. For more information on the fields and actions available in these sections, see the section descriptions below.
3. Once you have included all of the information you want about the Usage data provider, click **Save & close**. The usage data provider is saved and added to the Usage data providers pane.

### Usage data provider information

* **Provider name (required).** Enter the name of the usage data provider.
* **Description.** A description of the usage data provider. You can use this field to enter additional information in order to identify the provider or any other data corresponding to the usage data provider or reports that should be displayed in a prominent place at the record.


### Harvesting configuration


* **Harvesting status (required).** Select a Harvesting status: Active or Inactive. The status you select here defines whether reports from the usage data provider are harvested in the automated or manually triggered harvesting processes.
* **Harvest statistics via (required).** Select how to harvest statistics: Aggregator or Sushi. Note: The only aggregator currently supported by FOLIO is the German National Statistics Server.
* **Aggregator (required).** If you have selected to harvest statistics via an aggregator, select the aggregator that should be used to harvest statistics. Note: The only aggregator currently supported by FOLIO is the German National Statistics Server.
* **Vendor code.** If you have selected to harvest statistics via an aggregator, enter the code by which the aggregator identifies the vendor for which statistics are requested. The German National Statistics Server requires the vendor names as displayed in the server’s user interface.
* **Service type (required).** If you have selected to harvest statistics via a SUSHI protocol, select the SUSHI service type implementation to be used by the harvester: Counter-Sushi 4.1 or Counter-Sushi 5.0. The service type normally corresponds to the requested Report release.
* **Service URL (required).** If you have selected to harvest statistics via a SUSHI protocol, enter the URL to access the SUSHI service. The URL is usually listed on the provider’s backend information pages. \
Note: Only enter the_ base URL_ to the service, not the complete URL for an API request. For example, if the provider lists the URL[ https://usage.catsanddogs.org/sushi/reports/tr_b1](https://usage.catsanddogs.org/sushi/reports/tr_b1), only enter the part _before (and excluding) "reports"_:[ https://usage.catsanddogs.org/sushi](https://usage.catsanddogs.org/sushi). Everything else is added by the harvester.
* **Report release (required).** Select a Report release: Counter 4 or Counter 5. Note: Support for release 5 of the Counter standard is mandatory for Counter compliant vendors from January 2019. FOLIO does not support simultaneous harvesting of reports of both releases for one usage data provider. If you want to retrospectively harvest Counter 4 reports, configure the provider for Counter 4 first and harvest the requested reports. Then edit the usage data provider and configure for Counter 5 harvesting.
* **Requested report (required).** Add the report types requested to be harvested for the usage data provider. For more information, see Adding a report type.
* **Harvesting start (required)**. Enter the first month for the reports that are to be harvested.
* **Harvesting end.** Enter the last month for the reports that are to be harvested. Note: You may want to add an end month in case no more resources are licensed from a provider, a provider stops supporting usage statistics, or for any other reason that no ongoing harvesting is wanted. If no harvesting end is configured, reports are harvested continuously until the Harvesting status is changed to Inactive.
* **Customer ID (required for SUSHI).** If you have selected to harvest statistics via a SUSHI protocol, enter the customer ID assigned by the provider. This information is usually listed on the provider’s backend information pages.
* **Requestor ID.** Enter the Requestor ID assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require a Requestor ID.
* **API key.** Enter the API key assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require an API key.
* **Platform. **Enter the Platform for which reports are requested. If needed, this information is usually listed on the provider’s backend information pages. Most SUSHI services default on all platforms for which a customer has licensed resources.
* **Requestor name.** Enter the requestor name assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require a Requestor name.
* **Requestor mail.** Enter the requestor mail assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require a Requestor mail.


#### Adding a report type


1. Click **Add report type**.
2. Choose a **Report type** from the list of available report types for the chosen Report Release. You can filter the list.
3. Repeat as needed. The report type saves once you save the usage data provider.


#### Deleting a report type

1. Find the Report type you want to delete.
2. Click the **trash can icon**. The Report type is deleted and is removed from the record once you save the usage data provider.


## Searching for a usage data provider

You can search for usage data providers in the **Search & filter** pane. To search for a usage data provider, enter your search terms into the box and click **Search**.

You can also search for usage data providers by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### **Harvesting status**

To filter usage data providers by their status, select one of the following:



* **Active.** Usage data providers included in the current harvesting processes.
* **Inactive.** Usage data providers for which no reports are currently being harvested.


### Harvest via

To filter usage data providers by the harvest method of their reports, select one of the following:



* **Sushi.** Usage data providers where reports are currently configured to be harvested directly from the provider via SUSHI.
* **Aggregator.** Usage data providers where reports are currently configured to be harvested via an aggregator.


### Aggregators

To filter usage data providers by the aggregator used for the harvesting, select one of the Aggregators configured for the tenant. For more information, see Aggregator configuration.


### Report types

To search for usage data providers for which reports of a specific type are stored in FOLIO,  follow these steps:


1. In the **Search & filter** pane, click **Report types**.
2. Select the type(s) from the drop-down list. Your results appear in the usage data provider pane.


### Has failed report(s)

To filter usage data providers based on whether harvesting errors have occurred, select one of the following:



* **Yes.** Usage data providers where at least one requested report has not been harvested correctly.
* **No.** Usage data providers where no reports have failed to be harvested.


### Tags

To search for usage data providers assigned with specific tags, follow these steps:



1. In the **Search & filter** pane, click **Tags**.
2. Select the tag(s) from the drop-down list. Your results appear in the usage data provider pane.


### Error codes

To search for usage data providers with reports that have failed with a specific SUSHI error code, follow these steps:



1. In the **Search & filter** pane, click **Error code**.
2. Select the error code(s) from the drop-down list. Your results appear in the usage data provider pane. The list shows usage data providers that have reports failed with either of the selected error codes.

Viewing usage data provider details

Once you search for a usage data provider, the following information appears in the usage data providers pane:



* **Provider name.** The name of the usage data provider.
* **Harvesting status.** The status of the usage data provider.
* **Latest statistics.** The month of the most current report stored in FOLIO.
* **Aggregator.** The aggregator from which reports are currently configured to harvest.

In the search results, click on a usage data provider to view it. The **usage data provider details** pane displays with additional information about the usage data provider and the associated reports stored in FOLIO.


## Viewing stored COUNTER reports for a usage data provider


1. Find the usage data provider for which you want to view the stored reports and select it.
2. In the **usage data provider details** pane, click **COUNTER statistics**.
3. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.

The **COUNTER statistics table** displays a row for each report type and a column for each month. If a report is stored or has tried to harvest, a **Report button** is displayed in the appropriate cell of the table. The buttons show the state of the report with an icon:



* **Green/checkmark.** A valid report is available for the month.
* **Orange/exclamation mark.** The report tried to harvest but failed. The harvester tries again in the next harvesting cycle.
* **Red/Cross.** The report tried to harvest for the maximum number of attempts defined in the Settings. In order to attempt another harvest, the report needs to be deleted. For more information, see Setting maximum number of harvesting attempts and Deleting reports.

In the **COUNTER statistics table,** click on a **Report button**. The **Report info** dialog displays with additional information about the report:


* **Usage data provider.** The name of the usage data provider.
* **Type.** The report type.
* **Date.** The reporting period, always one month.
* **Info.** If the report failed to harvest correctly, the error message provided by the SUSHI service is displayed here.
* **Failed attempts.** Number of attempted harvestings, which is also the number of maximum attempts.
* **Manual changes.** If the report has been manually altered, this heading appears along with the reason the report was manually edited.
* **Actions.** Possible actions, for more information see Deleting reports and Downloading reports.


## Editing a usage data provider


1. Find the usage data provider you want to edit and select it.
2. In the **usage data provider details** pane, click **Actions > Edit**.
3. Edit the usage data provider.
4. Click **Save & close**. The usage data provider is saved and updated.


### **Changing the harvesting configuration**

Note: Changing the harvesting configuration for a usage data provider doesn’t affect reports already stored in the system. No reports are lost. The configuration is only applied to future harvesting processes. For information on how reports are deleted, see Deleting reports.


1. Find the usage data provider you want to edit and select it.
2. In the **usage data provider details** pane, click **Actions > Edit**.
3. Edit the **Harvesting configuration**.
4. Make any additional changes to the usage data provider.
5. Click **Save & close**. The usage data provider is saved and updated.


### Deleting a usage data provider


1. Find the usage data provider you want to delete and select it.
2. In the **usage data provider details** pane, click **Actions > Edit**.
3. In the **usage data provider edit** window, click **Delete**.
4. In the **Delete usage data Provider** dialog, click **Delete**. The usage data provider and all associated reports are deleted and a confirmation message appears.


## Adding a tag to a usage data provider


1. Find the usage data provider you want to tag and select it.
2. In the **usage data provider details** pane, click the **tag icon**.
3. In the **Tags** pane, either select a tag from the box or enter a tag. 
4. Click the **X** on the **Tags** pane to close the pane and save the tag. The tag number updates to the number of tags applied to the usage data provider.


## Adding a note to a usage data provider


1. Find the usage data provider to which you want to add a note and select it.
2. In the **usage data provider details** pane, click **Notes > New**.
3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.
4. Enter a **Note title** in the box.
5. Optional: Enter any **Details** about the note in the box.
6. Click **Save & close**. The note is saved and appears in the Notes section in the usage data provider details pane.


## Starting the harvester for a specific usage data provider


1. Find the usage data provider for which you want to start the harvesting process.
2. In the **usage data provider details** pane, click **Actions > Start harvester**. A confirmation message appears.
3. Optional: If you want to view the current results of the harvesting process, you can refresh the table content in the **COUNTER statistics** table. To do this, click **Actions > Refresh statistics table**. Otherwise, the table content will be refreshed the next time you select the usage data provider or refresh the browser window.


## Topics still to be covered by documentation...

Starting the harvester for all usage data providers 

Setting up periodic harvesting

Setting up an aggregator

Uploading a COUNTER report manually

Marking a COUNTER report as manually changed

Uploading a non-COUNTER report

Downloading a COUNTER report

Downloading a non-COUNTER report

Deleting multiple reports

Deleting a single report

Linking a usage data provider with an agreement
