---
title: "LDP App"
linkTitle: "LDP App"
date: 2023-10-25
weight: 20
tags: ["parenttopic"]
---

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
Think of schema as the “buckets” in which data tables live. The schema drop-down menu allows you to select one schema at a time to use in your query. Three schemas are available: public, folio_reporting, and local. For a fuller explanation of schemas and examples of some defaults included see [Library Data Platform - Using schemas](../ldp1-metadb/#using-schemas).

### Table
The **Table** drop-down menu allows you to select a data table from the schema you have selected to use in your query. Tables are where related data lives. Tables belong to a specific schema. With the schema and table selected, the other fields will unlock and update based on the selection.

## Filter by column
The **Filter by column** drop-down menu allows you to refine your results by selecting a column and applying constraints. You can create multiple filters using the Add Filter button. When you use multiple filters, results are generated using the AND operator. Once you select a column to filter on, you may select equality and inequality operations in combination with a numeric value (e.g., a date or a count), TRUE, or FALSE. Operators include: 
* **equal to (=)**
* **not equal to (<>)**
* **less than (<)**
* **less than or equal to (<=)**
* **greater than (>)**
* **greater than or equal to (>=)**
* **TRUE (not case sensitive)**
* **FALSE (not case sensitive)**

Here are some examples for filtering by column:
* **find where previously_held = TRUE
* **find where _version > 1

When entering date ranges, both YYYY-MM-DD and MM/DD/YYYY are supported. The LIKE and ILIKE operators, which allow pattern matching within character-based column data, will be included in a future release. LIKE is case-sensitive, while ILIKE is case-insensitive.

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


