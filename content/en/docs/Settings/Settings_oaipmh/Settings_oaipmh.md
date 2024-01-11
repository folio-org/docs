---
title: "Settings > OAI-PMH"
linkTitle: "OAI-PMH"
date: 2023-11-29
weight: 190
tags: ["subtopic"]   
---

**This section of the documentation contains links to external sites. Please be advised that these sites are not maintained by the FOLIO Documentation Group and may be aligned with a different FOLIO release.**

The OAI-PMH section of the Settings app is where you configure the behavior of FOLIO's OAI-PMH feed.  Learn more about the [OAI-PMH Specification at the Open Archives website](http://www.openarchives.org/OAI/openarchivesprotocol.html).

FOLIO currently supports three metadata formats:
* marc21
* oai_dc
* marc21_withholdings

This list can be viewed by using the [**ListMetadataFormats** verb](http://www.openarchives.org/OAI/openarchivesprotocol.html#ListMetadataFormats).

## Permissions

To interact with OAI-PMH settings, a user needs to be assigned the following permission:

* **Settings (OAI-PMH): Can view**  This permission allows the user to view all the OAI-PMH settings, but "Save" button is disabled. 
* **Settings (OAI-PMH): Can view and edit settings** This permission allows the user to view and edit the OAI-PMH settings.
* **Settings (OAI-PMH): Can view logs** This permission allows the user to view Settings > OAI-PMH > Logs.


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

### Suppressed records processing
One of:
* **Transfer suppressed records with discovery flag value** - Adds a MARC subfield $t = 1 to FOLIO's 999 field (for Instances), 852 field (for Holdings) or 952 field (for Items).
* **Skip suppressed from discovery records** - Instances marked 'Suppress from Discovery' are not included in the OAI-PMH response.

### OAI-PMH errors processing
One of:
* **Associate with HTTP status 200** - Error messages are returned with an HTTP 200 response code.
* **Associate with HTTP error statuses** - Error messages are returned with an appropriate HTTP error code.

### Record source
One of:
* **Source records storage** - MARC instance records are harvested from SRS.
* **Inventory** - Instance records are harvested from inventory only, and all OAI-PMH records are generated on-the-fly as part of the harvesting. 
* **Source records storage and inventory** - All instance records with a metadata source of MARC are retrieved from source record storage. Instance records with a metadata source are retrieved from inventory and OAI-PMH records are generated on-the-fly for those inventory-only records as part of the harvest.

## Settings > OAI-PMH > Logs
The logs page displays a list of completed harvests and is kept for 30 days. If a harvest contains a record or records that cannot be handled, a "Download" link will appear in the rightmost column of the logs. Clicking this link will download a spreadsheet where errors are listed with the UUID of the affected instance and an error message.

## Field mappings for ListRecords response

In order for Discovery services and OPACs to allow for filtering, aggregating and searching based on location and call number information, the OAI-PMH server in FOLIO needs to be able to supply this information as part of the feed.

Mapping from Inventory records to MARC fields as part of the feed is as follows:

| Inventory field | MARC | Additional rules |
| --- | ----------- | --- |
| Effective location: Institution |	952$a	 ||
| Effective location: Campus | 952$b	||
| Effective location: Library	| 952$c	 ||
| Effective location: Name|	952$d	||
| Effective call number components: call number	| 952$e	||
| Effective call number components: prefix |	952$f	 ||
| Effective call number components: suffix| 952$g	||
| Effective call number components: type | 952$h	||
| Material type	| 952$i	 ||
| Volume |	952$j	 ||
| Enumeration |	952$k	 ||
| Chronology |	952$l	 ||
| Barcode	| 952$m	 ||
| Copy number	| 952$n	 ||
| Electronic access: URI | 856$u | Creates separate datafield for each URL. Uses URLs from each record level (holding and item) |
| Electronic access: Link text | 856$y| Creates separate datafield for each URL. Uses URLs from each record level (holding and item) |
| Electronic access: Materials specified |	856$3	| Creates separate datafield for each URL. Uses URLs from each record level (holding and item) |
| Electronic access: Public note | 856$z | Creates separate datafield for each URL. Uses URLs from each record level (holding and item) |
| Electronic access: Relationship: No display constant generated |	856 2nd indicator 8 1st indicator 4	 ||
| Electronic access: Relationship: No information provided |	856 2nd indicator blank 1st indicator 4	| Such indicator filling in works also for empty "Relationship" value |
| Electronic access: Relationship: Related resource |	856 2nd indicator 2 1st indicator 4 ||
| Electronic access: Relationship: Resource	| 856 2nd indicator 0 1st indicator 4	 ||
| Electronic access: Relationship: Version of resource |	856 2nd indicator 1 1st indicator 4	 ||
| Electronic access: Relationship: empty value |	856 2nd indicator empty 1st indicator 4	||
