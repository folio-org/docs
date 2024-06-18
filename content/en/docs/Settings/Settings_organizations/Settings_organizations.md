---
title: "Settings > Organizations"
linkTitle: "Organizations"
date: 2024-04-22
weight: 210
tags: ["subtopic"]   
---

The Organizations section of the Settings app is where you establish the categories you want to use to classify the contact people and contact information you add to an organization, any types you may wish to use to classify the organization records for filtering purposes, and banking information related to vendors.


## Permissions

In order to interact with Organizations settings, a user needs to be assigned the following permissions:



*   **Settings (Organizations): Can view and edit settings.** This permission allows the user to view, create, edit, and delete all organizations settings.
*   **Settings (Organizations): View settings.** This permission allows the user to view, but not interact with, organizations settings.

You can assign permissions to users in the Users app.


## Settings \> Organizations \> Categories

Categories are a way to classify the contact people and contact information you add to an organization. Categories are defined by your library and can be used to group contact information and contact people to make them easier to find and identify. You need to first add the categories in the Settings app in order to assign them to organization contacts.

For more information on adding contact information and contact people to organizations, see [Contact information](../../organizations/#contact-information) and [Contact people](../../organizations/#contact-people).


### Creating a new category

1. Click **New**.

2. Enter a category **Name** in the box.

3. Click **Save**. The category is saved and appears in the Categories list.


### Editing a category

1. Find the category you want to edit and click the **pencil icon**.

2. Make the changes to the category name.

3. Click **Save**. The category is updated.


### Deleting a category
Note: Categories may be deleted when in use on Organization records. FOLIO will not produce a warning to prevent the deletion.

1. Find the category you want to delete.

2. Click the **trash can icon**.

3. In the **Delete Category** dialog, click **Delete**. The category is deleted and a confirmation message appears. 


## Settings \> Organizations \> Types
Libraries may create controlled lists of organization types to facilitate filtering based on the nature of the library's relationship with the organization, e.g. Subscription agent, consortium. An organization may have multiple types assigned to its record. This value can also be exported within the Orders CSV, when applied to selected vendors.

### Creating a new type

1. Click **New**.

2. Enter a type **Name** in the box.

3. Enter a type **Status**: Active or Inactive. Inactive types will not appear in the dropdown menu to assign to Organization records, but will still appear within the **Types** filter in the Organizations app.

3. Click **Save**. The type is saved and appears in the Types list.


### Editing a type

1. Find the type you want to edit and click the **pencil icon**.

2. Make the changes to the type name or status.

3. Click **Save**. The type is updated.


### Deleting a type

1. Find the type you want to delete.

2. Click the **trash can icon**.

3. In the **Delete Type** dialog, click **Delete**. The type is deleted and a confirmation message appears. Note: Types cannot be deleted when in use on an Organization record. You will see an error: "This type cannot be deleted, as it is in use by one or more records."

## Settings \> Organizations \> Banking information
Libraries may wish to record banking information to use for payments to vendors. To activate the **Banking information** accordion on Organization records, select the **Enable banking information** checkbox and click **Save**. This accordion will only be accessible to staff users with corresponding permissions to view/interact with Banking information.

## Settings \> Organizations \> Account types
If **Banking information** is enabled, a library can configured account types to include alongside banking information. Examples may include 'Corporate checking' or 'Corporate savings'.

### Creating a new account type

1. Click **New**.

2. Enter a type **Name** in the box.

3. Click **Save**. The account type is saved and appears in the account types list.


### Editing an account type

1. Find the account type you want to edit and click the **pencil icon**.

2. Make the changes to the account type name.

3. Click **Save**. The account type is updated.


### Deleting an account type

1. Find the account type you want to delete.

2. Click the **trash can icon**.

3. In the **Delete account type** dialog, click **Delete**. The account type is deleted and a confirmation message appears. Note: Account types can be deleted while in use on an organization record. The field will appear empty within the Banking information.
