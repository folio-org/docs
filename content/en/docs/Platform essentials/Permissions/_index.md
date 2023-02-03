---
title: "Permissions"
linkTitle: "Permissions"
date: 2022-01-12
weight: 50
tags: ["parenttopic"]
---

FOLIO has a user permissions system that allows for granular control over what users can access in their FOLIO installation. 

Each app defines its own permissions for the frontend and backend modules that it uses. 

By default, a FOLIO installation does not provide roles or permission profiles for library staff. Instead, FOLIO administrators can build their own groups of permissions called **permission sets** that correspond to their local needs. They can then assign those permissions to users through the Users app.

## What is a permission?
A permission is an object in FOLIO that can be used to control access to FOLIO apps, workflows, and data.

A permission can have a number of different attributes, depending on whether you are viewing the permission in FOLIO’s code or whether you are looking at permissions for a user on a FOLIO tenant. Attributes can include:

* **permissionName.** This represents the unique name of the permission. 
* **displayName.** This is a human-readable name for the permission that usually corresponds to the name shown in the user interface.
Note that what appears in the FOLIO user interface is a translated label for the permissionName; translations are stored for supported languages with each FOLIO module. The displayName was used in earlier versions of FOLIO but no longer serves a purpose in the FOLIO user interface.
* **id**. The **id** is a tenant-level unique identifier for the permission, created when the relevant FOLIO module is installed.
* **Description.** A description of the permission as provided by the developer. This field is optional.
* **subPermissions.** Many permissions are actually a grouping of more specific permissions - if this is the case, **subPermissions** is where those more specific permissions are listed.
* **childOf.** If a permission is a subPermission for another permission, that “parent” permission is listed.
* **grantedTo.** If the permission has been granted to any FOLIO users, their permissions user ID is listed.
* **mutable.** A permission can be either **mutable** or **immutable**; permissions are immutable by default. 
If a permission is defined as **“mutable” : false**, then it cannot be changed without modifying the associated module code and restarting the module. If a permission is defined as **“mutable” : true**, it can be changed in the UI without having to stop and restart the associated module. 
* **visible.** A permission can be either visible or invisible. A permission is invisible by default.
If a permission is defined as **”visible” : true**, then it is viewable in the FOLIO user interface. If a permission is defined as **”visible” : false**, then it is not viewable by default in the FOLIO user interface.
deprecated
* **moduleName** and **moduleVersion.** These fields will only appear when looking at a FOLIO installation directly, they are not in the code. These fields tell you what module provided the permission definition, and what version of that module is running.

## Naming Convention
Permissions are named to indicate what a FOLIO user with the permission can do within the app. 

Permission names generally follow one of two formats:

\[Appname\]: \[What the user can do\]
Settings \(\[Area of Settings or Appname\]\): \[What the user can do\]

### Examples:

* Agreements: Edit agreements
  * This permission allows FOLIO users to edit agreement records in the agreement app.
* Settings (Inventory): Create, edit, delete material types
  * This permission allows FOLIO users to access Inventory settings and add, change, or delete material types.



## Key Terminology

* **Permission set.** A permission set in FOLIO is one permission that consists of one or more subpermissions. 
  * Permission sets can be created in the FOLIO system by a developer. 
  * Permission sets can also be created by individual libraries in Settings → Users
* **CRUD.** CRUD stands for "Create, Read, Update and Delete." You may see it used as a shortcut terminology in permissions discussions. Most FOLIO permissions allow “CRUD” functionality - they give you the ability to create, read, update and/or delete FOLIO records.
  * Note that a permission that allows for access to create, or update or delete a record will generally include the ability to view the record. For example, the permission “Users: Can edit user profile” includes a subpermission to allow viewing of user profiles. You do not need to grant a FOLIO user both permissions to allow them to view and edit user records.
* **Visible permission.** A visible permission is one that you can see in the list of permissions in the UI. They can be assigned to patrons directly, and/or you can add them to a permission set through Settings → Users → General →  Permission Sets.
* Invisible Permission: An invisible permission is hidden from the FOLIO user interface, and is not usually assigned directly to a FOLIO user. Invisible permissions are commonly part of a backend module. They provide very specific, limited access to functionality in FOLIO.

## Common Workflows

Common permissions workflows include:

* [Assigning Permissions and Permissions Sets to a User Record]({{< ref "/users.md#assigning-permissions-to-a-user-record" >}})
* [Creating Your Own Permission Sets]({{< ref "/Settings_users.md#settings--users--permission-sets" >}})

## Visible versus Invisible permissions

FOLIO permissions can be either "visible" or "invisible."

Permissions that you see in the Users app or in Settings > Users > Permission sets are **visible** permissions. Developers create visible permissions by defining a group of very granular, specific permissions that when put together provide a specific function. They have a friendly display name that helps explain what the permission allows a FOLIO user to do. 

**Invisible** permissions do not appear in the Users app by default. They are created by developers in a backend module and are not intended to be assigned directly to users. Usually, they are very granular, and control one particular action - such as the ability to view one specific type of record in an app. They have less friendly display names such as “addresstypes collection get.”

### Why would I want to know about invisible permissions?

Ideally, when you're working in FOLIO, you never have to consider invisible permissions, because the development process led to the creation of visible permissions that offer all the functionality you need. 

However, occasionally bugs with permissions appear, or a feature may only be partially developed. When that happens, FOLIO administrators may need to assign an invisible permission directly to a user in order to enable a needed workflow.

### How can I see invisible permissions in the FOLIO user interface?

The ability to see invisible permissions is determined user-by-user. The logged-in user must have access to Settings → Developer. 

1. Go to Settings > Developer > Configuration.
2. Check the box for **List ‘invisible’ permissions in add-perm menus?**
3. Save your changes.

It is not recommended to leave this setting on permanently; there are thousands of permissions in FOLIO when including visible and invisible permissions together, and displaying invisible permissions will significantly slow down permissions management workflows.

### How should I configure FOLIO to use invisible permissions with user accounts, if I need to be able to assign them to staff?

You should use permission sets.

The general approach is:
1. Log in as a user with appropriate permissions and turn on listing invisible permissions in FOLIO.
2. Go to Settings\>Users\> Permission sets and create a new permission set with only the invisible permissions that you need to be able to assign.
3. Turn off the ability to see invisible permissions.
4. Assign that permission set that you created to the users who need the invisible permission.

The reason to use this process rather than simply logging in as an appropriate administrator and assigning the invisible permission to staff is that other users could come in after you assign the invisible permission, edit the staff member’s account, and overwrite that administrator’s changes.

For example:

Suppose Jameca Jones, a FOLIO administrator, decides that Jeanne Dupont, a FOLIO user, needs the invisible permission "circulation-rules.storage.get" to help with troubleshooting delivery issues in FOLIO.

1. Jameca logs into FOLIO  and enables the invisible permission option in Setting > Developer.
2. Jameca goes to the Users App and finds Jeanne's record.
3. Jameca assigns the invisible permission to Jeanne and saves her changes.
4. Jameca disables the invisible permission option.

A few days later, Max Mustermann realizes that Jeanne needs the visible permission named "Courses: Read All". Max is a manager, but not a FOLIO administrator.

1. Max goes into Users and looks up Jeanne's record.
2. When Max views Jeanne’s account, he doesn’t see the permission "circulation-rules.storage.get" on Jeanne’s account because he doesn’t have that option turned on for his account in Settings.
3. Max adds the permission "Courses: Read All" and saves his changes. 

When Max saves Jeanne’s record, FOLIO saves a complete new copy of Jeanne's permissions that contains **only the permissions that Max could view**,  which overwrites the changes that Jameca made.

In contrast, suppose Jameca uses permission sets to give Jeanne access.

1. Jameca goes to Settings > Developer and enables invisible permissions.
2. She goes to Settings > Users > Permission Sets and creates a permission set named “Troubleshooting - Circulation Rules Permissions.” 
3. Jameca adds the invisible permission "circulation-rules.storage.get" to the permission set she has made, and saves her changes. 
4. Jameca goes into the Users app, looks up Jeanne’s record, and assigns the permission set "Troubleshooting - Circulation Rules Permissions" to Jeanne’s account. 

A few days later, Max realizes that Jeanne also needs the permission "Courses: Read All."

1. Max goes to the Users app and looks up Jeanne’s record.
2. Max doesn’t know what “Troubleshooting - Circulation Rules Permissions” is for, but knows that administrators have been using permission sets to debug issues, so he leaves it assigned to Jeanne.
3. Max adds the permission "Courses: Read All" to Jeanne’s account and saves his changes.

When Max saves his changes, FOLIO saves a completely new copy of Jeanne’s permissions that **still includes** only the permissions Max could view. But because Max **could see the permission set** that Jameca created, it gets re-saved to Jeanne’s account, and she doesn’t lose the access that she needs.
