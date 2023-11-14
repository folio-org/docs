---
title: "Settings > Reporting"
linkTitle: "Reporting"
date: 2023-10-16  
weight: 220
tags: ["subtopic"]   
---

The Reporting section of the Settings app is where you can configure FOLIO’s connection to an LDP database instance, set limitations on running queries and establish connections to GitHub repositories for the sake of running parameterized SQL queries. 

## Permissions

The following are the permissions for Reporting in the Settings app:

*Settings (Reporting): browse and load LDP saved queries** This permission allows a user to browse and load queries that they or other users have saved using the Reporting app’s “Build query” feature. 
*Settings (Reporting): Can modify default record limits** This permission allows a user to set the amount of records/rows that can be returned and exported to a CSV (can be different values) when running a query in the Reporting app.
*Settings (Reporting): Can modify LDP database connection details** This permission allows a user to configure the Reporting app’s connection to an LDP instance including the username and password used to query the LDP reporting database. 
*Settings (Reporting): Can modify templated-query repos configuration** This permission allows a user to create new or modify existing connections to GitHub repositories for the purpose of accessing parameterized SQL queries via the Reporting app.
*Settings (Reporting): Can select which tables are available to search** This permission allows a user to select/remove which tables will appear in the “Table” dropdown while using the Reporting app’s “Build query” feature. 
*Settings (Reporting): create and update LDP saved queries** This permission allows a user to save queries they’ve created using the Reporting app’s “Build query” feature as well as edit and overwrite existing queries (whether they are the report’s creator or not). 

### Settings > Reporting > Record limits
The **Record limits** setting allows you to set the default and maximum numbers of records to show in a user’s query results. You may also restrict the number of records a user can export using the **Maximum number to export** setting.
* Default number to show
* Maximum number to show
* Maximum number of export
### Settings > Reporting > Table availability
The **Table availability** setting
* Shows the schema and tables in the connected database and allows tables to be “turned off” from being able to query against them so that users cannot include them in queries. This is useful for tables that may contain restricted data, such as PII (Personally Identifiable Information).

{{% alert title="Currently recommended to disable" color="info"%}}
It is currently recommended to disable tables: srs_marc, srs_marctab, srs_records.
Currently the app does not support indexing of certain columns. Keeping them enabled can cause performance issues and extra stress on the database.
{{% /alert %}}

### Settings > Reporting > Database configuration
The **Configure database connection URL & credentials** setting is used to set the connection from the FOLIO application instance to the LDP reporting database instance. This is also used to set the username and password to be used by the LDP app to query the LDP reporting database.

### Settings > Reporting > Report repositories 
The **Report repositories** setting allows you to configure connections to GitHub repositories for the purpose of accessing SQL queries created by individual institutions or the wider FOLIO reporting community. Queries saved in these repositories can be run using the Reporting app’s “Run report” option and can be configured to display parameters to filter the data output. The GitHub user, repository name, repository branch, and directory within the repository must be specified here. 

For information on how to set up SQL queries compatible with the Reporting app in GitHub, please refer to [Authoring reports for the FOLIO Reporting App] (https://github.com/folio-org/ui-ldp/blob/master/doc/reports.md). 

