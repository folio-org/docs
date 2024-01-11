---
title: "Reporting with LDP/Metadb"
linkTitle: "Reporting with LDP/Metadb"
date: 2023-10-25
weight: 650
---

The [Library Data Platform (LDP)](https://librarydataplatform.org) is a project that develops an open-source platform which is utilized by both the [FOLIO](http://folio.org/) and [ReShare](https://projectreshare.org/) projects to provide statistical and operational analytics. The LDP software extracts data from FOLIO modules into a relational database (informally called “the LDP” by many in the FOLIO community), making it possible to engage in complex reporting and analytics using FOLIO data. While some FOLIO apps have built-in reports or the ability to download results from a search-and-filter workflow, the LDP supports larger and more complex queries that combine data from across the FOLIO apps.

LDP is the current software platform. The next generation software platform Metadb has been released and has been adopted by some institutions. Metadb is a new streaming data integration platform intended to eventually replace LDP. Find detailed and very recent information about the platforms on the [project website](https://librarydataplatform.org).

Some FOLIO apps include functionality that allows the user to download data as a CSV (comma separated values) file. For example, the Users app allows you to run an overdue loans report and download the results as a CSV file. See the documentation on individual apps for more details on this functionality where it is available. 


## Data Flow from FOLIO to LDP/Metadb

The basic flow of data from FOLIO to LDP/Metadb is described in the figure below. The LDP/Metadb extracts data from the database used by FOLIO apps. From the LDP/Metadb, data flows into two types of queries: derived tables (which simplify the FOLIO data and save the results back into the LDP/Metadb) and report queries (which meet specific needs of report users). These queries are shared via the [FOLIO Analytics query repository](folio-analytics) and also form the backbone of [ad hoc querying](folio-analytics/#ad-hoc-querying-using-ldp-tables).

![The LDP/Metadb software extracts data from the FOLIO database and loads into its own LDP/Metadb database. The FOLIO Analytics repository stores derived table queries, which add derived tables to the LDP/Metadb database, and report queries, which build reports for reporting end users. The LDP/Metadb database can also be used to store non-FOLIO data in custom tables.](/img/FOLIOReportingDataflow.png)


## Features of the LDP and Metadb


* Open-source software and query development
* Built on trusted database platforms
* Ability to create custom tables to import non-FOLIO data
* Historical tracking of FOLIO records
* Ability to connect from a wide variety of reporting applications
* Ability to perform cross-app FOLIO queries
* Ability to query FOLIO data without impacting production application performance
* Ability to query a simplified FOLIO data model through the use of derived tables


## Exclusive Features of Metadb

* Nearly real time data through streaming technique
* Expanded JSON data array extraction
* Full FOLIO data coverage


## FOLIO Data Coverage in LDP

LDP utilizes the FOLIO APIs to get most of its content. To see more details about the APIs can be found at FOLIO Developers [API documentation](https://dev.folio.org/reference/api/).

LDP pulls data from the following FOLIO modules*:

* mod-audit
* mod-circulation-storage
* mod-configuration
* mod-courses
* mod-email
* mod-feesfines
* mod-finance-storage
* mod-inventory-storage
* mod-invoice-storage
* mod-notes
* mod-orders-storage
* mod-organizations-storage
* mod-source-record-storage
* mod-users

{{% alert color="info"%}}
<b>Note:</b> Metadb features full FOLIO data coverage. {{% /alert %}}
