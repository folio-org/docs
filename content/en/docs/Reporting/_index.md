---
title: "Reporting with the Library Data Platform"
linkTitle: "Reporting with the Library Data Platform"
weight: 650
---

{{% alert color="info"%}}
<b>Note:</b> This documentation covers [LDP v1.7.0](https://github.com/library-data-platform/ldp/tree/1.7.0) and [FOLIO Analytics v1.3.0](https://github.com/folio-org/folio-analytics/tree/v1.3.0), which were released at approximately the same time as the FOLIO Lotus release.
{{% /alert %}}

The [Library Data Platform (LDP)](library-data-platform) is a project that develops an open-source platform which is utilized by both the [FOLIO](http://folio.org/) and [ReShare](https://projectreshare.org/) projects to provide statistical and operational analytics. LDP software extracts data from FOLIO modules into a relational database (informally called “the LDP” by many in the FOLIO community), making it possible to engage in complex reporting and analytics using FOLIO data. While some FOLIO apps have built-in reports or the ability to download results from a search-and-filter workflow, the LDP supports larger and more complex queries that combine data from across the FOLIO apps.

## Data Flow from FOLIO to the LDP

The basic flow of data from FOLIO to the LDP is described in the figure below. The LDP extracts data from the database used by FOLIO apps. From the LDP, data flows into two types of queries: derived tables (which simplify the FOLIO data and save the results back into the LDP) and report queries (which meet specific needs of report users). These queries are shared via the [FOLIO Analytics query repository](folio-analytics) and also form the backbone of [ad hoc querying](folio-analytics/#ad-hoc-querying-using-ldp-tables).

![The LDP software extracts data from the FOLIO database and loads into the LDP database. The FOLIO Analytics repository stores derived table queries, which add derived tables to the LDP database, and report queries, which build reports for reporting end users. The LDP database can also be used to store non-FOLIO data in custom tables.](/img/FOLIOReportingDataflow.png)

## Features of the LDP

* Open-source software and query development
* Built on trusted database platforms
* Ability to create custom tables to import non-FOLIO data
* Historical tracking of FOLIO records
* Ability to connect from a wide variety of reporting applications
* Ability to perform cross-app FOLIO queries
* Ability to query FOLIO data without impacting production application performance
* Ability to query a simplified FOLIO data model through the use of derived tables
