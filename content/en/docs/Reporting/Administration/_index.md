---
title: "Library Data Platform"
linkTitle: "Library Data Platform"
date: 2021-10-26
weight: 10
tags: ["parenttopic"]
---

The Library Data Platform (LDP) is designed to run in different scenarios with only a few requirements. In order for the LDP to connect to FOLIO, it needs read-only access to Okapi and the FOLIO database. The LDP can be hosted and administered locally by an institution’s own staff or by contracting hosting services out to a third party. You can find specific [system requirements](https://github.com/library-data-platform/ldp/blob/release-1.1/doc/Admin_Guide.md#software) in the well-maintained LDP Github repository.

## Installing and configuring the LDP

For detailed information about how to set up and configure the LDP, please review any of the guides linked below that are available in the LDP repository. There you also will find the latest versions and fixes of the LDP.  

### Administration Guide
* [Overview](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#1-overview): brief introduction and summary
* [System requirements](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#2-system-requirements): software and hardware requirements
* [Installation](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#3-installation): installing prerequisites and building LDP
* [Database configuration](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#4-database-configuration): setting up and configuring the database
* [Server configuration](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#5-server-configuration): setting up, configuring, starting and updating the server
* [Direct extraction](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#6-direct-extraction): setting up direct extraction from FOLIOs database
* [Data privacy](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#7-data-privacy): options to anonymize personal data
* [Reference](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#reference): reference of the configuration file: ldpconf.json

### Configuration Guide
* [Scheduling full updates](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Config_Guide.md#1-scheduling-full-updates): configuring full updates  
* [Foreign keys](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Config_Guide.md#2-foreign-keys): enabling capability to infer foreign keys
* [Reference](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Config_Guide.md#reference): reference of the configuration file: dbconfig.general

## Setting up derived tables
To let report users take full advantage of the community-developed [report queries](../querying/#using-queries-from-the-folio-analytics-repository) as well as having a good starting point for [ad hoc querying](../querying/#ad-hoc-querying-using-ldp-tables), it is strongly recommended to set up a nightly update on [derived tables](https://github.com/folio-org/folio-analytics/tree/release-1.0/sql/derived_tables). Note that the use of *views* and *materialized views* is not supported in LDP databases and may cause the LDP software to be unable to perform data updates.

You can find instructions in Github on how to set up [FOLIO Reporting Derived Tables (Guide)](https://github.com/folio-org/folio-analytics/blob/release-1.0/sql/derived_tables/README.md).

## Data privacy

The LDP is designed to support GDPR and other data privacy requirements. Administrators can exclude a predefined set of tables.

See the [Anonymization Guide](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#7-data-privacy) for information on how to activate and configure these features.

The pages linked below list attributes that contain potential personal data:

* [Users module](https://wiki.folio.org/display/RPT/Potential+personal+data%3A+List+of+FOLIO+attributes?src=contextnavpagetreemode): tables that will not loaded in LDP when anonymization is turned on
* [Organizations module](https://wiki.folio.org/display/RPT/Potential+personal+data+in+mod-organizations-storage?src=contextnavpagetreemode): potential personal data in organizations module

## Adding local data

As documented in the [user guide](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/User_Guide.md#4-local-tables), it is also possible to load and create local data into your LDP. Besides using the local schema, you might consider setting up separate schemas for different user groups or purposes.

### Using schemas
The concept of schemas allows you to organize tables and permissions within one database. In LDP we have initially four relevant schemas:

* public: contains all extracted tables and its current data from the bound FOLIO tenant
* [history](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/User_Guide.md#5-historical-data): stores data that have been updated in the past or may no longer exist
* [folio_reporting](https://github.com/folio-org/folio-analytics/blob/release-1.0/sql/derived_tables/README.md): contains all [derived tables](https://github.com/folio-org/folio-analytics/tree/release-1.0/sql/derived_tables) created and supported by the community
* [local](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/User_Guide.md#4-local-tables): common area for report users to create or import own data

Beside existing schemas, you are free to create more schemas for your local needs (e.g., to provide data for different departments, to separate and protect sensitive data).

Learn more about the schema concept and how to configure schemas using [Postgres’s Schema Documentation](https://www.postgresql.org/docs/11/ddl-schemas.html#DDL-SCHEMAS-PRIV).

For a granular set up of permissions see also the built-in [Roles](https://www.postgresql.org/docs/11/user-manag.html) and [Privileges](https://www.postgresql.org/docs/11/ddl-priv.html) concepts of Postgres.

### Moving and loading data
Loading and moving data into LDP is as simple as it is for databases in general.

For Postgres there are two common approaches:

* [COPY](https://www.postgresql.org/docs/11/sql-copy.html): SQL command for moving table data via csv files
* [pg_dump](https://www.postgresql.org/docs/11/app-pgdump.html) / [pg_restore](https://www.postgresql.org/docs/11/app-pgrestore.html): Postgres command line tools for importing and exporting data

## FOLIO Data Coverage in the LDP

As of [version 1.1.11](https://github.com/library-data-platform/ldp/tree/1.1.11), the LDP pulls data from the following FOLIO modules:

* mod-circulation-storage
    * /cancellation-reason-storage/cancellation-reasons
    * /fixed-due-date-schedule-storage/fixed-due-date-schedules
    * /loan-policy-storage/loan-policies
    * /loan-storage/loans
    * /loan-storage/loan-history
    * /patron-action-session-storage/patron-action-sessions
    * /patron-notice-policy-storage/patron-notice-policies
    * /request-policy-storage/request-policies
    * /request-preference-storage/request-preference
    * /request-storage/requests
    * /scheduled-notice-storage/scheduled-notices
    * /staff-slips-storage/staff-slips
* mod-configuration
    * /configurations/entries
* mod-email
    * /email
* mod-feesfines
    * /accounts
    * /comments
    * /feefines
    * /feefineactions
    * /lost-item-fees-policies
    * /manualblocks
    * /overdue-fines-policies
    * /owners
    * /payments
    * /refunds
    * /transfer-criterias
    * /transfers
    * /waives
* mod-courses
    * /coursereserves/copyrightstatuses
    * /coursereserves/courselistings
    * /coursereserves/courses
    * /coursereserves/coursetypes
    * /coursereserves/departments
    * /coursereserves/processingstatuses
    * /coursereserves/reserves
    * /coursereserves/roles
    * /coursereserves/terms
* mod-finance-storage
    * /finance-storage/budgets
    * /finance-storage/fiscal-years
    * /finance-storage/fund-types
    * /finance-storage/funds
    * /finance-storage/group-fund-fiscal-years
    * /finance-storage/groups
    * /finance-storage/ledgers
    * /finance-storage/transactions
* mod-inventory-storage
    * /alternative-title-types
    * /call-number-types
    * /classification-types
    * /contributor-name-types
    * /contributor-types
    * /electronic-access-relationships
    * /holdings-note-types
    * /holdings-storage/holdings*
    * /holdings-types
    * /identifier-types
    * /ill-policies
    * /instance-formats
    * /instance-note-types
    * /instance-relationship-types
    * /instance-statuses
    * /instance-storage/instance-relationships
    * /instance-storage/instances*
    * /instance-types
    * /item-damaged-statuses
    * /item-note-types
    * /item-storage/items*
    * /location-units/campuses
    * /location-units/institutions
    * /location-units/libraries
    * /loan-types
    * /locations
    * /material-types
    * /modes-of-issuance
    * /nature-of-content-terms
    * /service-points
    * /service-points-users
    * /statistical-code-types
    * /statistical-codes
* mod-invoice-storage
    * /invoice-storage/invoice-lines
    * /invoice-storage/invoices
    * /voucher-storage/voucher-lines
    * /voucher-storage/vouchers
* mod-orders-storage
    * /acquisitions-units-storage/memberships
    * /acquisitions-units-storage/units
    * /orders-storage/alerts
    * /orders-storage/order-invoice-relns
    * /orders-storage/order-templates
    * /orders-storage/pieces
    * /orders-storage/po-lines
    * /orders-storage/purchase-orders
    * /orders-storage/receiving-history
    * /orders-storage/reporting-codes
* mod-organizations-storage
    * /organizations-storage/addresses
    * /organizations-storage/categories
    * /organizations-storage/contacts
    * /organizations-storage/emails
    * /organizations-storage/interfaces
    * /organizations-storage/organizations
    * /organizations-storage/phone-numbers
    * /organizations-storage/urls
* mod-users
    * /addresstypes
    * /departments
    * /groups
    * /proxiesfor
    * /users

\* - The LDP supports [direct extraction](https://github.com/library-data-platform/ldp/blob/1.1.11/doc/Admin_Guide.md#6-direct-extraction) for these tables, rather than using the module APIs.
