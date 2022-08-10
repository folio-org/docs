---
title: "Courses"
linkTitle: "Courses"
date: 2021-12-03
weight: 40
---

The Courses app allows you to create and manage course reserves.

Note: In order for the courses you create in the Courses app to be discoverable by your patrons, you need to have an external interface or discovery layer set up and capable of interacting with FOLIO.


## Permissions

The permissions listed below allow you to interact with the Courses app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Courses app or any related information.

The following are all the Courses permissions, listed from least to most restrictive:

* **Courses: All permissions.** This permission allows the user to maintain (view, add, edit, and delete) courses, items, instructors, and cross-listed courses.
* **Courses: Read, add, and edit courses.** This permission allows the user to view, add, and edit a course. However, they are unable to delete a course.
* **Courses: Add and edit courses’ reserved items.** This permission allows the user to add and edit items associated with a course. It does not grant the ability to remove items from a course.
* **Courses: Add, edit, and remove courses’ reserved items.** This permission allows the user to view, add, edit, and remove items associated with a course.
* **Courses: Read All.** This permission allows the user to see all courses and item information.
* **Settings (Courses): Can create, edit and delete Course Settings.** This permission allows the user to maintain (view, add, edit, and delete) all course settings.


## Implementation considerations

Before you implement the Courses app, make sure you have completed the following:

* Implemented the Inventory app.
* [Configured your circulation rules.]({{< ref "/settings_circulation.md" >}})
* Loaded or created users.

If you are configuring the Courses app for the first time, you need to first set up the following features in the Settings app, if applicable:

* [Terms]({{< ref "/settings_courses.md#settings--courses--terms" >}})
* [Course Types]({{< ref "/settings_courses.md#settings--courses--course-types" >}})
* [Course Departments]({{< ref "/settings_courses.md#settings--courses--course-department" >}})
* [Processing Statuses]({{< ref "/settings_courses.md#settings--courses--processing-statuses" >}})
* [Copyright Statuses]({{< ref "/settings_courses.md#settings--courses--copyright-statuses" >}})

Once you configure the above settings, you can:

* [Create courses.](#creating-a-course)
* [Add instructors.](#adding-an-instructor-to-a-course)
* [Add cross-listed courses.](#adding-a-cross-listed-course)
* [Add reserves to courses.](#adding-a-reserve-item-to-a-course)


## Integrations

The Courses app can be optionally integrated with these applications:

* EBSCO Discovery Service (EDS)
* VuFind

In addition, you can connect the Courses app to your learning management system using the Learning Tools Interoperability (LTI) protocol. There is a separate module to install for LTI support. For more information, see [Course Reserves - LTI connectivity](https://wiki.folio.org/display/FOLIOtips/Course+Reserves+-+LTI+connectivity).

Each of these integrations have their own features to consider in regards to the migration of courses, sections, cross-listings, and separate courses and how they interact with FOLIO.


## Searching for courses

You can search for courses in the **Search & filter** pane. All courses are shown and selected by default. To search for courses, enter your search terms into the box. Select the **All fields** drop-down list to search through one of the following fields: Course name, Course code, Section, Instructor, Registrar ID, and External ID. All fields is the default search.

You can also search for courses by selecting any of the filters in the **Courses Search & filter** pane: Department, Course type, Term, and Location. Additionally, you can apply the filters after you perform a search to limit your results.

You can choose which columns appear in your search results by clicking on the **Action** menu. Under **Show columns**, check or uncheck columns to change what you see in the results pane.

## Searching for reserves

You can search for items on reserve in the **Search & filter** pane. Click **Reserves** to start your search. Reserves are shown and selected by default. To search for reserves, enter your search terms into the box. Select the **All fields** drop-down list to search through one of the following fields: Title, Barcode, or Call Number. All fields is the default search.

You can also search for reserves by selecting any of the filters in the **Search & filter** pane: Processing status, Copyright status, Permanent location, Temporary location, and Term. Additionally, you can apply the filters after you perform a search to limit your results.

You can choose which columns appear in your search results by clicking on the **Action** menu. Under **Show columns**, check or uncheck columns to change what you see in the results pane.

To find items on a reserve for a specific course, first search for the course from the **Search & filter** pane. Click on the course you wish to view reserves for. Scroll down to the Items section to see all the items on reserve for that course.

## Creating a course

When creating a course, you should keep the following in mind:

* You must have the Courses window open in order to create a course.
* Once a course is created, it can only be deleted if all reserve items are removed.
* Department, Course Type, and Term are configured in Settings. See [Settings > Courses]({{< ref "/settings_courses.md" >}}) for more information.
* If you are adding one or more cross-listed courses to a course, the information you enter into Course listing information also applies to each cross-listed course.
* Reserve items added to the course are automatically assigned with the Start Date and End Date of the Term you selected, as specified in the [Term settings.]({{< ref "/settings_courses.md#settings--courses--terms" >}}) If needed, you can edit the dates by [editing the reserve item.](#editing-a-reserve-item)
* Any item assigned to a Course automatically has its temporary location set to the value specified in the Location field. If needed, you can change the temporary location by [editing the reserve item.](#editing-a-reserve-item)
* When completing the course information, make sure you understand how the fields correspond to your discovery interface.

1. Click **New**.
2. In the **Create course** window, enter a **Course Name** and select a **Term**. All other fields are optional.
3. Click **Save & close**.


## Editing a course

1. [Find the course](#searching-for-courses) you want to edit and click on it in the **Courses** list.
2. In the **course details** window, click **Edit**.
3. Make your desired changes to the course and click **Save & close**.


## Deleting a course

Courses can only be deleted once all items are removed from the course.

1. [Find the course](#searching-for-courses) you want to delete and click on it in the **Courses** list.
2. In the **course details** window, click **Edit**.
3. Click **Delete**.
4. Click **Really delete** to delete the course. The course is deleted and removed from the Courses list.


## Adding a cross-listed course

Cross-listed courses share instructors, course listing information, and reserve items. Once a course is created, cross-listed courses can be added to it. When you cross-list a course, the information you have in the original course’s Course listing information section also applies to the cross-listed course.

1. [Find the course](#searching-for-courses) you want to add a cross-listed course to and click on it in the **Courses** list.
2. In the **course details** window, click **Crosslist**.
3. In the **New course within listing** window, enter a **Course name** and optionally fill in the other boxes under **Basic course information**. The **Cross listing information** section is populated with information from the original course.
4. Click **Save & close**. The course is saved and appears in the Cross-listed courses section of the original course. It also appears in the main course list.

## Editing a cross-listed course

See [Editing a course.](#editing-a-course)

## Deleting a cross-listed course

You are able to delete a cross-listed course with items as long as one course remains.

1. [Find the cross-listed course](#searching-for-courses) you want to delete and click on it in the **Courses** list.
2. In the **course details** window, click **Edit**.
3. Click **Delete**.
4. Click **Really delete** to delete the course. The course is deleted and removed from the Courses list.

## Duplicating a course

1. Find the course you want to duplicate and click on it in the Courses list.
2. In the Course details window, click **Action > Duplicate**. A pop-up window will appear.
3. In the pop-up window, select the term for the duplicate course.
4. If the course has cross-listings, and you want the cross-listed courses to also be duplicated, check **Duplicate all cross-listed courses**.
5. Click **Create duplicate course(s)**.

The new duplicated course will appear, with "- Duplicate" added to the end of the course name. Click **Action > Edit** to edit the course to update the name and other information.

## Adding an instructor to a course

Instructors can only be added once a course is created. The instructor does not need a user record in FOLIO, but adding an instructor with a user record facilitates reports.

Add an instructor with a FOLIO user record:

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. Under **Instructors**, click **Add instructor**.
3. In the **Add instructor** window, click **Look up user**.
4. In the **Select User** dialog, find the instructor you want to add, and click on them in the **User Search Results** list. The instructor’s name and barcode appears in the Name and Barcode boxes.
5. Click **Save & close**. The instructor appears in the Instructors section.

Add an instructor that does not have a FOLIO user record:

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. Under **Instructors**, click **Add instructor**.
3. In the **Name** box, enter the instructor’s name.
4. Click **Save & close**. The instructor appears in the Instructors section.

## Editing an instructor

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. Under **Instructors**, find the instructor you want to edit.
3. Click **Edit instructor**.
4. In the **Add instructor for [course]** window, edit the **Name** or **Barcode** of the instructor.
5. Click **Save & close**.


## Deleting an instructor

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. Under **Instructors**, find the instructor you want to delete.
3. Click **Remove**. The instructor is removed from the course.

## Adding and removing notes

You can add and assign notes to courses. Assigning a note means you are reusing a previously created note.

### Adding a new note to a course.

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. In the **Notes** pane, click **New**.
3. In the **New note** window, select the **Note type** from the drop-down list.
4. Enter a **Note title** in the box.
5. (Optional) Enter any **Details** about the note in the box.
6. Click **Save & close**.

### Assigning an existing note to a course

1. [Find the course](#searching-for-courses) to which you want to add a note and click on it in the **Courses** list.
2. In the **Notes** pane, click **Assign/Unassign**.
3. In the **Assign / Unassign note** dialog, search for the note(s) you wish to assign to the course.
4. Select the checkbox for the note(s) you wish to assign to the course and click **Save**.

### Editing an existing note on a course.

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. In the **Notes** pane, find the note you wish to edit and click **Edit**.
3. Make your desired changes to the note.
4. Click **Save & close**.

If the note is assigned to multiple courses, any edits will apply to the note for all of its assigned courses. If you want to make a note with edits that apply just to the open course, you would need to make a new note with the desired text.

### Unassign a note from a course.

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. Under **Notes**, click **Assign / Unassign**.
3. In the **Assign / Unassign note** modal, search for the note you wish to remove.
4. Uncheck the box(es) for the note(s) you wish to unassign.
5. Click **Save**.

### Deleting a note

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. Under **Notes**, click the note you wish to delete.
3. In the Note window, click Actions > Delete.
4. In the Delete note dialog, click Delete. The note is deleted and removed from any records to which it was attached

## Adding a reserve item to a course when the item exists in Inventory

When you add an item to a course, the following information is copied from the original record: Title and Contributor from the Instance record; Barcode, Status, Permanent location, Copy, Volume, Enumeration, and URL/PDF link from the Item record; and Effective call number.

The Start date, End date, and Temporary location are automatically updated based on the Term and Location applied at the courses level. If you need to change these fields, or update reserve item level information, you will need to [edit the reserve item.](#editing-a-reserve-item)

1. [Find the course](#searching-for-courses) and click on it in the **Courses** list.
2. In the **Items** section, either scan the item barcode into the box, or enter the barcode and click **Add item**. The item is added to the course and appears in the Items section.


## Adding a reserve item to a course using Fast Add

You can use Fast Add to create an item in the Courses app and put it on reserve. The Fast Add option prompts you to create an instance, holding, and item in one pane with fewer fields. When you create the item, the Courses app creates the instance, holding, and item in Inventory for you, and then adds the item to the course.

The Fast Add workflow is meant to support putting personal copies, scanned articles, or other items on reserve that are not part of the library’s general circulating collection.

1. From the associated course, scroll to the bottom and click **Add Fast Add item**.
2. From the New fast add record, fill in the Instance, Holdings, and Item sections with the appropriate values.
3. Once you have included all of the information needed for the item, click **Save and close** to create your inventory records and add the item on reserve for the course.


## Editing a reserve item

Note: If you add an item to a course and later make a change to the item via the item record (in the Inventory app) after that item is added to the course, then the change will not be reflected in the reserve record. To update the course reserve record, you need to delete the item and then re-add the item to the course.

Editing a reserve item allows you to change or add information to the following fields:

* **Temporary location.** If you change the reserve item’s temporary location, once you save the changes, the selected Temporary location is added to the Item record in the Inventory app.
* **Temporary loan type.** If you change the reserve item’s temporary loan type, once you save the changes, the selected Temporary loan type is added to the Item record in the Inventory app.
* **Processing status.** This field only applies to the Courses app and is available as a Reserves search filter.
* **Start Date and End Date.** When an item is placed on reserve, the start and end date are inherited from the selected Term.
* **Copyright information.** This section facilitates copyright tracking.

1. [Find the course](#searching-for-courses) with the item you want to edit and click on it in the **Courses** list.
2. In the **Items** section, find the reserve item and click **Edit reserve**.
3. In the **Item title** window, make your changes.
4. Click **Save & close**. The item is updated.


## Removing a reserve item from a course

Note: Removing an item from a course does not remove it from the Inventory app. If the item on reserve had a temporary location inherited from the course, removing the item from reserve will remove the temporary location from the item in inventory.

1. [Find the course](#searching-for-courses) with the item you want to remove and click on it in the **Courses** list.
2. In the **Items** section, find the reserve item and click **Remove**. The item is removed.
