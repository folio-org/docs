---
title: "LDP App"
linkTitle: "LDP App"
date: 2022-04-29
weight: 40
tags: ["parenttopic"]
---

## LDP App
The LDP app provides a FOLIO interface for interacting with an LDP database. Currently there is only one page, the **Query builder**. As the name suggests, it allows you to build queries without having to know or code any SQL.

Choose the [schema](#schema) and [table](#table) you would like to report on, select the options you would like, click **Submit** and you will see your results displayed at the bottom of the page. If you would like to export the displayed results you can click on the **save (floppy disk) icon** and you can download as a CSV file.

### Permissions
The permissions listed below allow you to interact with the LDP app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the LDP app or any related information.

The following are all the LDP app permissions:
* **LDP: all permissions**:  This permission allows the user to see and use the LDP app.
* **Settings (LDP): Can view, create, edit, and remove**. This allows users to manage the settings in the Settings app.

{{% alert title="Issue with Saving Settings" color="info"%}}
Issue with Saving Settings when just having the two above permissions. Current workaround is also adding permission named **Settings (developer): Can edit locale entries for any user**.
Issue: [UILDP-54](https://issues.folio.org/browse/UILDP-54)
{{% /alert %}}

### Schema
Think of schema as the “buckets” in which tables live.

For a fuller explaination of schemas and examples of some defaults included see [Library Data Platform - Using schemas](https://kiwi.docs.folio.org/docs/reporting/library-data-platform/#using-schemas).

### Table
Tables are where related data lives. Tables belong to a specific schema. With the schema and table selected, the other fields will unlock and update based on the selection.

### Filter by column
This is where you may specify constrains to column for data you are wanting to report on.

{{% alert title="Additional options to come in subsequent versions" color="info"%}}
Currently you can only use the “equal to” operator (equality operations). Inequality operations (not equal to, greater than, and less than) will be included in future releases.
Example of equal to operation – find where previously_held = TRUE
Example of inequality – find where _version > 1
{{% /alert %}}

### Show columns
These will be the fields that you want present in your report. By default all columns will be present.

To limit, simply click on the **Show Columns** drop-down and click on the listed fields.
To remove added fields you can either click on the **x** next to the field name in the box or from the drop-down list, click on the field again to deselect it.

### Order by column
By click on the **Add ordering criterion** you can add a new column to be used to order you results. After clicking you should then see a box for selecting a column, how to order such as ascending, and where to order Null values. If you wish to order on multiple columns you can click the **Add ordering criterion** again. To remove a column sort click the trashcan icon.

### Limit number of results
This is where you can set how many results you would like to have returned.


### What can be changed in the Settings app
* Record limits
	* Default number to show
	* Maximum number to show
	* Maximum number of export
* Table availability
	* Shows the schema and tables in the connected database and allows tables to be “turned off” from being able to query against them.

{{% alert title="Currently recommended to disable" color="info"%}}
It is currently recommended to disable tables: srs_marc, srs_marctab, srs_records.
Currently the app does not support indexing of certain columns. Keeping them enabled can cause performance issues and extra stress on the database.
{{% /alert %}}
