---
title: "LDP and Metadb"
linkTitle: "LDP and Metadb"
date: 2023-10-25
weight: 30
tags: ["parenttopic"]
---


{{% alert color="info"%}}
<b>Note:</b> This [WOLFcon 2021 presentation](https://www.youtube.com/watch?v=SM1vq0zvxsY) gives an overview of the Library Data Platform.
{{% /alert %}}

In order for the LDP software to connect to FOLIO, it needs read-only access to Okapi and the FOLIO database. The LDP can be hosted and administered locally by an institution's own staff or by contracting hosting services out to a third party. You can find specific [system requirements](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/Admin_Guide.md#2-system-requirements) in the LDP documentation.

## Installing and configuring the LDP software*

There are three main software components to install for your LDP implementation: LDP2, ldpmarc, and Folio Analytics. In general, install the latest production release for the LDP and ldpmarc software components, which do not have a dependency on FOLIO (flower) software release versions. For FOLIO Analytics, see https://github.com/folio-org/folio-analytics/blob/main/README.md.

### Documentation 

For detailed information about how to set up and configure the LDP software, please review this [link](https://github.com/library-data-platform/ldp#readme) to access individual links to guides in the LDP repository. There you also will find the latest versions and fixes of the LDP software.

## Setting up derived tables

To let report users take full advantage of the community-developed [report queries](../folio-analytics/#using-queries-from-the-folio-analytics-repository) as well as having a good starting point for [ad hoc querying](../folio-analytics/#ad-hoc-querying-using-ldp-tables), it is strongly recommended to set up a nightly update on [derived tables](https://github.com/folio-org/folio-analytics/blob/main/sql/derived_tables/README.md  ). 

{{% alert color="info"%}}
<b>Note:</b>use of *views* and *materialized views* is not supported in LDP databases and may cause the LDP software to be unable to perform data updates.
{{% /alert %}}

You can find instructions in Github on how to set up [FOLIO Reporting Derived Tables](https://github.com/folio-org/folio-analytics/tree/main/sql/derived_tables#folio-reporting-derived-tables).

## Data privacy

The LDP software is designed to support GDPR and other data privacy requirements. Administrators can exclude a predefined set of tables.

See the [Anonymization Guide](https://github.com/library-data-platform/ldp/blob/main/doc/Admin_Guide.md#6-data-privacy) for information on how to activate and configure these features.

The pages linked below list attributes that contain potential personal data:

* [Users module](https://wiki.folio.org/display/RPT/Potential+personal+data%3A+List+of+FOLIO+attributes?src=contextnavpagetreemode): tables that will not loaded in LDP software when anonymization is turned on
* [Organizations module](https://wiki.folio.org/display/RPT/Potential+personal+data+in+mod-organizations-storage?src=contextnavpagetreemode): potential personal data in organizations module

## Adding local data
As documented in the [user guide](https://github.com/library-data-platform/ldp/blob/main/doc/User_Guide.md#4-local-tables), it is also possible to load and create local data into your LDP reporting database.

### Using schemas
The concept of schemas allows you to organize tables and permissions within one database. In LDP we have initially four relevant schemas:

* public: contains all extracted tables and its current data from the bound FOLIO tenant
* [history](https://github.com/library-data-platform/ldp/blob/main/doc/User_Guide.md#6-historical-data): stores data that have been updated in the past or may no longer exist
* [folio_reporting](https://github.com/folio-org/folio-analytics/blob/main/sql/derived_tables/README.md): contains all [derived tables](https://github.com/folio-org/folio-analytics/blob/main/sql/derived_tables) created and supported by the community
* [local](https://github.com/library-data-platform/ldp/blob/main/doc/User_Guide.md#4-local-tables): common area for report users to create or import own data

Besides using the local schema, you might consider setting up separate schemas for different report user groups or purposes. You are free to create more schemas for your local needs (e.g., to provide data for different departments or to separate and protect sensitive data).

Learn more about the schema concept and how to configure schemas using [Postgres's Schema Documentation](https://www.postgresql.org/docs/current/ddl-schemas.html).

For a granular setup of permissions, see also the built-in [Roles](https://www.postgresql.org/docs/current/user-manag.html) and [Privileges](https://www.postgresql.org/docs/current/ddl-priv.html) concepts of Postgres.

### Moving and loading data
Loading and moving data into an LDP reporting database is as simple as it is for databases in general. 

For Postgres there are two common approaches:

* [COPY](https://www.postgresql.org/docs/current/sql-copy.html): SQL command for moving table data via csv files
* [pg_dump](https://www.postgresql.org/docs/current/app-pgdump.html) / [pg_restore](https://www.postgresql.org/docs/current/app-pgrestore.html): Postgres command line tools for importing and exporting data

## Installing and configuring the Metadb software 
\* The next generation software platform Metadb has been released and has been adopted by some institutions. Metadb is a new streaming data integration platform intended to eventually replace LDP. For installing and configuring Metadb follow the *Metadb Documentation* at the [Library Data Platform - resources site](https://librarydataplatform.org/resources/).

