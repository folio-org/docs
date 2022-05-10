
---
title: "Local KB Admin"
linkTitle: "Local KB admin"
date: 2021-06-23
weight: 50
tags: ["parenttopic"]
---


The Local KB admin app allows you to import data in KBART and JSON format into FOLIO’s local knowledgebase (KB) and monitor harvest jobs from external sources of e-resource metadata, which can be configured in Settings > Local KB admin > External data sources. This data is individual e-resources organized in packages. It is available in the Agreements app > E-resources tab after import and can be linked to agreements as agreement lines. If you use the eHoldings app which relies on the knowledgebase from EBSCO, the use of Local KB admin is optional. You can hide the Local KB by activating the  "Hide internal agreements knowledgebase" checkbox in Settings > Agreements > Display settings.

Definition of terms related to the Local KB admin app:


* **E-resource.** An electronic resource. This generally refers to packages and titles.
* **Provider.** The provider of the e-resource, e.g. the vendor or publisher.
* **Package.** A collection of e-resources bundled together as a unit.
* **Title.** An individual e-resource, e.g. an e-book, e-journal, or database, regardless in which package it is included in.
* **Package title.** A title within a package with a certain package-platform combination, e.g. Title “Trade profiles” in package “WTO iLibrary journals” on platform “WTO iLibrary”.
* **Knowledgebase (KB).** A knowledge base is an extensive database maintained by a knowledge base supplier that contains information about electronic resources such as title lists and coverage dates etc. Knowledge bases typically organize the resources provided by a content provider into collections or databases that reflect specific content provider offerings, for example packages of e-journals, e-books, or other materials.
* **Local knowledgebase.** The internal knowledgebase of FOLIO to locally manage packages and e-resources.
* **Proxy server**. A service which is used to proxy requests for e-resources in order that a user can access the e-resource with minimal authentication/authorisation issues.
* **Platform.** A platform is a provider's infrastructure through which e-resources can be accessed.


## Permissions

The permissions listed below allow you to interact with the Local KB admin app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Local KB admin app.

The following permissions are applicable to all libraries using the Local KB admin app:



* Local KB admin: Create jobs. This permission allows the user to add new import jobs.
* Local KB admin: Delete jobs. This permission allows the user to delete existing import jobs.
* Local KB admin: Manage proxy server configuration. This permission allows the user to create, edit, and delete proxy server settings in Settings > Local KB admin.
* Local KB admin: Manage remote KB configuration. This permission allows the user to create, edit, and delete external data sources in Settings > Local KB admin.
* Local KB admin: View jobs. This permission allows the user to view existing jobs. It also allows the user to see and access the Local KB admin app in the FOLIO interface.


## Connecting an external KB 

The Local KB admin app provides the ability to configure external data source that are then periodically queried for changes to metadata. The external source is thereby kept in sync in the local KB and can act as the basis for agreement lines in the Agreements app. To add an external data source to the system, follow these steps:


1. Open Settings > Local KB admin > External data sources.
2. In the external data sources pane, click “New” to add a new data source to system.
3. Fill in the primary fields. For more information on the fields, see the section descriptions below.
4. Once you have included all of the information about the external data source, click Save. The harvester is going to fetch data from the new source with its next run.


### Fields

* **Name.** The name of the external source as it will display in Agreements > E-resources tab > External data source filter.
* **Type.** The adapter type, e.g. for connecting GOKb `org.olf.kb.adapters.GOKbOAIAdapter`
* **Record type.** The record type used to start the harvest process. If set to Package, then the harvester will fetch all packages and titles included in these packages.
* **URI.** URL that points to the OAI endpoint.
* **Trusted for title instance metadata.** If this checkbox is selected, the data in the OAI stream will overwrite any existing title data that is matched during the import process. This can be used to update, for example, the name of an e-resource that already exists in the local KB. If the checkbox is not selected, the data in the OAI stream won’t update any existing title data.
* **Is active.** If this checkbox is selected, the data source is included in the harvest process.
* **Supports harvesting.** Currently non-functional, this indicates if the data source supports data harvesting
* **Activation enabled.** Currently non-functional, this indicates if the data source supports activation/selection information for resources
* **Listprefix.** For data sources harvested using the OAI-PMH (Open Access Initiative Protocol for Metadata Harvesting), this can be used to specify the metadata prefix for the ListRecords method. This may be required depending on the adapter type specified for the source
* **Fullprefix.** For data sources harvested using the OAI-PMH (Open Access Initiative Protocol for Metadata Harvesting), this can be used to specify the metadata prefix for the fullprefix method. This may be required depending on the adapter Type specified for the source
* **Principal**: The account ID for the external KB.
* **Credentials**: The API key for the external KB.


## Creating a KBART import job

1. In Local KB admin, click Actions > New KBART import job
2. In the New KBART job window, fill in the primary fields. For more information on the fields, see the section descriptions below.
3. Drag the KBART file to the upload section or click the "or choose file" button to select the KBART file in your file system.
4. Once you have included all of the information about the job, click Save & close. The job is saved and being processed in the background.


### Fields

* **Package name.** The name of the package that is displayed in the Agreements app in the E-resources section, if the local KB is used by the library.
* **Package source.** Specification of the source of the package list.
* **Package reference.** The package reference, e.g. a package ID.
* **Package provider.** The name of the provider on whose platform the package content is available. If the Provider entered does not exist, a new one will be created in the local knowledgebase in the Agreements app.
* **Trust this job as a source of title instance metadata.** If this checkbox is selected, the data in the KBART file will overwrite any existing title data that is matched during the import process. This can be used to update, for example, the name of an e-resource that already exists in the local KB. If the checkbox is not selected, the data in the KBART file won’t update any existing title data.

The Source and Reference fields are used together as a unique identifier for packages. If a package with the given Source+Reference already exists it will be updated, otherwise a new package will be created.


## Creating a JSON import job 

To add data to the local KB, you can create JSON import files according to a [JSON schema](https://drive.google.com/file/d/1ask-NiQwjgB70JroycsY78vfTYemgusy/view).



1. In Local KB admin, click Actions > New JSON import job
2. In the New JSON job window, drag the JSON  file to the upload section or click the "or choose file" button to select the JSON file in your file system.
3. Click Save & close. The job is saved and being processed in the background.


## Searching for import jobs

You can search for import jobs in the Search & filter pane. To search for import jobs, enter your search terms in the search box and click Search. The search is limited to the Job name and wont search any other data.

You can also search for import jobs by selecting any of the filters in the Search & filter pane: Running status, Result, and Job type. For more information on the filters, see the filter descriptions below.


### Running status

To filter jobs by their running status, select one of the following:


* Queued: Jobs that are queued for processing, but have not yet being processed.
* In progress: Jobs that are currently being processed.
* Ended: Jobs that have been processed.


### Result

To filter jobs by their running status, select one of the following:

* Success: Jobs that have run to completion without errors.
* Partial success: Jobs that have run to completion with some errors.
* Failure: Jobs that have not run successfully.
* Interrupted: Jobs that have not run to completion because of an unknown interruption.


### Job type

To filter jobs by their type, select one of the following


* Harvester: Jobs that were triggered by an automated harvest job.
* File import: Jobs that were triggered by an JSON or KBART file import.

Harvest jobs can be configured in Settings > Local KB admin > External data source.


## Viewing an import job

Once you search for an import job, the following information appears in the results pane:

* Job name: The name of the job
* Running status: The running status of the job
* Import outcome: The job result
* Errors: Number of errors
* Started: Date and time of the job start
* Ended: Date and time of the job end

In the search results, click an import job to view it. The job details pane displays with additional information.


## Deleting an import job 


1. Find the import job you want to delete.
2. In the job detail pane, click Actions > Delete.
3. In the Delete job dialog, click Delete. A confirmation message appears and the import job is deleted. Please note that deleting an import job only deletes the job entry in the log and not the imported data in the local KB. FOLIO currently does not offer the possibility to delete imported data from the local KB.


## Exporting logs

_&lt;introduced with Kiwi_&gt;


## Proxy server settings

See [https://wiki.folio.org/x/qYL-Ag](https://wiki.folio.org/x/qYL-Ag) for further description.
