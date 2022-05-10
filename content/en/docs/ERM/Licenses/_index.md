
---
title: "Licenses"
linkTitle: "Licenses"
date: 2022-03-21
weight: 50
tags: ["parenttopic"]
---

The Licenses app allows you to create and manage your library’s licenses. The licenses you create here can link to agreements in the Agreements app.

Definition of terms related to the Licenses app:



*   **Agreement.** An agreement outlines the content your library can access.
*   **License.** A license explains what you can do with that content. The license is the contract or Terms of Use.
*   **Organization.** Any institution with which your library interacts (this may or may not be an institution from which you purchase materials). The organizations associated with licenses are generally the licensors or a consortium.


## Permissions

The permissions listed below allow you to interact with the Licenses app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Licenses app or any related information.

The following are the Licenses permissions:



*   **Licenses: Search & view licenses.** This permission allows the user to search and view existing licenses and amendments. This includes the permission to see and access the License app in the FOLIO interface.
*   **Licenses: Edit licenses.** This permission grants all permissions included in "Licenses: Search & view licenses" plus it allows the user the ability to edit licenses and amendments, including the ability to add and edit documents and view, add and edit tags on a license.
*   **Licenses: Delete licenses.** This permission grants all permissions included in "Licenses: Search & view licenses" plus it allows the user the ability to delete licenses and amendments.
*   **Settings (Licenses): Manage pick lists and values.** This permission allows the user to access the License settings and the ability to manage pick lists and pick list values.
*   **Settings (Licenses): Manage license terms.** This permission allows the user to access the License settings and the ability to manage the available terms. It includes the ability to view pick list information, which is necessary to manage license terms which use pick lists.

If you want to link or view organizations and/or internal contacts in a license record, you also need to have the following Organizations and Users permissions:



*   **Organizations: View.** This permission allows the user to search and view organization records and settings. The user can also access Contacts and Interfaces but cannot access Interface usernames and passwords.
*   **Organizations: Interface usernames and passwords: view.** This permission allows the user to view the usernames and passwords that appear in the Interface section.
*   **Users: Can view user profile.**


## Keyboard shortcuts
Keyboard shortcuts allow you to perform actions in this app using the keyboard.  See [Platform essentials > Keyboard shortcuts]({{< ref "keyboardshortcuts.md" >}}) for more information.


## Creating a license



1. In the **Licenses** pane, click **Actions > New**.
2. In the **New license** window, enter a **Name** for the license record.
3. Select a license **Type** from the drop-down list. For example, local or consortial. License Types are configured in the Settings app. For more information, see [Settings > Licenses > Pick list values]({{< ref "/settings_licenses.md#settings--licenses--pick-list-values" >}}).
4. Select a **Status** from the drop-down list. License Statuses are configured in the Settings app. For more information, see [Settings > Licenses > Pick list values]({{< ref "/settings_licenses.md#settings--licenses--pick-list-values" >}}).
5. (Optional) To indicate when the license begins, enter a **Start date**.
6. (Optional) To indicate when the license terminates, enter an **End date**. If the license doesn’t have an End date, select the **Open ended** checkbox.
7. (Optional) Enter a **Description** of the license in the box.
8. (Optional) Add an **Alternative name** for the license record. See Alternative names, below, for more information.
9. (Optional) Fill in the fields in the **Internal contacts**, **Organizations**, **Core documents**, **Terms**, and **Supplementary documents** sections. For more information on the fields and actions available in these sections, see the section descriptions below.
10. Once you have included all of the information you want about the license, click **Save & close**. A confirmation message appears, and the license is saved and appears in the License pane.


### Alternative names

Alternative names are other names you may want the license record to be associated with, such as abbreviations or prior names. Any value entered as an alternative name is searchable in the Licenses app.


#### Adding an alternative name

Note: Adding an alternative name is optional, but if you click **Add alternative name**, you must enter an alternative name or delete the alternative name in order to save the license record.



1. Click **Add alternative name**.
2. Enter the license record’s **Alternative name** in the box.
3. Repeat as needed. The alternative name saves once you save the license.


#### Deleting an alternative name



1. Find the Alternative name you want to delete.
2. Click the **trash can icon**. The Alternative name is deleted and is removed from the record once you save the license.


### Internal contacts

Internal contacts are generally library staff members you want to associate with the license record. For example, your internal contact may be the ERM librarian responsible for renewals, the authorized signatory for new licenses, or the subject matter expert responsible for reviewing content ahead of renewals.

Internal contacts must have a user record created in the Users app in order to be assigned as a contact. Multiple contacts can be assigned to one license record.


#### Adding an internal contact



1. Click **Add internal contact**.
2. Click **Link user**.
3. In the **Select User** dialog, in the **User search** box, enter part or all of the internal contact’s name and click **Search**.
4. (Optional) Filter results by Status or by Patron group.
5. In the **User Search Results** pane, click the **user** to select them. The user is added to the license record as an internal contact.
6. Select a **Role** to assign to the internal contact from the drop-down list. Roles are configured in the Settings app. For more information, see [Settings > Licenses > Pick list setup]({{< ref "/settings_licenses.md#settings--licenses--pick-lists" >}}).
7. Repeat steps 1-6 as needed. The internal contact saves once you save the license.


#### Removing an internal contact



1. Identify the internal contact you want to remove.
2. Click the **trash can icon**. The internal contact is removed from the record once you save the license.


#### Replacing an internal contact



1. Identify the internal contact you want to replace.
2. Click **Replace user**.
3. Repeat steps 3-6 under Adding an internal contact.


### Organizations

Organizations are any institution with which your library interacts. You can add an organization to a license record to create a relationship between the organization and license. For example, you may want to add the licensor as an organization.

Organizations must have an organization record created in the Organizations app in order to be assigned as an organization. Multiple organizations can be assigned to one license record.


#### Adding an organization



1. Click **Add organization.**
2. Click **Link organization.**
3. In the **Select Organization** dialog, in the **Search & filter** box, enter part or all of the organization’s name, and click **Search**. Alternatively, you can select the All drop-down list and search for an organization based on the fields listed. For more information, see [Searching for an organization]({{< ref "/organizations.md#searching-for-an-organization" >}}).
4. (Optional) Filter results by Organizations status, Tags, Is vendor, Country, Languages, or Payment method.
5. In the Organizations pane, click the **organization** to select it. The Select Organization dialog closes and the organization is added to the license record.
6. Select a **Role** for the organization from the drop-down list. Roles are configured in the Settings app under [Licenses > License term pick list setup]({{< ref "/settings_licenses.md#settings--licenses--pick-lists" >}}).
7. (Optional) Enter a **Note** in the box.
8. Repeat steps 1-7 as needed. The organization saves once you save the license.


#### Removing an organization



1. Find the organization you want to remove.
2. Click the **trash can icon**. The Organization is removed from the record once you save the license.


#### Replacing an organization



1. Find the organization you want to replace.
2. Click **Replace organization.**
3. Repeat steps 3-7 under [Adding an organization](#adding-an-organization).


### Core documents

A core document is any central document relevant to the license record, for example, the license agreement or terms of use. You can use this section to identify the physical and/or electronic location of core documents. It can also be used as a space to upload documents for easier access when assessing license information in FOLIO.


#### Adding a core document



1. Click **Add core document.**
2. Enter a **Name** in the box.
3. (Optional) Enter a **Note** about the core document.
4. You must complete at least one of the following:
    *   Upload a file into the license record by dragging and dropping the file in the **Drag & drop to upload** box, or click **or choose file**.
    *   Enter the **Physical location** of the document in the box.
    *   Enter the **URL** of the document in the box.
5. Repeat steps 1-4 as needed. The core document saves once you save the license.


#### Removing a core document



1. Find the Core document you want to remove.
2. Click the **trash can icon**. The Core document is removed from the record once you save the license.


### Terms

Terms are the terms of use that define what you can or cannot do with the licensed content. In FOLIO, you can define the Terms that appear in license records through configurations in the Settings app. The Settings app is where you establish the term label, the type of term, default visibility of the term, and term status (primary or optional). For more information, see [Settings > Licenses > Terms]({{< ref "/settings_licenses.md#settings--licenses--terms" >}})


Primary terms appear on every license record by default. Optional terms can be added on a license-by-license basis.


#### Filling out a primary term

If a term is defined as primary in the Settings app, then it always appears as an option in a license record. You can leave the **Value** of a primary term blank or select **Not set**, but primary terms cannot be removed from the license record.



1. Complete the **Value** field either by inputting text, using the up and down arrows to set an integer, or selecting an option from the drop-down list. The value is the definition of, or answer to, the term.
2. (Optional) Enter an **Internal note** in the box. Any text you enter here displays internally to FOLIO users.
3. Select the term’s **Visibility** from the drop-down list. Visibility indicates whether the term should display internally (only within FOLIO), or externally to the public through, for example, your catalog.
4. (Optional) Enter a **Public note** in the box. Any text you enter here displays externally to the public.
5. Repeat steps 1-4 for as many primary terms as desired. The terms save once you save the license.


#### Adding an optional term

A term is optional if it is not defined as primary in the Settings app. Optional terms do not automatically display in a license record.



1. Click **Add term.**
2. Select the term **Name** from the drop-down list.
3. Follow steps 1-4 under Filling out a primary term.
4. Add as many optional terms as desired. The terms save once you save the license.


#### Removing an optional term



1. Identify the Optional term you want to remove.
2. Click the **trash can icon**. The Optional term is removed from the record once you save the license.


### Supplementary documents

A supplementary document is any additional document relevant to the license record.


#### Adding a supplementary document



1. Click **Add supplementary document.**
2. Enter a **Name** in the box.
3. Select a **Category** from the drop-down list. Categories for Supplementary documents can be configured in the Settings app under [Licenses > License term pick list setup]({{< ref "/settings_licenses.md#settings--licenses--pick-lists" >}}).
4. (Optional) Enter a **Note** about the supplementary document.
5. You must complete at least one of the following:
    *   Upload a file into the license record by dragging and dropping the file in the **Drag & drop to upload** box, or click **or choose file**.
    *   Enter the **Physical location** of the document in the box.
    *   Enter the **URL** of the document in the box.
6. Repeat steps 1-5 as needed. The supplementary document saves once you save the license.


#### Removing a supplementary document



1. Identify the supplementary document you want to remove.
2. Click the **trash can icon**. The supplementary document is removed from the record once you save the license.


## Searching for licenses

You can search for licenses in the **Search & filter** pane. To search for licenses, enter your search terms in the search box and click **Search**.

You can also search for licenses by selecting any of the filters in the **Search & filter** pane: Status, Type, Organizations, Organization role, Tags, Start date, End date, and Terms. For more information on the filters, see the filter descriptions below.


### Status

To filter licenses by their status, in the **Search & filter** pane, click **Status**, and select one of the listed options. Possible statuses may include:



*   **Active.** Licenses currently in use by your library.
*   **Expired.** Licenses no longer in use by your library.

Status values are configured in [Settings > Licenses > Pick list values]({{< ref "/settings_licenses.md#settings--licenses--pick-list-values" >}}).


### Type

To filter licenses by their type, in the **Search & filter** pane, click **Type**, and select one of the listed options. Possible types may include:



*   **Local.** Licenses specific to your library.
*   **Consortial.** Licenses entered into through a library consortium.

Type values are configured in [Settings > Licenses > Pick list values]({{< ref "/settings_licenses.md#settings--licenses--pick-list-values" >}}).


### Organizations

To filter licenses associated with a specific organization, follow these steps:

1. In the **Search & filter** pane, click **Organizations**.
2. Click **Select an organization**.
3. In the drop-down list, search for the organization.
4. Select the organization you want to filter by. The search results appear in the Licenses pane.


### Organization role

To filter licenses by their associated organizations’ roles, follow these steps:



1. In the **Search & filter** pane, click **Organization role**.
2. Click **Select a role**.
3. In the drop-down list, search for the role.
4. Select the role you want to filter by. The search results appear in the Licenses pane.

Organization role values are configured in [Settings > Licenses > Pick list values]({{< ref "/settings_licenses.md#settings--licenses--pick-list-values" >}}).


### Tags

To search for licenses assigned specific tags, follow these steps:



1. In the **Search & filter** pane, click **Tags**.
2. Select the tag(s) from the drop-down list. The search results appear in the Licenses pane.


### Start date

To filter licenses by their start date, enter a date into the **On or after** and/or **On or before** search box, or click the **calendar icon** to select a date from the calendar.

You can also check the box **Include licenses with no end date set** to locate licenses without end dates.


### End date

To filter licenses by their end date, enter a date into the **On or after** and/or **On or before** search box, or click the **calendar icon** to select a date from the calendar.

You can also check the box **Include licenses with no end date set** to locate licenses without end dates.


### Terms

To filter licenses by their terms, follow these steps:



1. In the **Search & filter** pane, click **Terms**.
2. Click **Edit term filters.**
3. In the **Term filter builder** dialog, select a **Term** from the drop-down list.
4. Select a **Comparator** from the drop-down list. The comparator options depend on the term selected.
5. If the **Value** box is available, select or enter a value. Whether the value box is available depends on which comparator is selected.
6. (Optional) To continue to build the term filter, click **Add rule.**
7. (Optional) To search for licenses using multiple term filters, click **Add term filter.** Note: To delete a rule or term filter in the Term filter builder, click on the **trash can icon** next to the rule or term filter.
8. Click **Apply.** The search results appear in the Licenses pane.

Term values are configured in [Settings > Licenses > Pick list values]({{< ref "/settings_licenses.md#settings--licenses--pick-list-values" >}}).


## Viewing a license

Once you search for a license, the following information appears in the License pane:



*   **Name.** The name of the license.
*   **Type.** The type of license.
*   **Status.** The status of the license.

In the search results, click on a license to view it. The license details pane displays with additional information about the license. In the license display, any accordions not populated with data and not otherwise required are not displayed to the user.


## Editing a license



1. [Find the license](#searching-for-licenses) you want to edit and select it.
2. In the **license details** pane, click **Actions > Edit**.
3. Make your desired changes to the license.
4. Click **Save & close**. A confirmation message appears and the license is updated.


## Deleting a license



1. [Find the license](#searching-for-licenses) you want to delete and select it.
2. In the **license details** pane, click **Actions > Delete**.
3. In the **Delete license** dialog, click **Delete**. A confirmation message appears and the license is deleted.


## Adding a tag to a license



1. [Find the license](#searching-for-licenses) you want to tag and select it.
2. In the **license details** pane, click the **tag icon**.
3. In the **Tags** pane, either select a tag from the box or enter a tag.
4. Click the **X** on the Tags pane to close the pane and save the tag. The tag number updates to the number of tags applied to the license.


## Duplicating a license



1. [Find the license](#searching-for-licenses) you want to duplicate and select it.
2. In the **License details** pane, click **Actions > Duplicate**.
3. In the **Duplicate license** dialog, select which sections of the license to duplicate. See [Creating a license](#creating-a-license) for the fields that appear in each of the sections.
4. Click **Save & close**.
5. In the **Copy of: [duplicated license’s name]** window, make your desired changes.
6. Click **Save & close**. A confirmation message appears and the duplicated license appears in the License pane.


## Exporting a license



1. [Find the license(s)](#searching-for-licenses) you want to export and select the checkbox next to the license name in the **Licenses** pane.
2. Click **Actions > Export selected** as CSV.
3. In the **Export licenses as CSV** dialog, select which sections of the license(s) to export. See [Creating a license](#creating-a-license) for the fields that appear in each of the sections.
4. Click **Save & close**. Depending on your browser and its configurations, the file automatically downloads or you are prompted to save it.


## Creating an amendment



1. [Find the license](#searching-for-licenses) to which you want to add an amendment and select it.
2. In the **License details** pane, click **Amendments > Add amendment**.
3. Fill out the amendment. The fields that appear are also found in a license record. See [Creating a license](#creating-a-license) for more information.
4. Click **Save & close**. A confirmation message appears and the amendment is saved.


## Editing an amendment



1. [Find the license](#searching-for-licenses) that contains the amendment you want to edit and select it.
2. In the **License details** pane, click **Amendments**.
3. In the **Amendments** table, click the **amendment** you want to edit.
4. In the **Amendment details** pane, click **Actions > Edit**.
5. Make your desired changes to the amendment.
6. Click **Save & close**. A confirmation message appears and the amendment is saved.


## Duplicating an amendment



1. [Find the license](#searching-for-licenses) that contains the amendment you want to duplicate and select it.
2. In the **License details** pane, click **Amendments**.
3. In the **Amendments** table, click the **amendment** you want to edit.
4. In the **Amendment details** pane, click **Actions > Duplicate**.
5. In the **Duplicate amendment** dialog, select which sections of the amendment you want to duplicate. See [Creating a license](#creating-a-license) for the fields that appear in each of the sections.
6. Click **Save & close**.
7. In the **Copy of: [duplicated agreement’s name]** window, make your desired changes.
8. Click **Save & close**. A confirmation message appears and the duplicated agreement appears in the Agreements pane.


## Deleting an amendment



1. [Find the license](#searching-for-licenses) that contains the amendment you want to delete and select it.
2. In the **License details** pane, click **Amendments**.
3. In the **Amendments** table, click the **amendment** you want to delete.
4. In the **Amendment details** pane, click **Actions > Delete**.
5. In the **Delete amendment** dialog, click **Delete**. A confirmation message appears and the amendment is deleted.


## Adding and removing notes from a license

You can add and assign notes to license records. Assigning a note means you are reusing a previously created note.


### Adding a new note to a license



1. [Find the license](#searching-for-licenses) to which you want to add a note and select it.
2. In the **License details** pane, click **Notes > New**.
3. In the **New note** window, select the **Note type** from the drop-down list. Note types are created in the Settings app. For more information, see Settings > Notes.
4. Enter a **Note title** in the box.
5. (Optional) Enter any **Details** about the note in the box.
6. Click **Save & close**. The note is saved and appears in the Notes section in the license details pane.


### Assigning an existing note to a license



1. [Find the license](#searching-for-licenses) to which you want to add a note and select it.
2. In the **License details** pane, click **Notes > Assign / Unassign**.
3. In the **Assign / Unassign note** dialog, search for a note using the search bar in the Search & filter pane, or select a **Note type** from the drop-down list. You can also filter by **Note assignment status**.
4. Select the checkbox next to the note you want to assign to the license and click **Save.** The note is saved and appears in the Notes section in the license details pane.


### Editing notes in a license



1. [Find the license](#searching-for-licenses) with the note you want to edit and select it.
2. In the **License details** pane, click **Notes**.
3. Find the note you want to edit, and click **Edit** at the bottom of the Title and details section of the note.
4. In the **Edit: note** window, make your desired changes to the note.
5. Click **Save & close**. The note is saved.


### Removing notes from a license



1. [Find the license](#searching-for-licenses) with the note you want to remove and select it.
2. In the **License details** pane, click **Notes**.
3. Click on the note you want to remove.
4. In the **Note** window, click **Actions > Delete**.
5. In the **Delete note** dialog, click **Delete**. The note is deleted and removed from any records to which it was attached.The Licenses app allows you to create and manage your library’s licenses. The licenses you create here can link to agreements in the Agreements app.


### Dashboard widgets for the Licenses app

The Dashboard app is designed to enable a personalized view of key information from across FOLIO apps at a glance. In its first release (included in the Juniper flower release), the Dashboard includes the ability to display information from the Agreements and Licenses applications.

In the Juniper release, the Licenses app comes with one dashboard widget ("ERM Licenses"). There are examples of how you can use this  widget definition to achieve a wide range of outcomes in the [Example widget configurations](https://wiki.folio.org/display/FOLIOtips/Example+widget+configurations) documentation.
