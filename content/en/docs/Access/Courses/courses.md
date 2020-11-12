
---
title: "Courses"
linkTitle: "Courses"
date: 2020-11-12
weight: 40
description: >
  Note: This content is currently in draft status.
---

The Courses app allows you to create and manage course reserves.

Note: In order for the courses you create in the Courses app to be discoverable by your patrons, you need to have an external interface or discovery layer set up and capable of interacting with FOLIO.

## Implementing the Courses app

If you are configuring the Courses app for the first time, you need to first set up the following features in the Settings app:

* Terms
* Course Types
* Course Departments
* Processing Statuses
* Copyright Statuses

Once you configure the above settings, you can:

* Create courses
* Add instructors
* Add cross-listed courses
* Add reserves to courses

## Searching for courses

You can search for courses in the Search & filter pane. Courses are shown and selected by default. To search for courses, enter your search terms into the box. Select the **All fields** drop-down list to search through one of the following fields: Course name, Course code, Section, Instructor, Registrar ID, and External ID. All fields is the default search.

You can also search for courses by selecting any of the filters in the Search & filter pane: Department, Course type, Term, and Location. Additionally, you can apply the filters after you perform a search to limit your results.

## Searching for reserves

You can search for items on reserve in the Search & filter pane. Click **Reserves** to start your search. Courses are shown and selected by default. To search for reserves, enter your search terms into the box. Select the **All fields** drop-down list to search through one of the following fields: Title, Barcode, or Call Number. All fields is the default search.

You can also search for reserves by selecting any of the filters in the Search & filter pane: Processing status, Copyright status, Permanent location, Temporary location, and Term. You can also apply the filters after you perform a search to limit your results.

## Creating a course

When creating a course, you should keep the following in mind:

* You must have the Courses window open in order to create a course.
* Once a course is created, it can only be deleted if all reserve items are removed. 
* Department, Course Type, and Term are configured in Settings. See Settings > Courses for more information.
* If you are adding a cross-listed course to a course, the information you enter into Course listing information also applies to the cross-listed course.
* Reserve items added to the course are automatically assigned with the Start Date and End Date of the Term you selected, as specified in the Term settings. If needed, you can edit the dates by editing the reserve item.
* Any item assigned to a Course automatically has its temporary location set to the value specified in the Location field. If needed, you can change the temporary location by editing the reserve item.
* When completing the course information, make sure you understand how the fields correspond to your discovery interface.

1. Click **New**.
2. In the **Create course** window, enter a **Course Name** and select a **Term**. All other fields are optional. See Course fields for more information.
3. Click **Save & close**.

## Editing a course

1. Find the course you want to edit and click on it in the **Courses** list.
2. In the **course details** window, click **Edit**.
3. Make your desired changes to the course and click **Save & close**.

## Deleting a course

Courses can only be deleted once all items are removed from the course.

1. Find the course you want to delete and click on it in the **Courses** list.
2. In the **course details** window, click **Edit**.
3. Click **Delete**.
4. Click **Really Delete** to delete the course. The course is deleted and removed from the Courses list.

## Adding a cross-listed course

Once a course is created, cross-listed courses can be added to it. When you cross-list a course, the information you have in the original course’s Course listing information section also applies to the cross-listed course.

Note: All cross-listed courses appear in your discovery layer as individual courses.

1. Find the course you want to add a cross-listed course to and click on it in the Courses list.
2. In the **course details** window, click **Crosslist**.
3. In the **New course within listing** window, enter a **Course name** and optionally fill in the other boxes under **Basic course information**. The Cross listing information section is populated with information from the original course.
4. Click **Save & close**. The course is saved and appears in the Cross-listed courses section of the original course. It also appears in the main course list.

## Editing a cross-listed course

See Editing a course.

## Deleting a cross-listed course

See Deleting a course.

## Adding an instructor to a course

Instructors can only be added once a course is created. The instructor does not need a user record in FOLIO, but adding an instructor with a user record facilitates reports.

Add an instructor with a FOLIO user record:

1. Find the course and click on it in the **Courses** list.
2. Under **Instructors**, click **Add instructor**.
3. In the **Add instructor** window, click **Look up user**.
4. In the **Select User** dialog, find the instructor you want to add, and click on them in the **User Search Results** list. The instructor’s name and barcode appears in the Name and Barcode boxes.
5. Click **Save & close**. The instructor appears in the Instructors section.

Add an instructor that does not have a FOLIO user record:

1. Find the course and click on it in the **Courses** list.
2. Under **Instructors**, click **Add instructor**.
3. In the **Name** box, enter the instructor’s name.
4. Click **Save & close**. The instructor appears in the Instructors section.

## Editing an instructor

1. Find the course and click on it in the **Courses** list.
2. Under **Instructors**, find the instructor you want to edit.
3. Click **Edit instructor**.
4. In the **Add instructor for [course]** window, edit the name or barcode of the instructor.
5. Click **Save & close**.

## Deleting an instructor

1. Find the course and click on it in the **Courses** list.
2. Under **Instructors**, find the instructor you want to delete.
3. Click **Remove**. The instructor is removed from the course.

## Adding a reserve item to a course

When you add an item to a course, the following information is copied from the original record: Title and Contributor from the Instance record; Barcode, Status, Permanent location, Copy, Volume, Enumeration, and URL/PDF link from the Item record; and Effective call number.

Note: All reserve items, including electronic items, need to have an item record with a barcode. 

1. Find the course and click on it in the **Courses** list.
2. In the Items section, scan the item barcode into the box. If you pasted in the barcode, click **Add item**. The item is added to the course and appears in the Items section.

## Editing a reserve item

1. Find the course in which you want to edit an item and click on it in the **Courses** list.
2. In the Items section, find the reserve item that you want to edit and click **Edit reserve**.
3. In the Item title window, make your changes.
4. Click **Save & close**. The item is updated.

## Removing a reserve item from a course

1. Find the course in which you want to delete an item and click on it in the **Courses** list.
2. In the Items section, find the reserve item that you want to remove and click **Remove**. The item is removed.
