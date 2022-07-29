---
title: "ldpmarc"
linkTitle: "ldpmarc"
date: 2022-04-29
weight: 20
tags: ["parenttopic"]
---
## ldpmarc

The ldpmarc tool part of the Library Data Platform (LDP) project. The ldpmarc tool converts SRS/MARC records from JSON to tabular format in preparation for loading them into an LDP reporting database. SRS stands for Source Record Storage. MARC stands for Machine-Readable Cataloging, which is a standard format for storing data elements within bibliographic records in computer systems. Once the MARC data has been loaded into the reporting database, ldpmarc performs incremental updates to the data, which saves time on the data transfer from the transactional to the reporting database.

The ldpmarc tool reads the SRS MARC data from the database tables public.srs_marc and public.srs_records. Next, it transforms only the current versions of the records from these tables into tabular data. The transformed records are written to the public.srs_marctab table.

Once the MARC data is transformed, the public.srs_marctab table is ready to be used in queries that require MARC data from the reporting database. For example, the query below shows the contents of the MARC 008 field, which captures general bibliographic information about a library item.

```
SELECT 
    sm.instance_hrid,
    sm.field,
    sm.content
FROM srs_marctab AS sm 
WHERE (sm.field = '008')     
LIMIT 10
;
```

### Installing and configuring the ldpmarc tool

For detailed information about how to set up and configure the ldpmarc tool, please review any of the guides linked below that are available in the [ldpmarc repository](https://github.com/library-data-platform/ldpmarc). There you also will find the latest versions and fixes for the ldpmarc tool.

* [System requirements](https://github.com/library-data-platform/ldpmarc/tree/v1.5.0#system-requirements): software and hardware requirements
* [Building](https://github.com/library-data-platform/ldpmarc/tree/v1.5.0#building-the-software): installing / building ldpmarc tool
* [Running ldpmarc](https://github.com/library-data-platform/ldpmarc/tree/v1.5.0#running-ldpmarc): start and run ldpmarc tool
* [Full vs. incremental update](https://github.com/library-data-platform/ldpmarc/tree/v1.5.0#full-vs-incremental-update): explains how ldpmarc updates works and how to force a full update
* [Resetting ldpmarc](https://github.com/library-data-platform/ldpmarc/tree/v1.5.0#resetting-ldpmarc): how to reset ldpmarc database