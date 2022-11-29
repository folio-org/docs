---
title: "Settings > Calendar"
linkTitle: "Calendar"
date: 2022-11-04
weight: 30
tags: ["subtopic"]
---

The Calendar section of the Settings app is where you can manage open and closed hours for library service points.

Item check out workflows reference service points when calculating due dates. That means that the service point must have an existing calendar that covers the time period that the item could potentially be loaned for in order for the check out to be successful.

The Calendar section of Settings allows you to create a new calendar, edit existing calendars, duplicate existing calendars, and delete calendars. You can create a single calendar and assign it to multiple service points.

## Permissions

To interact with Settings > Calendar, a user needs to be assigned at least one of the following permissions.

* **Settings (Calendar): Can view existing calendars**. This permission allows users to view, but not modify, service point calendars.
* **Settings (Calendar): Can create and assign new calendars**. This permission allows users to view calendars, create new calendars, and assign them to service points.
* **Settings (Calendar): Can edit and reassign existing calendars**. This permission allows users to view calendars, edit existing calendars, and change the service points those calendars are assigned to.
* **Settings (Calendar): Can delete existing calendars**. This permission allows users to delete calendars.

## Settings \> Calendar \> All calendars

This area shows all calendars on your system, including those with end dates in the past, and what service points those calendars may be assigned to.

From here, a user with appropriate permissions can use the Actions menu to edit and/or duplicate an existing calendar, create a brand new calendar, or delete a calendar.

## Settings \> Calendar \> Current calendar assignments

Use this option to see the calendars that are currently in effect for each service point in your FOLIO instance.

From here, you can click **New** to create a brand new calendar to assign to a service point.

## Settings > Calendar > Monthly calendar view

Use this option to view a service point's calendar for a particular month. Each day will show the service point's open and closed hours. Schedule exceptions are emphasized with an exclamation mark. 

## Create a new calendar

To create a new calendar:

1. Go to **All calendars**.
2. Select **Actions \> New**. 
3. Enter a **Calendar name**. 
4. Enter a **Start date** and **End date**.
5. Select one or more **Service points** to assign the calendar to. You can also leave this option blank, and assign the calendar to a service point later.

Next, you will add open hours.

Hours are represented on the calendar as a table, each row representing a slot of **Hours of operation** - a period when the service point opened for service, and then closed. 

If a service point opens on one day and then does not close until a future day, the **Start day** and **End day** of a particular row may be different days. This may happen if, for example, a library remains open overnight for students studying for final exams.

If a library's standard hours include a day when it is completely closed, it is recommended that you still set a row for that day and designate the status as closed. For example, if a service point is always closed on Sundays, you would represent that day with a row with a status of **Closed**, a **Start day** of Sunday, and an **End day** of Sunday.

To add **Hours of operation**:

1. From **Status**, choose **Open** or **Closed**. 
2. Choose the start day for your **Hours of operation** time slot.
3. Choose the **Start time** when the service point opens. If the status of the row is **Closed**, you do not set a start time.
4. Choose the **End day** when the service point closes. If your library remains open after 11:59 PM, your end day will be different than your start day.
5. Choose the **End time** when the service point closes. If the status of the row is **Closed**, you do not set an end time.
6. Click **Add row** to add additional rows as needed.
7. When you are finished adding your hours of operation, click **Save and close** at the bottom to save your calendar.

If you make a mistake with a calendar row, click the Trash can under **Actions** to remove it and add a new time slot. When you save your changes, FOLIO will sort the rows so that they display in a standard week order.

## Add exceptions to a calendar

Libraries will often have standard hours that apply for a long period of time, such as an academic semester, but also want to be able to change their hours for specific dates like local holidays. To do this, you create am **Exception** tied to a particular calendar period.

A library can use exceptions to completely close a service point, or to change a service point's hours. For example, a library may be open 9 AM to midnight Sunday through Saturday during the academic year, but only be open 9 AM to 5 PM Monday through Friday during Spring Break. Exceptions would allow them to set up the 9 AM to 5 PM schedule and apply it to a specific week.

To add an exception to a calendar:
1. Under the **Exceptions** accordion, click **Add row**.
2. Provide a **Name** for the exception period.
3. From **Status**, choose **Open** or **Closed**.
4. Choose the **Start date** when the exception period begins. Note that unlike **Hours of operation**, you are specifying a specific date, rather than a generic day of the week.
5. Choose the **Start time** when the service point opens. If the status of the row is **Closed**, you do not set a start time.
6. Choose the **End date** when the exception period ends. 
7. Choose the **End time** when the service point closes. If the status of the row is **Closed**, you do not set an end time.

If your exception has a status of **Open**, you can add additional date/time periods to the exception by clicking the **+** in the **Actions** column.

### Example with Calendar Exceptions: Closing to celebrate the Chinese New Year.

Suppose a university library is open 9 AM to midnight seven days a week for the spring semester, but will be closed some days, and open for shorter hours other days, during the Chinese New Year holiday, from Saturday January 21 2023 to Sunday January 29 2023.

For the library main service point, they could do the following:
1. Create a calendar named "Spring 2023 Main Library Hours."
2. Set a start date for the first day of classes in January, and an end date for the last day of classes in May. 
3. Assign the calendar to the service point "Main Library."
4. Under **Hours of operation**, create a row for each calendar day, with a status of "Open", a start time of 9 AM, and an end time of 11:59 PM.
5. Under **Exceptions**, create an exception named "Chinese New Year Holiday - First Weekend". Set the status to "Closed," with a start date of January 21 2023 and an end date of January 22 2023. This would close the library the first weekend.
6. Create a second exception called "Chinese New Year Holiday - Weekday". Set the status to "Open". For the first row, set the start and end date to January 23 2023, with a start time of 9 AM and an end time of 4 PM. Then add a second row by clicking the **+** sign under **Actions**, and set the start date and end date to January 24, 2023, with a start time of 9 AM and an end time of 4 PM. Repeat this to add a row for each of the five days that week.
7. Create a third exception called "Chinese New Year Holiday - Second Weekend." Set the status to "Closed", with a start date of January 28 2023 and an end date of January 29 2023.
8. Click **Save and close** to save the calendar.

Once this calendar is created, it could then be reused in future years by duplicating the calendar and changing the dates, rather than creating the schedule again from scratch.

## Duplicate an existing calendar

Instead of creating a service point calendar from scratch, you may want to duplicate an existing calendar and modify it instead.

To duplicate a calendar:
1. In **All calendars**, click the calendar you wish to duplicate.
2. Click **Actions \> Duplicate**.

This will open a copy of that calendar for you to edit and then save. Note that you can save two calendars with the same name, but it is recommended that you use different names to reduce errors.

## Edit an existing calendar

To edit an existing calendar:
1. From **All calendars**, click the calendar you wish to edit.
2. Click **Actions \> Edit**.

Make changes as desired, and then click **Save and close** to save your changes.

## Delete a single calendar

Users with appropriate permissions can delete FOLIO calendars.

Note that FOLIO will not warn you if deleting a calendar will leave a service point without an active calendar, and it will not warn you if deleting a calendar will leave a service point with a gap in calendar coverage in the future. Accordingly, before you delete a calendar, you should review the dates on the calendar and any service point assignments to ensure that you can address any gaps in calendar coverage.

To delete a single calendar:
1. In **All calendars**, click the calendar you wish to delete.
2. Click **Actions \> Delete**.
3. In the confirmation box, click **Delete** to confirm you wish to delete the calendar.

## Purge old calendars

Over time, institutions may end up with a large number of historical calendars, and want to remove them to improve usability and performance. This can be done through the **Purge old calendars** function.

1. Go to **All calendars**.
2. Select **Actions \> Purge old calendars**. A modal will appear.
3. From **Purge calendars that ended...**, choose a date option from the drop down.
4. From **And were**, you can choose whether to include calendars that were assigned to service points or calendars that were not assigned to service points. 

The modal will show a preview of the calendars that will be deleted. Click **Delete** to remove them.

