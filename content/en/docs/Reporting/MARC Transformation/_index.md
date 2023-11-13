---
title: "MARC Transformation"
linkTitle: "MARC Transformation"
date: 2023-10-25
weight: 40
tags: ["parenttopic"]
---

## MARC Transformation for LDP 

The marct tool is part of the Library Data Platform (LDP) project. The marct tool converts SRS/MARC records from JSON to tabular format in preparation for loading them into an LDP reporting database. SRS stands for Source Record Storage. MARC stands for Machine-Readable Cataloging, which is a standard format for storing data elements within bibliographic records in computer systems. Once the MARC data has been loaded into the reporting database, marct performs incremental updates to the data, which saves time on the data transfer from the transactional to the reporting database.

The marct tool reads the SRS MARC data from the database tables marc_records_lb and records_lb. Next, it transforms only the current versions of the records from these tables into tabular data. The transformed records are written to the folio_source_record.marc__t table.

Once the MARC data is transformed, the folio_source_record.marc__t table is ready to be used in queries that require MARC data from the reporting database. For example, the query below shows the contents of the MARC 008 field, which captures general bibliographic information about a library item.

```
SELECT
	sm.instance_hrid,
	sm.field,
	sm.content
FROM folio_source_record.marc__t AS sm
WHERE (sm.field = '008')	 
LIMIT 10
;
```

### Installing and configuring the marct tool for LDP

For detailed information about how to set up and configure the marct tool for LDP, please review the guide linked below:

* [MARC Transformation Guide for LDP] (https://metadb.dev/doc/#_marc_transform_for_ldp)


### MARC Transformation for Metadb

Metadb includes native marct tables when it is installed. For information about how MARC data is transformed in Metadb, please review the guide linked below:

* [MARC Transformation Guide for Metadb] (https://d1f3dtrg62pav.cloudfront.net/doc/#_marc_transform)


