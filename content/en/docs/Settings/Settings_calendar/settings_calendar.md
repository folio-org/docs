---
title: "Settings > Calendar"
linkTitle: "Calendar"
date: 2022-11-01
weight: 30
tags: ["subtopic"]
---

The Calendar section of the Settings app is where you edit open and closed hours for the library service points. 

The Check out app references the logged-in user’s service point when loaning items to patrons and calculating their due dates. That means that the service point must have an existing calendar that covers the time period that the item could potentially be loaned for in order for the check out to be successful.

The Calendar section of Settings allows you to create a new calendar, edit existing calendars, duplicate existing calendars, and delete calendars. You can create a single calendar and assign it to multiple service points.

## Permissions

To interact with Settings > Calendar, a user needs to be assigned at least one of the following permissions.

* **Settings (Calendar): Can view existing calendars**. This permission allows a user to open **Settings \> Calendar** and view the three options: **All calendars**, **Current calendar assignments**, and **Monthly calendar view**.
* **Settings (Calendar): Can create and assign new calendars**. This permission grants a user the view permissions in **Settings (Calendar): Can view existing calendars.** In addition, in **All calendars**, the user can select **Actions \> New**, create a new calendar, and assign it to one or more service points. In **Current calendar assignments**, the user can select **New** and create a new calendar and assign it to one or more service points. They can also choose a service point with a calendar assignment and choose **Actions \> Duplicate**
* **Settings (Calendar): Can edit and reassign existing calendars**. This permission grants a user the view permissions in **Settings (Calendar): Can view existing calendars.** In addition, in **All calendars**, the user can choose an existing calendar, select **Actions \> Edit**, and edit the calendar. In **Current calendar assignments**, the user can select a service point with an assigned calendar and select **Actions \> Edit** to edit the calendar.
* **Settings (Calendar): Can delete existing calendars**. This permission grants a user the view permissions in **Settings (Calendar): Can view existing calendars.** In addition, from **All calendars**, the user can choose a calendar and select **Actions \> Delete** to delete the calendar.


## Settings > Calendar > All calendars

Use this option to see all calendars on your system (including those with end dates in the past) and what service points those calendars were/are assigned to.

From here, a user with appropriate permissions can use the Actions menu to edit and/or duplicate an existing calendar, create a brand new calendar, or delete a calendar

## Settings > Calendar > Current calendar assignments

Use this option to see only calendars that are currently in effect for each service point in your FOLIO instance.

From here, you can click **New** to create a brand new calendar to assign to a service point.

## Settings > Calendar > Monthly calendar view

Use this option to view the service point calendar for the current month. You can use the arrows to go to different months, including reviewing past calendars.

## Creating a new calendar

To create a new calendar:

1. Go to **All calendars**.
2. Select **Actions \> New**. 
3. Enter a **Calendar name**. 
4. Enter a **Start date** and **End date**.
5. Select one or more **Service points** to assign the calendar to. You can also leave this option blank, and assign the calendar to a service point later.

Next, you will add your service point hours.

Hours are represented on the calendar as a table, each row representing a slot of **Hours of operation** - a period when the service point opened for service, and then closed. 

If a service point opens on one day and then does not close until a future day, the **Start day** and **End day** of a particular row may be different days. This may happen if, for example, a library remains open overnight for students studying for final exams.

If a library's standard hours include a day when it is completely closed, it is recommended that you still set a row for that day, and just designate the status as closed. For example, if a library is always closed on Sundays, you would represent that day with a row with a status of **Closed**, a **Start day** of Sunday, and an **End day** of Sunday.

To add **Hours of operation**:

1. From **Status**, choose **Open** or **Closed**. 
2. Choose the start day for your **Hours of operation** time slot.
3. Choose the **Start time** when the service point opens. If the status of the row is **Closed**, you do not set a start time.
4. Choose the **End day** when the service point closes. If your library remains open after 11:59 PM, your end day will be different than your start day.
5. Choose the **End time** when the service point closes. If the status of the row is **Closed**, you do not set an end time.
6. Click **Add row** to add additional rows as needed.
7. When you are finished adding your hours of operation, click **Save and close** at the bottom to save your calendar.

If you make a mistake with a calendar row, click the Trash can under **Actions** to remove it and add a new time slot. When you save your changes, FOLIO will sort the rows so that they display in a standard week order.

## Duplicating an existing calendar

Instead of creating a service point calendar from scratch, you may want to duplicate an existing calendar and modify 

## Adding exceptions to a calendar

Libraries will often have standard hours that apply for a lengthy period of time, like a semester or a year, but also want to be able to change their hours for specific days like holidays or for severe weather when the library closes early. To this, you create a specific **Exception** tied to a particular calendar period.

A library can use exceptions to completely close a service point, or to change a service point's hours. For example, a library may be open 9 AM to midnight Sunday through Saturday during the academic year, but only be open 9 AM to 5 PM Monday through Friday during Spring Break. 

To add an exception to a calendar:
1. Under the **Exceptions** accordion, click **Add row**.
2. Provide a **Name** for the exception period.
3. From **Status**, choose **Open** or **Closed**.
4. Choose the **Start date** when the exception period begins. Note that unlike **Hours of operation**, you are specifying a specific date, rather than a generic day of the week.
5. Choose the **Start time** when the service point opens. If the status of the row is **Closed**, you do not set a start time.
6. Choose the **End date** when the exception period ends. 
7. Choose the **End time** when the service point closes. If the status of the row is **Closed**, you do not set an end time.

If your exception has a status of **Open**, you can add additional date/time periods to the exception by clicking the **+** in the **Actions** column.









### Editing Regular Library Hours


### Deleting Regular Library Hours


### Creating Exception Periods
### Editing Exception Periods


### Deleting Exception Periods
