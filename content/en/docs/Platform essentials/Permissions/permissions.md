FOLIO has a user permissions system that allows for granular control over what users can access in their FOLIO installation. 

Each app defines its own permissions for the frontend and backend modules that it uses. 

By default, a FOLIO installation does not provide roles or permission profiles for library staff. Instead, FOLIO administrators can build their own groups of permissions called **permission sets** that correspond to their local needs. They can then assign those permissions to users through the Users app.

## Naming Convention
Permissions are named to indicate what a FOLIO user with the permission can do within the app. Names are translated in FOLIO according to the tenant localization settings. 

Permissions are named in the following format:

[Appname]: [What the user can do]
Settings ([Area of Settings or Appname]): [What the user can do]

Examples:
* Agreements: Edit agreements
** This permission allows FOLIO users to edit agreement records in the agreement app.
* Settings (Inventory): Create, edit, delete material types
** This permission allows FOLIO users to access Inventory settings and add, change, or delete material types.
Key Terminology
* Permission Set: A permission set in FOLIO is one permission that consists of one or more subpermissions. 
** Permission sets can be created in the FOLIO system by a developer. 
** Permission sets can also be created by individual libraries in Settings → Users  
* CRUD: CRUD stands for "Create, Read, Update and Delete." You may see it used as a shortcut terminology in permissions discussions. Most FOLIO permissions allow “CRUD” functionality - they give you the ability to create, read, update and/or delete FOLIO records.
**A permission that allows for access to create, or update or delete a record will generally include the ability to view the record. For example, the permission “Users: Can edit user profile” includes a subpermission to allow viewing of user profiles. You do not need to grant a FOLIO user both permissions to allow them to view and edit user records.
* Visible Permission: A visible permission is one that you can see in the list of permissions in the UI. They can be assigned to patrons directly, and/or you can add them to a permission set through Settings → Users → General →  Permission Sets.
* Invisible Permission: An invisible permission is hidden from the FOLIO user interface, and is not usually assigned directly to a FOLIO user. Invisible permissions are commonly part of a backend module. They provide very specific, limited access to functionality in FOLIO.

Common Workflows
How do I assign permissions to a user in FOLIO?
See Assigning Permissions and Permissions Sets

How do I remove permissions from a user in FOLIO?
See Removing Permissions and Permissions Sets

How do I create my own permission sets in FOLIO?
See Settings - Users - Permissions Sets

Visible versus Invisible permissions
FOLIO permissions can be either "visible" or "invisible."

Permissions that you see in the Users app or in Settings > Users > Permission sets are *visible* permissions. Developers create visible permissions by defining a group of very granular, specific permissions that when put together provide a specific function. They have a friendly display name that helps explain what the permission allows a FOLIO user to do. 

*Invisible* permissions do not appear in the Users app by default. They are created by developers in a backend module and are not intended to be assigned directly to users. Usually, they are very granular, and control one particular action - such as the ability to view one specific type of record in an app. They have less friendly display names such as “addresstypes collection get.”
Why would I want to know about invisible permissions?
Ideally, when you're working in FOLIO, you never have to consider invisible permissions, because the development process created visible permissions that offer all the functionality you need. 

However, because FOLIO is in iterative development, occasionally bugs with permissions appear, or a feature may be partially developed in a particular release, with plans to finish development in future releases. When that happens, FOLIO administrators may need to assign an invisible permission directly to a user in order to enable a needed workflow.

How can I see invisible permissions in the FOLIO UI?
The ability to see invisible permissions is determined user-by-user. The logged-in user must 
have access to Settings → Developer. 

# Go to Settings > Developer > Configuration.
# Check the box for *List ‘invisible’ permissions in add-perm menus?*
# Save your changes.

It is not recommended to leave this setting on permanently; there are thousands of permissions in FOLIO when including visible and invisible permissions together, and displaying invisible permissions will significantly slow down permissions management workflows.

How should I configure FOLIO to use invisible permissions with user accounts, if I need to be able to assign them to staff?

You should use permission sets.

 The general approach is:
# Log in as a user with appropriate permissions and turn on listing invisible permissions in FOLIO.
# Go to Settings > Users > Permission sets and create a new permission set with only the invisible permissions that you need to be able to assign.
# Turn off the ability to see invisible permissions.
# Assign that permission set that you created to the users who need the invisible permission.

The reason to use this process rather than simply logging in as an appropriate administrator and assigning the invisible permission to staff is that other users could come in after you assign the invisible permission, edit the staff member’s account, and overwrite that administrator’s changes.

For example:

Suppose Jameca Jones, a FOLIO administrator, decides that Jeanne Dupont, a FOLIO user, needs the invisible permission *circulation-rules.storage.get* to help with troubleshooting delivery issues in FOLIO.
# Jameca logs into FOLIO  and enables the invisible permission option in Setting > Developer.
# Jameca goes to the Users App and finds Jeanne's record.
# Jameca assigns the invisible permission to Jeanne and saves her changes.
# Jameca disables the invisible permission option.

A few days later, Max Mustermann realizes that Jeanne needs the visible permission named *Courses: Read All*. Max is a manager, but not a FOLIO administrator.
# Max goes into Users and looks up Jeanne's record.
# When Max views Jeanne’s account, he doesn’t see the permission *circulation-rules.storage.get* on Jeanne’s because he doesn’t have that option turned on for his account in Settings.
# Max adds the permission "Courses: Read All" and saves his changes. 

When Max saves Jeanne’s record, FOLIO saves a complete new copy of Jeanne's permissions that contains <em>only the permissions that Max could view</em>,  which overwrites the changes that Jameca made.

In contrast, suppose Jameca uses permission sets to give Jeanne access.


# Jameca goes to Settings > Developer and enables invisible permissions.
# She goes to Settings > Users > Permission Sets and creates a permission set named “Troubleshooting - Circulation Rules Permissions.” 
# Jameca adds the permission *circulation-rules.storage.get* to the permission set she has made, and saves her changes. 
# Jameca goes into the Users app, looks up Jeanne’s record, and assigns the permission set *Troubleshooting - Circulation Rules Permissions* to Jeanne’s account. 

A few days later, Max realizes that Jeanne also needs the permission *Courses: Read All.*
# Max goes to the Users app and looks up Jeanne’s record.
# Max doesn’t know what “Troubleshooting - Circulation Rules Permissions” is for, but knows that administrators have been using permission sets to debug issues, so he leaves it assigned to Jeanne.
# Max adds the permission *Courses: Read All* to Jeanne’s account and saves his changes.

When Max saves his changes, FOLIO saves a completely new copy of Jeanne’s permissions that <em>still includes</em> only the permissions Max could view. But because Max <em>could see the permission set</em> that Jameca created, it gets re-saved to Jeanne’s account, and she doesn’t lose the access that she needs.

