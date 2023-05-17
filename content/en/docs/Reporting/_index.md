---
title: "Reporting with LDP1/Metadb"
linkTitle: "Reporting with LDP1/Metadb"
weight: 650
---

{{% alert color="info"%}}
<b>Note:</b> This documentation covers [FOLIO Analytics v1.6.0](https://github.com/folio-org/folio-analytics/tree/release-1.6), which was released at  approximately the same time as the FOLIO Orchid release.
{{% /alert %}}

The [Library Data Platform (LDP)](https://librarydataplatform.org) is a project that develops an open-source platform which is utilized by both the [FOLIO](http://folio.org/) and [ReShare](https://projectreshare.org/) projects to provide statistical and operational analytics. LDP1 software extracts data from FOLIO modules into a relational database (informally called “the LDP” by many in the FOLIO community), making it possible to engage in complex reporting and analytics using FOLIO data. While some FOLIO apps have built-in reports or the ability to download results from a search-and-filter workflow, the LDP supports larger and more complex queries that combine data from across the FOLIO apps.

LDP1 is the current software platform. The next generation software platform Metadb has been released and has been adopted by some institutions. Metadb is intended to eventually replace LDP1. Find detailed and very recent information about the platforms on the [project website](https://librarydataplatform.org).

## Data Flow from FOLIO to LDP1/Metadb

The basic flow of data from FOLIO to LDP/Metadb is described in the figure below. The LDP1/Metadb extracts data from the database used by FOLIO apps. From the LDP1/Metadb, data flows into two types of queries: derived tables (which simplify the FOLIO data and save the results back into the LDP1/Metadb) and report queries (which meet specific needs of report users). These queries are shared via the [FOLIO Analytics query repository](folio-analytics) and also form the backbone of [ad hoc querying](folio-analytics/#ad-hoc-querying-using-ldp-tables).

![The LDP1/Metadb software extracts data from the FOLIO database and loads into its own LDP1/Metadb database. The FOLIO Analytics repository stores derived table queries, which add derived tables to the LDP1/Metadb database, and report queries, which build reports for reporting end users. The LDP1/Metadb database can also be used to store non-FOLIO data in custom tables.](/img/FOLIOReportingDataflow.png)

## Features of the LDP1 and Metadb

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

## FOLIO Data Coverage in LDP1

LDP1 utilizes the FOLIO APIs to get most of its content. To see more details about the APIs can be found at FOLIO Developers [API documentation](https://dev.folio.org/reference/api/).

LDP1 pulls data from the following FOLIO modules:

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
