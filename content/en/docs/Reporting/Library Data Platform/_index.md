---
title: "LDP1/Metadb"
linkTitle: "LDP1/Metadb"
date: 2023-05-04
weight: 30
tags: ["parenttopic"]
---


{{% alert color="info"%}}
<b>Note:</b> This [WOLFcon 2021 presentation](https://www.youtube.com/watch?v=SM1vq0zvxsY) gives an overview of the Library Data Platform.
{{% /alert %}}

In order for the LDP1 software to connect to FOLIO, it needs read-only access to Okapi and the FOLIO database. The LDP can be hosted and administered locally by an institution's own staff or by contracting hosting services out to a third party. You can find specific [system requirements](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/Admin_Guide.md#2-system-requirements) in the LDP documentation.

## Installing and configuring the LDP

There are three main software components to install for your LDP implementation: LDP, ldpmarc, and Folio Analytics. In general, install the latest production release for the LDP and ldpmarc software components, which do not have a dependency on FOLIO (flower) software release versions. For FOLIO Analytics, see https://github.com/folio-org/folio-analytics/blob/main/README.md.

### Administration Guide
For detailed information about how to set up and configure the LDP, please review this [link](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/Admin_Guide.md#ldp-administrator-guide) to access individual links to guides in the LDP repository. There you also will find the latest versions and fixes of the LDP.

### Configuration Guide
* [Foreign keys](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/Config_Guide.md#1-foreign-keys): enabling capability to infer foreign keys
* [Reference](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/Config_Guide.md#reference): reference for the configuration file: dbconfig.general

## Setting up derived tables
To let report users take full advantage of the community-developed [report queries](../folio-analytics/#using-queries-from-the-folio-analytics-repository) as well as having a good starting point for [ad hoc querying](../folio-analytics/#ad-hoc-querying-using-ldp-tables), it is strongly recommended to set up a nightly update on [derived tables](https://github.com/folio-org/folio-analytics/tree/release-1.6/sql/derived_tables). Note that the use of *views* and *materialized views* is not supported in LDP databases and may cause the LDP software to be unable to perform data updates.

You can find instructions in Github on how to set up [FOLIO Reporting Derived Tables](https://github.com/folio-org/folio-analytics/blob/release-1.6/sql/derived_tables/README.md).

## Data privacy

The LDP is designed to support GDPR and other data privacy requirements. Administrators can exclude a predefined set of tables.

See the [Anonymization Guide](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/Admin_Guide.md#7-data-privacy) for information on how to activate and configure these features.

The pages linked below list attributes that contain potential personal data:

* [Users module](https://wiki.folio.org/display/RPT/Potential+personal+data%3A+List+of+FOLIO+attributes?src=contextnavpagetreemode): tables that will not loaded in LDP1 when anonymization is turned on
* [Organizations module](https://wiki.folio.org/display/RPT/Potential+personal+data+in+mod-organizations-storage?src=contextnavpagetreemode): potential personal data in organizations module

## Adding local data
As documented in the [user guide](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/User_Guide.md#4-local-tables), it is also possible to load and create local data into your LDP1 reporting database.

### Using schemas
The concept of schemas allows you to organize tables and permissions within one database. In LDP1 we have initially four relevant schemas:

* public: contains all extracted tables and its current data from the bound FOLIO tenant
* [history](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/User_Guide.md#5-historical-data): stores data that have been updated in the past or may no longer exist
* [folio_reporting](https://github.com/folio-org/folio-analytics/blob/release-1.5/sql/derived_tables/README.md): contains all [derived tables](https://github.com/folio-org/folio-analytics/tree/release-1.5/sql/derived_tables) created and supported by the community
* [local](https://github.com/library-data-platform/ldp/blob/1.8.2/doc/User_Guide.md#4-local-tables): common area for report users to create or import own data

Besides using the local schema, you might consider setting up separate schemas for different report user groups or purposes. You are free to create more schemas for your local needs (e.g., to provide data for different departments or to separate and protect sensitive data).

Learn more about the schema concept and how to configure schemas using [Postgres's Schema Documentation](https://www.postgresql.org/docs/13/ddl-schemas.html#DDL-SCHEMAS-PRIV).

For a granular setup of permissions, see also the built-in [Roles](https://www.postgresql.org/docs/13/user-manag.html) and [Privileges](https://www.postgresql.org/docs/13/ddl-priv.html) concepts of Postgres.

### Moving and loading data
Loading and moving data into an LDP1 reporting database is as simple as it is for databases in general.

For Postgres there are two common approaches:

* [COPY](https://www.postgresql.org/docs/13/sql-copy.html): SQL command for moving table data via csv files
* [pg_dump](https://www.postgresql.org/docs/13/app-pgdump.html) / [pg_restore](https://www.postgresql.org/docs/13/app-pgrestore.html): Postgres command line tools for importing and exporting data
