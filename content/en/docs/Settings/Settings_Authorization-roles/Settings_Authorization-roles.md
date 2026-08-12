---
title: "Settings > Authorization Roles"
linkTitle: "Authorization Roles"
date: 2025-05-08
weight: 25
tags: ["subtopic"]   
---

**This section of the documentation contains links to external sites. Please be advised that these sites are not maintained by the FOLIO Documentation Group and may not be aligned with the current release of FOLIO.**


Definitions of terms related to Settings \> Authorization roles: 
 
- **applicationId**. An attribute of a capability or capability set that identifies the platform for a FOLIO application. 
- **Authorization role**. Also known as **User role**. Comprised of capabilities or capability sets, allows a user to perform role-based actions in a FOLIO application. 
- **Capabilities**. Component of an authorization role that when assigned, allows the user to perform an action in a FOLIO application. 
- **Capability Sets**. A set of individual capabilities.
- **Data (Type)**. Capabilities that allow the user to directly manage resources in FOLIO.
- **Procedural (Type)**. Capabilities that allow the user to initiate and control processes in FOLIO.
- **Settings (Type)**. Capabilities that allow the user to manage FOLIO configurations administratively.
- **permissionDisplayName (OKAPI)**. The permission set name displayed in the UI of the Okapi platform (pre-Sunflower release). 
-  **Resource (EUREKA)**. An operation that can be performed in a FOLIO application.
- **User role**. See **Authorization role** above.


## Capabilities
The following are the **Capabilities** that when assigned, allow the user to interact with **Settings \> Authorization roles**. 

For all Settings \> Authorization roles capabilities:

  - **Application** is *app-platform-minimal*.
  - **Type** is *Settings*.

| permissionDisplayName | Resource | Action | 
| :----- | :----- | :-----: |  
| *Settings (Authorization roles): Can manage authorization roles* | *UI-Authorization-Roles Settings Admin* | View | 
| *Settings (Authorization roles): Can manage user/role assignments* | *UI-Authorization-Roles Users Settings* | Manage | 
| *Settings (Authorization roles): Can create authorization roles* | *UI-Authorization-Roles Settings* | Create | 
| *Settings (Authorization roles): Can delete authorization roles* | *UI-Authorization-Roles Settings* | Delete |
| *Settings (Authorization roles): Can edit authorization roles* | *UI-Authorization-Roles Settings* | Edit |
| *Settings (Authorization roles): Can view authorization role details* | *UI-Authorization-Roles Settings* | View |
| *Settings (Authorization roles): Can view user/role assignments* | *UI-Authorization-Roles Users Settings* | View |
| *Settings (Authorization roles): display list of settings pages* | *Settings Authorization-Roles Enabled* | View | 

## Permission name/displayName to capabilities mapper

The Eureka platform, adopted in the Sunflower release, replaces permission sets with **Capabilities** and **Capability sets** for role-based management of user accounts. **Permission** names in the Okapi platform (pre-Sunflower release) differ from **Capabilities** in the Eureka platform. 

The Authorization Roles section of Settings allows configuration and management of **Authorization roles**, also known as user roles, through capabilities and capability sets. For more information about **Capabilities** and **Capability sets**, see [Roles Management in Eureka](https://folio-org.atlassian.net/wiki/x/BIATLw).

To map **Permission** names to **Capabilities** and identify their attributes, use the **Permission name/displayName to capabilities mapper** in the Settings \> Developer app: 

1. Log in as an admin user in the Sunflower Bugfest environment: https://bugfest-sunflower.int.aws.folio.org (folio folio) .
2. Open **Settings \> Developer**.
3. Select **I can haz capabilities?** in the **Developer** pane.
4. Type the **Permission name** in the search box in the **Capabilities** pane. 

    - Keyword or exact phrase (including punctuation) searches work best. For example, use *requests* or *Users: View requests* to search for the **Capability** that allows users to view requests.
    
5. Select **permissionDisplayname** in the **Search by** drop-down menu, if necessary. This filter searches for **Permission names** as they are displayed in the Okapi UI.
6. Click **Search**. A list of **Capabilities** and/or **Capability Sets** and their attributes display in the **Capabilities** pane. 

    - Search results show the attributes (**type**, **applicationId**, **resource**, **action**, and **permissionDisplayName**) for each capability and capability set.
    - If no results are found, a blank space appears under the **Search by** drop-down menu.
    - If there are many search results, use CTRL+F to quickly find a specific capability or capability set. 

7. Use these attributes to [create an **Authorization role**](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Role-Creation). 

## Create an authorization role

To assign **Capabilities** or **Capability sets** to a user record, you must first create an **Authorization role**. 

To create an **Authorization role**, follow the steps outlined in [Role Creation](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Role-Creation).

## Assign or unassign an Authorization role

Management of role assignments can be done in several FOLIO applications: Settings \> Authorization roles, Users, or Consortium manager. See [Managing Role Assignments](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Managing-Role-Assignments) for more information.

## Edit an Authorization role

See [Role modification](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Role-Modification).

## Duplicate an Authorization role

See [Role Duplication](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Role-Duplication). 

## Delete an Authorization role

See [Role Deletion](https://folio-org.atlassian.net/wiki/spaces/UM/pages/789807108/Roles+Management+with+Eureka#Role-Deletion). 
