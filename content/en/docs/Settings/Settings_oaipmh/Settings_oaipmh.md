---
title: "Settings > OAI-PMH"
linkTitle: "OAI-PMH"
date: 2022-02-27
weight: 190
tags: ["subtopic"]   
---

The OAI-PMH section of the Settings app is where you configure the behavior of FOLIO's OAI-PMH feed.  Learn more about the [OAI-PMH Specification at the Open Archives website](http://www.openarchives.org/OAI/openarchivesprotocol.html).

FOLIO currently supports three metadata formats:
* marc21
* oai_dc
* marc21_withholdings

This list can be viewed by using the [**ListMetadataFormats** verb](http://www.openarchives.org/OAI/openarchivesprotocol.html#ListMetadataFormats).

## Permissions

To interact with OAI-PMH settings, a user needs to be assigned the following permission:

* **Settings (OAI-PMH): Display list of settings pages**  This permission allows the user to view all the OAI-PMH settings, but "Save" button is disabled. User can see the message "You lack necessary permissions to edit OAI-PMH settings. Please, contact the system administrator."
* **Settings (OAI-PMH): Can view and edit settings** This permission allows the user to view and edit the OAI-PMH settings.


## Settings > OAI-PMH > General

General settings to configure how the [**Identify** verb](http://www.openarchives.org/OAI/openarchivesprotocol.html#Identify) responses.

### Enable OAI service

Checkbox to globally enable or disable OAI services.

### Repository name

Sets the content in the `respositoryName` XML element of the Identify response.

### Base URL

Sets the content in the `baseURL` XML element of the Identify response.  This value also appears in the content of the `response` XML element of the ListRecords verb.

### Time granularity

Sets the content in the `granularity` XML element of the Identify response.

### Administrator email(s)

Sets the content in the `adminEmail` XML element of the Identify response.

## Settings > OAI-PMH > Technical

### Max records per response

Number of records to return per page of response.

### Enable validation

Defines if the response content should be validated against XSD schemas.

### Formatted output

Determines if the marshalled XML data is line feeds and indentation.

## Settings > OAI-PMH > Behavior

### Deleted records support
One of:
* **No** - Indicates that no information about deleted records is presented.
* **Persistent** - Records with MARC Leader 05 equal to 'd', 's' or 'x' will be listed as deleted in OAI-PMH ListRecords responses.
* **Transient** - Same behavior as **Persistent**, but without a guarantee that deleted records will be kept indefinitely in FOLIO.

See <https://issues.folio.org/browse/MODOAIPMH-108> for more details of the implementation.

Setting value appears in `deletedRecord` XML element of Identify response.

### Suppress records processing
One of:
* **Transfer suppressed records with discovery flag value** - Adds a MARC subfield $t = 1 to FOLIO's 999 field (for Instances), 852 field (for Holdings) or 952 field (for Items).
* **Skip suppressed from discovery records** - Instances marked 'Suppress from Discovery' are to included in the OAI-PMH response.

### OAI-PMH errors processing
One of:
* **Associate with HTTP status 200** - Error messages are returned with an HTTP 200 response code.
* **Associate with HTTP error statuses** - Error messages are returned with an appropriate HTTP error code.

## Settings > OAI-PMH > Sets

{{% alert title="NOT YET IMPLEMENTED" color="info"%}}
OAI-PMH Sets are not currently implemented in this version of FOLIO.  While the following configurations can be set, the Sets defined will not appear when using the [**ListSets** verb](http://www.openarchives.org/OAI/openarchivesprotocol.html#ListSets).
{{% /alert %}}

### Creating a new set

1. Click **New**.

2. Enter a **Set name** (required).

3. Enter a **Set description** (optional, but recommended).

4. Set Filtering Conditions 

5. Click **Save**. The fund type is saved and appears in the Fund types list.

### Editing a set

1. Find the set you want to edit, click the **Actions** button, and select the **Edit** option.

2. Edit the set.

3. Click **Save**. The set is updated.


### Duplicating a set

1. Find the set you want to duplicate, click the **Actions** button, and select the **Duplicate** option.

2. Edit the set.

3. Click **Save**. A new set is created.


### Deleting a set

1. Find the set you want to delete. Click the **Actions** button, and select the **Delete** option.

2. In the **Confirm deletion of set** dialog, click **Delete**. A confirmation message appears and the set is deleted.
