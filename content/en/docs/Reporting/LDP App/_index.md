---
title: "LDP App"
linkTitle: "LDP App"
date: 2022-04-29
weight: 40
tags: ["parenttopic"]
---

## LDP App
The LDP app provides a FOLIO interface for interacting with an LDP database. There are two section to the app, the **Query builder** and **Saved queries**. The **Query builder** allows you to build a query with the option to save it for later use. **Saved queries** allows you to load a previous query into the **Query builder** to start editing or run. 

### Permissions
The permissions listed below allow you to set user permissions to interact with the LDP app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the LDP app or any related information.

The following are all the LDP app permissions:
* **UI: LDP module is enabled** – allows the user to see the app and use the **Query Builder** and **Saved queries**.
* **LDP: all permissions** –  This permission allows the user to see and use the LDP app.

* **Settings (LDP): Can view settings**
* **Settings (LDP): Can modify LDP database connection details**
* **Settings (LDP): Can modify default record limits**
* **Settings (LDP): Can modify saved-query configuration details**
* **Settings (LDP): Can select which tables are available to search**

### Schema
Think of schema as the “buckets” in which data tables live. The schema drop-down menu allows you to select one schema at a time to use in your query. Three schemas are available: public, folio_reporting, and local. For a fuller explanation of schemas and examples of some defaults included see [Library Data Platform - Using schemas](../library-data-platform/#using-schemas).

### Table
The **Table** drop-down menu allows you to select a data table from the schema you have selected to use in your query. Tables are where related data lives. Tables belong to a specific schema. With the schema and table selected, the other fields will unlock and update based on the selection.

### Filter by column
The **Filter by column** allows you to refining your results by select a column/field and applying a contraint to it.

{{% alert title="Additional options to come in subsequent versions" color="info"%}}
Currently you can only use the “equal to” operator (equality operations). Inequality operations (not equal to, greater than, less than, like, and non-case sensitive ILIKE) will be included in a future release.
Example of equal to operation – find where previously_held = TRUE.
Example of inequality – find where _version > 1.
{{% /alert %}}

### Show columns
The **Show columns** drop-down menu allows you to select one or more fields from the schema and table you have selected to show in your query results. By default all columns will be present. The list of columns you wish to include will build as you select each column from the drop-down menu.

To limit, simply click on the **Show Columns** drop-down and click on the listed fields.
To remove added fields you can either click on the **x** next to the field name in the box or from the drop-down list, click on the field again to deselect it.

### Order by column
You can click the **Add ordering criterion** button to add one or more columns to use to order your results. Options such as **ascending** in the next field to the right will appear in a drop-down menu, which you may combine with additional options, such as **Nulls at end** in the third field to the right. If you wish to order on multiple columns you can click the **Add ordering criterion** button again. To remove a column sort click the trashcan icon.

### Limit number of results
The **Limit number of results** drop-down menu allows you to restrict the number of rows returned in your query results to 1, 10, 100, or 1000. This is useful if you just want to see a sample of the full results set, especially if you expect the number of rows returned to be particularly large.

### Save icon
The Save icon at the top right of the Query builder allows you to save a query once you have built it. Once saved, queries will appear in the list in the **Saved queries** section of the LDP app. 

### Saved queries
The **Saved queries** section of the LDP app lists queries that have been saved by LDP app users by clicking the Save icon in the **Query builder** section of the LDP app. Anyone with access to the LDP app may click and run the queries in the Saved queries list. Queries may be removed from this list by clicking the trash can icon next to the individual query on the right end of the list.

## What can be changed in the Settings app
You can use the Settings app to configure global settings for the LDP app. To get to LDP settings, choose Settings from the Apps menu, then choose LDP. 

### Record limits
The **Record limits** setting allows you to set the default and maximum numbers of records to show in a user’s query results. You may also restrict the number of records a user can export using the **Maximum number to export** setting.
    * Default number to show
    * Maximum number to show
    * Maximum number of export
### Table availability
The **Table availability** setting
    * Shows the schema and tables in the connected database and allows tables to be “turned off” from being able to query against them so that users cannot include them in queries. This is useful for tables that may contain restricted data, such as PII (Personally Identifiable Information).

{{% alert title="Currently recommended to disable" color="info"%}}
It is currently recommended to disable tables: srs_marc, srs_marctab, srs_records.
Currently the app does not support indexing of certain columns. Keeping them enabled can cause performance issues and extra stress on the database.
{{% /alert %}}

### Database configuration
The **Configure database connection URL & credentials** setting is used to set the connection from the FOLIO application instance to the LDP reporting database instance. This is also used to set the username and password to be used by the LDP app to query the LDP reporting database.

### Saved queries configuration
The **Saved queries configuration** setting allows you to configure a GitHub repository location for the queries that users save when they use the Save icon to save queries they have built using the Query builder. The GitHub repository owner, name, branch and OAth token for access to the repository must be specified here.
