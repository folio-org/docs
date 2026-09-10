---
title: "Settings > MARC authority"
linkTitle: "MARC authority"
date: 2026-09-09
weight: 170
tags: ["subtopic"]   
---

The MARC authority section of Settings allows you to view, create, edit, and delete authority files.

Each setting within the MARC Authority app has its own capability or capability set associated with it. If a user has one of the below assigned to their user record, they will be able to view and interact with that particular setting. You can assign capabilities via user roles.

|**Permission (OKAPI)** | **Resource (EUREKA)** | Type | Action | Description |
| -------- | ------- | ------- | ------- | ------- |
| **Settings (MARC authority): Module is enabled.** | **Settings Marc-Authorities Enabled** | settings | view | This allows the user to access the MARC Authority app. |
| **Settings (MARC authority): View authority files.** | **UI-Marc-Authorities Settings Authority-Files** | settings | view | This allows the user to view authority files but not make changes to them. |
| **Settings (MARC authority): View, create, edit, delete authority files.** | **UI-Marc-Authorities Settings Authority-Files** | settings | manage | This allows the user to view, create, edit, and delete authority files. |
| **Settings (MARC authority): Configure version history** | **UI-Marc-Authorities Settings Version-History** | settings | view | This allows the user to configure the number of cards to display per page on the version history. |

## Settings > MARC authority > Manage authority files

### Creating new authority files

1. In the **Manage authority files** pane, click **New**.
2. Enter the following information for the new authority file:
  -  **Name.** The name of the authority file.
  -  **Prefix.** The prefix for authority record identifiers within the authority file. This prefix can only contain alphabetical values, is limited to 25 characters, and must be unique among the listed authority files.
  -  **HRID stats with.** A number starting from which the HRID will be assigned to authority records. This number cannot contain leading zeros.
  -  **Base URL.** (Optional) The base URL for the authority file.
3. Check the box in the **Active** column if the authority file should be active.
4. Click **Save**.

### Editing authority files

1. In the **Manage authority files** pane, click the **pencil icon** in the row of the authority file you want to edit.
2. Make your desired edits.
3. Click **Save**.

### Deleting authority files

1. In the **Manage authority files** pane, click the **trash can icon** in the row of the authority file you want to delete.
2. In the **Delete authority file** dialog, click **Yes, delete**. A confirmation message appears and the authority file is deleted.

## Settings > MARC authority > Version history

### Cards to display per page on Version history

1. From the drop down menu, select the number of cards to display in the Version history pane in the MARC authority app.
