---
title: "eUsage"
linkTitle: "eUsage"
date: 2026-09-28
weight: 30
tags: ["parenttopic"]
---

The eUsage app allows you to manage usage data reports for electronic resources.

The app provides automatic harvesting of COUNTER standard usage reports via SUSHI and manual uploading of standard and non-standard statistics. Usage data providers managed in eUsage can be referred to from the Agreements app.


## Definition of terms

* **Aggregator.** A service that aggregates pre-processing statistics for multiple statistics providers and offers an endpoint to download the reports. eUsage allows you to harvest statistics for a usage data provider either directly from the provider or from an aggregator. 
* **COUNTER** and **SUSHI.** Standard format and protocol for electronic resource usage statistics. Detailed information is available at [Project COUNTER](https://www.projectcounter.org/).
* **Report.** The usage data for a certain set of electronic resources within a certain reporting period in a specific type.
* **Usage data provider.** The agent that provides usage statistics for a set of electronic resources. Most likely, this is a vendor or a platform provider. The usage data provider record is the basic entity in eUsage used to manage all associated reports and harvesting processes.


## Permissions

The permissions allow you to control what you can do within the app. 


### OKAPI

You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the eUsage app or any related information.

Permissions:

* **eUsage: All permissions.** Ths permission includes all other eUsage permissions.
* **eUsage: Can view usage data providers and view/download usage reports.** This is the eUsage read permission which allows the user to view usage data provider records and view and download the associated usage reports.
* **eUsage: Can create and edit usage data providers.** This permission allows the user to create and edit UDP records. It does not include the upload of usage reports to the provider.
* **eUsage: Can delete usage data providers.** This permission allows the user to delete UDP records. It does not include the deletion of the associated usage reports.
* **eUsage: Can upload usage reports.** This permission allows the user to upload COUNTER and non-COUNTER usage reports.
* **eUsage: Can start harvesting for a single provider.** This permission allows the user to start the harvester service for one UDP.
* **eUsage: Can delete usage reports.** This permission allows the user to delete COUNTER and non-COUNTER usage reports.
* **Settings (eUsage): Can view and edit settings.** This permission allows the user to view and edit the eUsage settings. It also includes starting the harvester for all usage data providers in the tenant.


### EUREKA

You can assign permissions to users in the Users app via an user role. If none user role is assigned to a user, they are unable to see the eUsage app or any related information.


#### Define user roles for eUsage

User roles can be defined under [Settings \> Authorization roles](../../settings/settings_authorization-roles/settings_authorization-roles). You can define different roles for your environment based on your specific requirements.

The following tables gives you an overview of the setting options for eUsage within the user role.


#### Capability sets


##### Capability sets for eUsage

|Type      |Resource                           |Action   |Description                                                        |
|:---------|:----------------------------------|:--------|:------------------------------------------------------------------|
|Data      |Ermusageharvester                  | Manage  | All permissions for the mod-erm-harvester module                  |
|Data      |Eusage                             | Manage  | All permissions for the mod-erm-usage module                      |
|Data      |UI-Erm-Usage                       | View    | UI: Can view usage data providers and view/download usage reports |
|Data      |UI-Erm-Usage                       | Manage  | UI: All permissions of eUsage module                              |
|Data      |UI-Erm-Usage GeneralSettings       | Manage  | UI: Can view and edit all settings                                |
|Data      |UI-Erm-Usage Harvester Jobs        | View    | UI: Can view harvesting jobs                                      |
|Data      |UI-Erm-Usage Reports               | Create  | UI: Can upload usage reports                                      |
|Data      |UI-Erm-Usage Reports               | Delete  | UI: Can delete usage reports                                      |
|Data      |UI-Erm-Usage Udp                   | Edit    | UI: Can edit usage data providers                                 |
|Data      |UI-Erm-Usage Udp                   | Create  | UI: Can create usage data providers                               |
|Data      |UI-Erm-Usage Udp                   | Delete  | UI: Can delete usage data providers                               |
|Data      |UI-Erm-Usage Udp Create-Edit       | Manage  | UI: Can create and edit usage data providers                      |
|Settings  |Module Erm-Usage Enabled           | View    | UI: eUsage module is enabled                                      |
|Settings  |Settings Erm-Usage Enabled         | View    | UI: Settings (eUsage): Display list of settings pages             |
|Procedural|UI-Erm-Usage Harvester Start Single| Execute | UI: Can start harvesting for a single provider                    |


##### Capability sets for eUsage Reports (Plugin)

|Type      |Resource                           |Action   |Description                                                                                     |
|:---------|:----------------------------------|:--------|:-----------------------------------------------------------------------------------------------|
|Data      |Eusage-Reports                     | View    | All read only permissions                                                                      |
|Data      |Eusage-Reports                     | Manage  | All permissions                                                                                |
|Data      |Plugin-Eusage-Reports Charts       | View    | eUsage reports: charts may be viewed                                                           |
|Data      |Plugin-Eusage-Reports Matches      | Edit    | eUsage reports: title matches may be viewed and edited                                         |
|Data      |UI-Erm-Comparisons Jobs            | View    | A user with this permission can search and view  </br>ERM Comparison "jobs" which are used to compare </br>lists of resources in the Agreements local knowledgebase. </br> This includes the permission to see and access the </br>ERM Comparisons app in the Folio interface.|
|Data      |UI-Erm-Comparisons Jobs            | Edit    | Grants all permissions in "ERM comparisons: View jobs" </br>plus the ability to create new jobs (i.e. compare </br>two lists of resources in the Agreements local </br>knowledgebase)                                                                                            |
|Data      |UI-Erm-Comparisons Jobs            | Delete  | Grants all permissions in "ERM comparisons: View jobs" </br>plus the ability to delete jobs that have already run|
|Settings  |Settings Erm-Comparisons Enabled   | View    | Settings (ERM comparisons): display list of settings pages                                     |

Please note: 
* To activate the plugin in Agreements in the UI, you must set the **Plugin-Eusage-Reports Charts** capability set.
* To activate the comparison module in eUsage in the UI, you must set the **UI-Erm-Comparisons Jobs** capability set.


##### Mapping permission sets (OKAPI) to capability sets (EUREKA)

|Permission                                                            | Capability set type | Capability set                      | Action  |
|:---------------------------------------------------------------------|:--------------------|:------------------------------------|:--------|
|eUsage: All permissions                                               | Data                | UI-Erm-Usage                        | Manage  |
|eUsage: Can view usage data providers and view/download usage reports | Data                | UI-Erm-Usage                        | View    | 
|eUsage: Can create and edit usage data providers                      | Data                | UI-Erm-Usage Udp Create-Edit        | Manage  |
|eUsage: Can delete usage data providers                               | Data                | UI-Erm-Usage Udp                    | Delete  |
|eUsage: Can upload usage reports                                      | Data                | UI-Erm-Usage Reports                | Create  |
|eUsage: Can delete usage reports                                      | Data                | UI-Erm-Usage Reports                | Delete  |
|eUsage: Can start harvesting for a single provider                    | Procedural          | UI-Erm-Usage Harvester Start Single | Execute |
|Settings (eUsage): Can view and edit settings                         | Settings            | UI-Erm-Usage GeneralSettings        | Manage  |


#### Capabilities


##### Capabilities for eUsage

|Type      |Resource                                  |Action   |Description                                                            |
|:---------|:-----------------------------------------|:--------|:----------------------------------------------------------------------|
|Data      |Aggregatorsettings Collection             | View    | Get a collection of aggregator setting                                |
|Data      |Aggregatorsettings Exportcredentials Item | View    | Export credentials for an aggregator setting                          |
|Data      |Aggregatorsettings Item                   | View    | Get a single aggregator setting                                       |
|Data      |Aggregatorsettings Item                   | Edit    | Edit an aggregator setting                                            |
|Data      |Aggregatorsettings Item                   | Create  | Create a new aggregator setting                                       |
|Data      |Aggregatorsettings Item                   | Delete  | Delete an aggregator setting                                          |
|Data      |Counterreports Collection                 | View    | Get a collection of counter reports                                   |
|Data      |Counterreports Collection                 | Delete  | Delete a collection of counter reports                                |
|Data      |Counterreports Errorcodes Collection      | View    | Get a collection of counter report error codes                        |
|Data      |Counterreports Item                       | View    | Get a single counter report                                           |
|Data      |Counterreports Item                       | Edit    | Edit a counter report                                                 |
|Data      |Counterreports Item                       | Create  | Create a new counter report                                           |
|Data      |Counterreports Item                       | Delete  | Delete a counter report                                               |
|Data      |Counterreports Reportreleases Collection  | View    | Get a counter report report releases collection                       |
|Data      |Counterreports Reporttypes Collection     | View    | Get a counter report report types collection                          |
|Data      |Counterreports Sorted Collection          | View    | Get a sorted counter report collection for a provider                 |
|Data      |Counterreports Upload Item                | Create  | Upload a counter report                                               |
|Data      |Customreports Collection                  | View    | Get a collection of custom reports                                    |
|Data      |Customreports Item                        | View    | Get a single custom report                                            |
|Data      |Customreports Item                        | Edit    | Edit a custom report                                                  |
|Data      |Customreports Item                        | Create  | Create a new custom report                                            |
|Data      |Customreports Item                        | Delete  | Delete a custom report                                                |
|Data      |Erm-Usage Files Item                      | View    | Get a single file                                                     |
|Data      |Erm-Usage Files Item                      | Create  | Create a single file                                                  |
|Data      |Erm-Usage Files Item                      | Delete  | Delete a single file                                                  |
|Data      |Ermusageharvester                         | Manage  | All permissions for the mod-erm-harvester module                      |
|Data      |Ermusageharvester Impl                    | View    | Read available harvester implementations                              |
|Data      |Ermusageharvester Jobs                    | View    | Get harvester jobs                                                    |
|Data      |Ermusageharvester Periodic                | View    | Read harvester periodic setting                                       |
|Data      |Ermusageharvester Periodic                | Delete  | Delete harvester periodic setting                                     |
|Data      |Ermusageharvester Start-All               | View    | Start harvesting for all providers                                    |
|Data      |Ermusageharvester Start-Single            | View    | Start harvesting for a single provider                                |
|Data      |Eusage                                    | Manage  | All permissions for the mod-erm-usage module                          |
|Data      |UI-Erm-Usage                              | View    | eUsage: Can view usage data providers and view/download usage reports |
|Data      |UI-Erm-Usage                              | Manage  | eUsage: All permissions                                               |
|Data      |UI-Erm-Usage GeneralSettings              | Manage  | Settings (eUsage): Can view and edit all settings                     |
|Data      |UI-Erm-Usage Harvester Jobs               | View    | eUsage: Can view harvesting jobs                                      |
|Data      |UI-Erm-Usage Reports                      | Create  | eUsage: Can upload usage reports                                      |
|Data      |UI-Erm-Usage Reports                      | Delete  | eUsage: Can delete usage reports                                      |
|Data      |UI-Erm-Usage Udp                          | Edit    | eUsage: Can edit usage data providers                                 |
|Data      |UI-Erm-Usage Udp                          | Create  | eUsage: Can create usage data providers                               |
|Data      |UI-Erm-Usage Udp                          | Delete  | eUsage: Can delete usage data providers                               |
|Data      |UI-Erm-Usage Udp Create-Edit              | Manage  | eUsage: Can create and edit usage data providers                      |
|Data      |Usagedataproviders Collection             | View    | Get a collection of usage data providers                              |
|Data      |Usagedataproviders Item                   | View    | Get a single usage data provider                                      |
|Data      |Usagedataproviders Item                   | Edit    | Edit an usage data provider                                           |
|Data      |Usagedataproviders Item                   | Create  | Create a new usage data provider                                      |
|Data      |Usagedataproviders Item                   | Delete  | Delete an usage data provider                                         |
|Settings  |Module Erm-Usage Enabled                  | View    | UI: eUsage module is enabled                                          |
|Settings  |Settings Erm-Usage Enabled                | View    | Settings (eUsage): Display list of settings pages                     |
|Procedural|Counterreports Download Item Get          | Execute | Download a counter report                                             |
|Procedural|Counterreports Export Collection Get      | Execute | Export a collection of counter reports                                |
|Procedural|Counterreports Export Item Get            | Execute | Export a counter report                                               |
|Procedural|Ermusageharvester Jobs Purge-Finished     | Execute | Purge finished harvester jobs                                         |
|Procedural|Ermusageharvester Jobs Purge-Stale        | Execute | Purge stale harvester jobs                                            |
|Procedural|Ermusageharvester Periodic                | Execute | Save harvester periodic setting                                       |
|Procedural|UI-Erm-Usage Harvester Start Single       | Execute | eUsage: Can start harvesting for a single provider                    |


##### Capabilities for eUsage Reports (Plugin)

|Type      |Resource                                  |Action   |Description                                             |
|:---------|:-----------------------------------------|:--------|:-------------------------------------------------------|
|Data      |Eusage-Reports                            | View    | All read only permissions                              |
|Data      |Eusage-Reports                            | Manage  | All permissions                                        |
|Data      |Eusage-Reports-Report-Cost-Per-Use        | View    | Get eUsage report for cost per use                     |
|Data      |Eusage-Reports-Report-Data Collection     | View    | Get report data                                        |
|Data      |Eusage-Reports-Report-Packages Collection | View    | Get report packages                                    |
|Data      |Eusage-Reports-Report-Reqs-By-Date-Of-Use | View    | Get eUsage report for requests by date of use          |
|Data      |Eusage-Reports-Report-Reqs-By-Pub-Year    | View    | Get eUsage report for requests by publication year     |
|Data      |Eusage-Reports-Report-Status              | View    | Get eUsage report metadata (like lastUpdated)          |
|Data      |Eusage-Reports-Report-Titles Collection   | View    | Get Counter report titles                              |
|Data      |Eusage-Reports-Report-Use-Over-Time       | View    | Get eUsage report for use over time                    |
|Data      |Eusage-Reports-Title-Data Collection      | View    | Get title data                                         |
|Data      |Plugin-Eusage-Reports Charts              | View    | eUsage reports: charts may be viewed                   |
|Data      |Plugin-Eusage-Reports Matches             | Edit    | eUsage reports: title matches may be viewed and edited |
|Data      |UI-Erm-Comparisons Jobs                   | View    | A user with this permission can search and view  </br>ERM Comparison "jobs" which are used to compare </br>lists of resources in the Agreements local knowledgebase. </br> This includes the permission to see and access the </br>ERM Comparisons app in the Folio interface.|
|Data      |UI-Erm-Comparisons Jobs                   | Edit    | Grants all permissions in "ERM comparisons: View jobs" </br>plus the ability to create new jobs (i.e. compare </br>two lists of resources in the Agreements local </br>knowledgebase)|
|Data      |UI-Erm-Comparisons Jobs                   | Delete  | Grants all permissions in "ERM comparisons: View jobs" </br>plus the ability to delete jobs that have already run|
|Settings  |Module Erm-Comparisons Enabled            | View    | UI: ui-erm-comparisons module is enabled               |
|Settings  |Module Ui-Plugin-Eusage-Reports Enabled   | View    | UI: eusage-reports plugin is enabled                   |
|Settings  |Settings Erm-Comparisons Enabled          | View    | Settings (ERM comparisons): display list of settings pages|
|Procedural|Eusage-Reports-Report-Data-From-Agreement | Execute | Parse agreement lines and populate report data         |
|Procedural|Eusage-Reports-Report-Titles Collection   | Execute | Post Counter report titles                             |
|Procedural|Eusage-Reports-Report-Titles-From-Counter | Execute | Parse counter reports and return them                  |


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
* **Harvest statistics via (required).** Select how to harvest statistics: Aggregator or Sushi.
* **Aggregator (required).** If you have selected to harvest statistics via an aggregator, select the aggregator that should be used to harvest statistics. Note: The only aggregator currently supported by FOLIO is the German National Statistics Server. 
    * **Update 09/2026:** You can now harvest data from the German National Statistics Server via Counter/Sushi (see [Documentation](https://kid.hebis.de/spaces/DSS/pages/286395337/COUNTER+API)). For more information, see [Setting up an aggregator](#setting-up-an-aggregator).
* **Vendor code.** If you have selected to harvest statistics via an aggregator, enter the code by which the aggregator identifies the vendor for which statistics are requested. The German National Statistics Server requires the vendor names as displayed in the server’s user interface.
* **Service type (required).** If you have selected to harvest statistics via a SUSHI protocol, select the SUSHI service type implementation to be used by the harvester. The service type normally corresponds to the requested Report release. 
    * Counter-Sushi 4.1
    * Counter-Sushi 5.0
    * Counter-Sushi 5.1
* **Service URL (required).** If you have selected to harvest statistics via a SUSHI protocol, enter the URL to access the SUSHI service. The URL is usually listed on the provider’s backend information pages. \
Note: Only enter the_ base URL_ to the service, not the complete URL for an API request. For example, if the provider lists the URL[ https://usage.catsanddogs.org/sushi/reports/tr_b1](https://usage.catsanddogs.org/sushi/reports/tr_b1), only enter the part _before (and excluding) reports_:[ https://usage.catsanddogs.org/sushi](https://usage.catsanddogs.org/sushi). Everything else is added by the harvester.
* **Report release (required).** Select a Report release. Note: FOLIO does not support the simultaneous harvesting of reports of different releases for a usage data provider. If you want to harvest other report releases as it is configured, first reconfigure the harvester and select the desired release with the corresponding time period.
    * Counter 4
    * Counter 5
    * Counter 5.1
* **Requested report (required).** Add the report types requested to be harvested for the usage data provider. For more information, see Adding a report type.
* **Harvesting start (required)**. Enter the first month for the reports that are to be harvested.
* **Harvesting end.** Enter the last month for the reports that are to be harvested. Note: You may want to add an end month in case no more resources are licensed from a provider, a provider stops supporting usage statistics, or for any other reason that no ongoing harvesting is wanted. If no harvesting end is configured, reports are harvested continuously until the Harvesting status is changed to Inactive.
* **Customer ID (required for SUSHI).** If you have selected to harvest statistics via a SUSHI protocol, enter the customer ID assigned by the provider. This information is usually listed on the provider’s backend information pages.
* **Requestor ID.** Enter the Requestor ID assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require a Requestor ID.
* **API key.** Enter the API key assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require an API key.
* **Platform.** Enter the Platform for which reports are requested. If needed, this information is usually listed on the provider’s backend information pages. Most SUSHI services default on all platforms for which a customer has licensed resources.
* **Requestor name.** Enter the requestor name assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require a Requestor name.
* **Requestor mail.** Enter the requestor mail assigned by the provider. If needed, this information is usually listed on the provider’s backend information pages. Not all SUSHI services require a Requestor mail.


#### Adding a report type

1. Click **Add report type**.
2. Choose a **Report type** from the list of available report types for the chosen Report Release. You can filter the list.
3. Repeat as needed. The report type saves once you save the usage data provider.


#### Deleting a report type

1. Find the Report type you want to delete.
2. Click the **trash can icon**. The Report type is deleted and is removed from the record once you save the usage data provider.


#### Setting up an aggregator

It is possible to use an aggregator to retrieve statistics. Setting up an aggregator can be done in the Settings app. For more information on this, see [Settings > General > Aggregators](../../settings/settings_eusage/settings_eusage/#settings--general--aggregators).

**Update 09/2026:** You can now harvest data from the German National Statistics Server via Counter/Sushi (see [Documentation](https://kid.hebis.de/spaces/DSS/pages/286395337/COUNTER+API)).

**Example**

* **Harvesting status:** Active
* **Harvest statistics via:** Sushi
* **Service type:** Counter 5 or Counter 5.1
* **Service URL:** https://statistik.hebis.de/stats/sushi
* **Report release:** Counter 5 or Counter 5.1
* **Requested report:** TR
* **Harvesting start:** 2026-09
* **Harvesting end:** 2026-09
* **Customer ID:** *Your ID*
* **Requestor ID:** *Your ID*
* **API key:** *Your key*
* **Platform:** *A number for the platform. The number is provided by the statistics server. For example, 1. It's similar to using the vendor code.* 


#### Hide sushi credentials in detail views

If you want, you can hide the display of SUSHI credentials in the detailed view for a usage data provider in the UI. For more information on this, see [Settings > General > Display settings](../../settings/settings_eusage/settings_eusage/#settings--general--display-settings).


## Starting the harvesting process

### Starting the harvester for a specific usage data provider

1. Find the usage data provider for which you want to start the harvesting process.
2. In the **usage data provider details** pane, click **Actions > Start harvester**. A confirmation message appears.
3. Optional: If you want to view the current results of the harvesting process, you can refresh the table content in the **COUNTER statistics** table. To do this, click **Actions > Refresh statistics table**. Otherwise, the table content will be refreshed the next time you select the usage data provider or refresh the browser window.


### Starting the harvester for all usage data providers 

Starting the harvester for all usage data providers is an optional way. This can be done in the Settings app. For more information on this, see [Settings \> General \> Start harvester](../../settings/settings_eusage/settings_eusage/#settings--harvester--start-harvester).


### Setting up periodic harvesting

It is possible to set the interval for the automatic harvesting process. This can be done in the Settings app. For more information on this, see [Settings \> General \> Periodic harvesting](../../settings/settings_eusage/settings_eusage/#settings--harvester--periodic-harvesting).

## Editing a usage data provider

1. Find the usage data provider you want to edit and select it.
2. In the **usage data provider details** pane, click **Actions > Edit**.
3. Edit the usage data provider.
4. Click **Save & close**. The usage data provider is saved and updated.


### Changing the harvesting configuration

Note: Changing the harvesting configuration for a usage data provider doesn’t affect reports already stored in the system. No reports are lost. The configuration is only applied to future harvesting processes. For information on how reports are deleted, see Deleting reports.


1. Find the usage data provider you want to edit and select it.
2. In the **usage data provider details** pane, click **Actions > Edit**.
3. Edit the **Harvesting configuration**.
4. Make any additional changes to the usage data provider.
5. Click **Save & close**. The usage data provider is saved and updated.


### Adding a tag to a usage data provider

1. Find the usage data provider you want to tag and select it.
2. In the **usage data provider details** pane, click the **tag icon**.
3. In the **Tags** pane, either select a tag from the box or enter a tag. 
4. Click the **X** on the **Tags** pane to close the pane and save the tag. The tag number updates to the number of tags applied to the usage data provider.


### Adding a note to a usage data provider

1. Find the usage data provider to which you want to add a note and select it.
2. In the **usage data provider details** pane, click **Notes > New**.
3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.
4. Enter a **Note title** in the box.
5. Optional: Enter any **Details** about the note in the box.
6. Click **Save & close**. The note is saved and appears in the Notes section in the usage data provider details pane.


### Deleting a usage data provider

1. Find the usage data provider you want to delete and select it.
2. In the **usage data provider details** pane, click **Actions > Edit**.
3. In the **usage data provider edit** window, click **Delete**.
4. In the **Delete usage data Provider** dialog, click **Delete**. The usage data provider and all associated reports are deleted and a confirmation message appears.


## Management of statistics

### Viewing stored COUNTER reports for a usage data provider

1. Find the usage data provider for which you want to view the stored reports and select it.
2. In the **usage data provider details** pane, click **COUNTER statistics**.
3. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.

The **COUNTER statistics table** displays a row for each report type and a column for each month, grouped by release. If a report is stored or has tried to harvest, a **Report button** is displayed in the appropriate cell of the table. The buttons show the state of the report with an icon:

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


### Uploading a COUNTER report manually

1. Find the usage data provider for which you want to manually upload a COUNTER report.
2. In the **usage data provider details** pane, click **Actions > Upload Counter report**.
3. The window **Upload COUNTER report** opens to select and upload the file. Select a file by dragging and dropping the file into the upload form field or select a file via your file manager using **or select file** button. 
4. Click on **Save**.


#### File types

* Please note the information on the file type for each report release.
* You can only use COUNTER Master Reports. It is not possible to upload standard views. Standard views can be generated by the program using the download function if you have saved a COUNTER Master Report.
* COUNTER 5.1: With FOLIO Release Sunflower, reports for Release 5.1 can only be uploaded manually as JSON. Other formats will follow with the next FOLIO release.


#### Options in the upload form for COUNTER reports

* You can mark a manual upload as manually edited. To do this, use the checkbox **Report data has been edited manually** in the upload form. 
* **Edit reason** is a text field to create a comment.


### Uploading a non-COUNTER report

1. Find the usage data provider for which you want to manually upload a non-COUNTER report.
2. In the **usage data provider details** pane, click **Actions > Upload non-Counter report**.
3. The window **Upload non-COUNTER report** opens to enter information about the non-Counter report and select and upload the file.
4. Fields in the upload form
* **YEAR** (required) Specify the year in the form YYYY.
* **Note** A note can be left.
* Type of data storage can be chosen by using the radio buttons.
    * **Upload file** With this option you can upload a non-Counter report to the system. Select a file by dragging and dropping the file into the upload form field or select a file via your file manager using **or select file** button. Then click **Save**.
    * **Link file** This option allows you to enter a URL or a file path as text. Then click **Save**. Please note: The file paths are displayed as links in the user interface, but the browser requires permissions so that the links to the file paths are executed when they are clicked.


### Downloading a COUNTER report

1. Find the usage data provider from which you want to download a COUNTER report.
2. In the **usage data provider details** pane, click **COUNTER statistics**.
3. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.
4. Select the COUNTER report by clicking on its icon in the table.
5. The window **Report info** opens.
6. Under **Actions** you can select one of the listed file types for download.
7. The window of the file manager opens and you can save the report on your system via the file manager.


### Downloading COUNTER reports for multiple months

1. Find the usage data provider from which you want to download one ore more COUNTER reports.
2. In the **usage data provider details** pane, click **COUNTER statistics**. If reports are stored, they are displayed in a separate table for each year. You can click on the year you want to view or click **Expand all years**.
3. Under the **COUNTER statistics** there is an area **Download reports for multiple months**. In this form you can enter information about the time period required, the report type and the export format required.
4. Then click **Download**.
5. The window of the file manager opens and you can save the report on your system via the file manager. Please note that if you have a large amount of data, processing takes some time and the file manager opens with a delay.


### Downloading a non-COUNTER report

1. Find the usage data provider from which you want to download a non-COUNTER report.
2. In the **usage data provider details** pane, click **Non-COUNTER statistics**.
3. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.
4. Select the non-COUNTER report by clicking on its **information icon** in the table.
5. The window **Customreport info** opens.
6. Under **Actions** you can select one of the listed file types for download.
7. The window of the file manager opens and you can save the report on your system via the file manager.


### Deleting a single COUNTER report

1. Find the usage data provider for which you want to view the stored reports and select it.
2. In the **usage data provider details** pane, click **COUNTER statistics**.
3. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.
4. Select the COUNTER report by clicking on its **icon** (Green/checkmark or Orange/exclamation mark or Red/Cross) in the table.
5. The window **Report info** opens.
6. Under **Actions** you can click on **Delete report**.
7. Confirm the question **Delete Counter report?** by clicking **Yes**.


### Deleting multiple COUNTER reports

1. Find the usage data provider for which you want to view the stored reports and select it.
2. In the **usage data provider details** pane, click **Actions > Delete reports**.
3. The window **Delete multiple reports** opens.
4. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.
5. You can select the reports that should be deleted using the associated checkbox.
6. Then click **Delete reports**.
7. Confirm the question **Are you sure to delete multiple reports?** by clicking **Delete**.


### Deleting a non-COUNTER report

1. Find the usage data provider for which you want to view the stored reports and select it.
2. In the **usage data provider details** pane, click **Non-COUNTER statistics**.
3. If reports are stored, they are displayed in a separate table for each year. Click on the year you want to view or click **Expand all years**.
4. Select the COUNTER report by clicking on its **information icon** in the table.
5. The window **Customreport info** opens.
6. Under **Actions** you can click on **Delete custom report**.
7. Confirm the question **Delete non-counter report?** by clicking **Yes**.


## Searching for a usage data provider

You can search for usage data providers in the **Search & filter** pane. To search for a usage data provider, enter your search terms into the box and click **Search**. Once you search for a usage data provider, the following information appears in the usage data providers pane:

* **Provider name.** The name of the usage data provider.
* **Harvesting status.** The status of the usage data provider.
* **Latest statistics.** The month of the most current report stored in FOLIO.
* **Aggregator.** The aggregator from which reports are currently configured to harvest.

In the search results, click on a usage data provider to view it. The **usage data provider details** pane displays with additional information about the usage data provider and the associated reports stored in FOLIO.

You can also search for usage data providers by selecting any of the filters in the **Search & filter** pane. Additionally, you can apply the filters after you perform a search to limit your results. See the sections below for more information.


### Harvesting status

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

To search for usage data providers for which reports of a specific type are stored in FOLIO, follow these steps:

1. In the **Search & filter** pane, click **Report types**.
2. Select the type(s) from the drop-down list. Your results appear in the usage data provider pane.


### Report releases

To search for usage data providers with specific versions of COUNTER reports that have been saved, follow these steps:

1. In the **Search & filter** pane, click **Report releases**.
2. Select the versions of COUNTER reports from the drop-down list. Your results appear in the usage data provider pane. The list shows usage data providers that have reports with one of the selected versions.


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


## eUsage Reports (Plugin)

### Matching summary

When a new COUNTER report is harvested into the eUsage app, the eUsage Reports module creates matches between the titles in the COUNTER report and the titles that already exist in the Agreements local KB. Matching is done via ISSN or ISBN. If no matching ISSN or ISBN is found in the KB, then the title remains unmatched and can be manually addressed by a user.

Note that matching is only supported for the COUNTER 5 TR report.

The eUsage Reports matching summary can be found in the eUsage app. This accordion appears on each eUsage provider record and provides a summary of the results of the matching process. The matching summary contains the following data:
* **Date of last harvest.** The date of the last COUNTER TR report harvest for that provider, whether manual or automated.
* **Status**
    * Reviewed: All titles have been reviewed and either matched or ignored.
    * Pending review: Some titles have not yet been matched or ignored.
    * No records: No counter data has yet been loaded.
* **Records loaded.** The number of titles found in COUNTER TR reports for the current provider.
* **Matched.** The number of COUNTER TR titles that have been matched to a KB title.
* **Unmatched.** The number of COUNTER TR titles that were not matched.
* **Ignored.** The number of titles have been manually flagged as ignored.


#### Working with matches

Clicking the hyperlinked numbers in the matching summary brings up the eUsage titles screen. This screen allows the user to review matched titles, create manual matches, and ignore titles that should not be matched. Each title in the list has an actions menu that provides the following options.


##### Editing titles

The edit option allows the user to manually choose a title from the local KB to match to a title found on a COUNTER TR report. Unmatched titles can be edited to select a match for the first time, and matched titles can be edited to change an existing match in case of error.

To edit:

1. Click the menu icon in the **Actions** column and select **Edit**.
2. Use the modal to search for a title in the local KB.
3. Click on the desired title to create the match.

Once a match is chosen, it will be used for all future harvests and reports. You will not need to manually rematch an unmatched title every time you load new data. Matches cannot be removed at this time. You may correct an error by changing the match, but you cannot reset a title to **Unmatched**.


##### Ignoring titles

There may be titles included on COUNTER TR reports that appear in error or are not of interest. If you don't want to include these titles in your reports or go through the trouble of matching them, you can ignore them. Ignored titles will not be shown in your matched or unmatched counts or cause a provider to be marked as **pending review**.

To ignore:

1. Click the menu icon in the **Actions** column and select **Ignore**.
2. Your title will be ignored.
3. To remove a title from the Ignored list, select the Actions menu and choose **Stop ignoring**.


#### Updating matches

The **Update matches** button triggers the eUsage Reports module to process any new COUNTER report data that has become available since the last harvest. If new titles have come in, they will either be matched automatically or added to the unmatched list. 

Note that for new data to be included in the eUsage Reports visualizations, you must update matches before analyzing an agreement or viewing a report.


### eUsage Reports (Agreements)

eUsage Reports appear in an accordion on the Agreement record in the Agreements app. These reports include COUNTER and financial data about the titles that are part of a given agreement. The reports will include titles directly associated with an agreement line and titles associated with an agreement line via a package.

For eUsage reports to function properly, you must meet the following requirements:

1. Associate an eUsage provider record with your agreement in the Usage data section.
2. Harvest at least one COUNTER 5 TR report for this provider using the eUsage app.
3. Update matches for the provider in the eUsage app.
4. Review matches and ensure all titles of importance are matched to a title in the KB.

Each eUsage report includes a set of parameters for the user to define a visualization, and a downloadable CSV file containing the data used to generate the visualization.


#### Use over time

This report displays a count of all COUNTER uses for the titles on an agreement during a given time period. It displays both total item requests and unique item requests.


##### Parameters

* **Format:** Journals or books, identified by the **publication type** field in the KB.
* **Start month:** The earliest month of data to be included in the report.
* **End month:** The last month of data to be included in the report.
* **Include Open Access use?**
    * Yes - includes use identified as **Gold_OA** in the source COUNTER report.
    * No - excludes use identified as **Gold_OA** in the source COUNTER report.
* **Count type:** Not applicable for this report, because both total and unique usage are displayed at all times.
* **Scale: Select interval for period of use:** Determines the scale of the x-axis by setting the grouping level for period of use.


##### Report data

* **Title:** The title of the resource as it appears in the local KB.
* **Print ISSN:** The print ISSN of the resource as it appears in the local KB, if available.
* **Online ISSN:** The online ISSN of the resource as it appears in the local KB, if available.
* **ISBN:** The ISBN of the resource as it appears in the local KB, if available.
* **Access type:** Access type value as it appears on the COUNTER reports. 
    * Controlled: Content that is available to subscribers only (i.e., paid content)
    * OA_Gold: Content that is freely available.
* **Metric type:** The type of metric used to generate the usage count.
    * Total_Item_Requests: Total number of times a content item was requested; includes duplicate requests for the same item during a single session.
    * Unique_Item_Requests: Number of unique content items requested; excludes duplicate requests for the same item during a single session.
* **Reporting period total:** The sum of all COUNTER uses that occurred on or between the start and end dates defined in the report parameters.
* **Period of use totals:** The number of COUNTER uses broken down by the interval defined in the scale parameter. This may be presented as a year (e.g., 2019), a span (e.g., 2019-01-2019-12) or a month (2019-01).


#### Use over time, grouped by publication year

This report displays a count of COUNTER uses for a given time period, with the counts stratified by year of publication of the content being accessed. On the downloadable version of the report, a separate report line is included for each unique combination of: Title + Year of publication + Access type + Metric type.


##### Parameters

* **Format:** Not applicable; this report includes only Journals.
* **Start month:** The earliest month of data to be included in the report.
* **End month:** The last month of data to be included in the report.
* **Include Open Access use?**
    * Yes - includes use identified as **Gold_OA** in the source COUNTER report.
    * No - excludes use identified as **Gold_OA** in the source COUNTER report.
* **Count type:** The type of metric used to generate the usage count.
    * Total_Item_Requests: Total number of times a content item was requested; includes duplicate requests for the same item during a single session.
    * Unique_Item_Requests: Number of unique content items requested; excludes duplicate requests for the same item during a single session.
* **Scale: Select interval for period of use:** Determines the scale of the x-axis by setting the grouping level for period of use.
* **Stacks: Group publication year by:** Determines the groups of publication years used to create the stacks in the stacked bar chart.


##### Report data

* **Title:** The title of the resource as it appears in the local KB.
* **Print ISSN:** The print ISSN of the resource as it appears in the local KB, if available.
* **Online ISSN:** The online ISSN of the resource as it appears in the local KB, if available.
* **ISBN:** The ISBN of the resource as it appears in the local KB, if available.
* **Access type:** Access type value as it appears on the COUNTER reports.
    * Controlled: Content is available to subscribers only (paid)
    * OA_Gold: Content is freely available.
* **Year of publication:** The year of publication for the journal article that was accessed.
* **Metric type:** The type of metric used to generate the usage count.
    * Total_Item_Requests: Total number of times a content item was requested; includes duplicate requests for the same item during a single session.
    * Unique_Item_Requests: Number of unique content items requested; excludes duplicate requests for the same item during a single session.
* **Reporting period total:** The sum of all COUNTER uses that occurred on or between the start and end dates defined in the report parameters.
* **Period of use totals:** The number of COUNTER uses broken down by the interval defined in the scale parameter. This may be presented as a year (e.g., 2019), a span (e.g., 2019-01-2019-12) or a month (2019-01).


#### Use over publication year, grouped by time

This report displays a count of COUNTER uses for a given year of publication, with the counts stratified by the date of access. This report can be thought of as a pivot of the **Use over time, grouped by publication year** report. It displays the same data, but the axes are flipped. On the downloadable version of the report, a separate report line is included for each unique combination of: Title + Period of use + Access type + Metric type.


##### Parameters

* **Format:** Not applicable; this report includes only Journals.
* **Start month:** The earliest month of data to be included in the report.
* **End month:** The last month of data to be included in the report.
* **Include Open Access use?**
    * Yes - includes use identified as **Gold_OA** in the source COUNTER report.
    * No - excludes use identified as **Gold_OA** in the source COUNTER report.
* **Count type:** The type of metric used to generate the usage count.
    * Total_Item_Requests: Total number of times a content item was requested; includes duplicate requests for the same item during a single session.
    * Unique_Item_Requests: Number of unique content items requested; excludes duplicate requests for the same item during a single session.
* **Scale: Select interval for publication year:** Determines the scale of the x-axis by setting the grouping level for years of publication.
* **Stacks:** Group period of use by: Determines the groups of usage periods used to create the stacks in the stacked bar chart.


##### Report data

* **Title:** The title of the resource as it appears in the local KB.
* **Print ISSN:** The print ISSN of the resource as it appears in the local KB, if available.
* **Online ISSN:** The online ISSN of the resource as it appears in the local KB, if available.
* **ISBN:** The ISBN of the resource as it appears in the local KB, if available.
* **Period of use:** The time period when the content was accessed.
* **Access type:** Access type value as it appears on the COUNTER reports.
    * Controlled: Content is available to subscribers only (i.e., paid content)
    * OA_Gold: Content is freely available.
* **Metric type:** The type of metric used to generate the usage count.
    * Total_Item_Requests: Total number of times a content item was requested; includes duplicate requests for the same item during a single session.
    * Unique_Item_Requests: Number of unique content items requested; excludes duplicate requests for the same item during a single session.
* **Reporting period total:** The sum of all COUNTER uses that occurred on or between the start and end dates defined in the report parameters.
* **Year of publication totals:** The number of COUNTER uses per year of publication as broken down by the interval defined in the scale parameter. This may be presented as a year (e.g., 2019), a span (e.g., 2015-2019).


#### Cost per use

This report displays an average cost per use for a given time period. The yellow line displays the number title with usage that were present in an agreement during each period. 


##### Calculation

The cost per use metric uses paid invoice totals from the Invoices module to determine the cost of an agreement. For the cost per use report to function, you must link your agreement lines to a purchase order with at least one paid invoice.

Cost per use is calculated using the following methods:

* **Cost:**
    * Cost is sourced from any paid invoices associated with an agreement line via the linked purchase order line.
    * Cost is reported by the subscription dates defined on the invoice record. If no subscription dates are present, then the fiscal year dates are used as a fallback.
    * If a report is requested at a finer lever of granularity than the available subscription/fiscal year dates, the cost will be prorated by dividing it equally across the number of months in the period of use.
    * The cost is also prorated by dividing the total across the number of years of publication for which use has occurred. An aggregate view can be created by summing the total for all years of publication.
    * If the agreement line is for a single title, then there is a one-to-one relationship between the title and the payment.
    * If the agreement is for a package, then the total cost is divided equally across all titles in the page.
* **Use**
    * Use is sourced from the counter reports associated with a title.
    * Use is reported by the month, but can be aggregated into larger groups.
* **Cost per use**
    * Cost per use is calculated by dividing the cost for a given period of use and year of publication by the number of uses in that period.
    * On the downloadable version of this report, a separate report line is included for each unique combination of Title + Year of publication + Subscription/Fiscal year period.


##### Parameters

* **Format:** Journals or books, identified by the **publication type** field in the KB.
* **Start month:** The earliest month of data to be included in the report.
* **End month:** The last month of data to be included in the report.
* **Include Open Access use?**
    * Yes - includes use identified as **Gold_OA** in the source COUNTER report.
    * No - excludes use identified as **Gold_OA** in the source COUNTER report.
* **Count type:** Not applicable for this report, because both total and unique usage are displayed at all times.
* **Scale: Select interval for period of use:** Determines the scale of the x-axis by setting the grouping level for period of use.


##### Report data

* **Title:** The title of the resource as it appears in the local KB.
* **Derived title:** A derived title is a title that is related to the Agreement and any related purchases by way of a package. The cost of these titles is derived from the total cost of the package by splitting the cost evenly.
* **Print ISSN:** The print ISSN of the resource as it appears in the local KB, if available.
* **Online ISSN:** The online ISSN of the resource as it appears in the local KB, if available.
* **ISBN:** The ISBN of the resource as it appears in the local KB, if available.
* **Year of publication:** The year of publication for the journal article that was accessed.
* **Order type:** The order type as it appears on the linked purchase order. Possible values include **one-time** and **ongoing**.
* **Purchase order line:** The purchase order line number associated with the title. This is sourced from the agreement line-POL relationship defined on the Agreement record.
* **Invoice number:** The invoice line number associated with the the purchase order line.
* **Fiscal year start:** The first date of the fiscal year in which the invoice was paid. Fiscal year dates are derived from the Fiscal Year record in the Finance app that corresponds to the date the invoice was paid.
* **Fiscal year end:** The last date of the fiscal year in which the invoice was paid. Fiscal year dates are derived from the Fiscal Year record in the Finance app that corresponds to the date the invoice was paid.
* **Subscription start:** The subscription start date as it appears on the invoice line record.
* **Subscription end:** The subscription start date as it appears on the invoice line record.
* **Amount encumbered:** The total of any outstanding encumbrances on a related purchase order line. Encumbrances are displayed for informational purposes only and are not considered in the cost per use calculation.
* **Amount paid:** The total amount paid on the invoice line that is linked to a related purchase order line.
* **Metric type:** The type of metric used to generate the usage count.
    * Total_Item_Requests: Total number of times a content item was requested; includes duplicate requests for the same item during a single session.
    * Unique_Item_Requests: Number of unique content items requested; excludes duplicate requests for the same item during a single session.
* **Reporting period total:** The sum of all COUNTER uses that occurred on or between the start and end dates defined in the report parameters.
* **Period of use totals:** The number of COUNTER uses broken down by the interval defined in the scale parameter. This may be presented as a year (e.g., 2019), a span (e.g., 2019-01-2019-12) or a month (2019-01).
