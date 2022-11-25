---
title: "Settings > Calendar"
linkTitle: "Calendar"
date: 2022-11-24
weight: 30
tags: ["subtopic"]
---

The Calendar section of the Settings app manages open and closed hours for
service points. This will be used by other apps, such as Check out (for
calculating due dates).

## Permissions

To interact with Settings > Calendar, a user needs to be assigned at least one
of the following permissions:

- **Settings (Calendar): Can view existing calendars** – This permission allows
  users to view, but not modify, service point calendars.
- **Settings (Calendar): Can create and assign new calendars** – This permission
  allows users to create new calendars and assign them to service points.
- **Settings (Calendar): Can edit and reassign existing calendars** – This
  permission allows editing calendars and changing the service point(s) they are
  assigned to.
- **Settings (Calendar): Can delete existing calendars** – This permission
  allows users to delete calendars.

## Creating calendars

New calendars can be created through the "Actions" dropdown in the "All
calendars" section or via the "New" button in the "Current calendar assignments"
section.

Overall, these steps can be followed:

1. Specify a calendar name, such as "Fall 2022 hours", to describe this
   calendar,
2. Specify the dates the calendar will start and end on (inclusively),
3. Choose the service point(s) that this calendar should apply to,
4. Enter hours of operation that describe when the service point should be open,
5. Add any exceptions, to describe overrides (such as holidays, where the
   service point may close for the day, or exam study periods, when the service
   point may have longer hours), and
6. Click "Save and close".

For more customization and information, please see the [hours of
operation]({{< ref "#hours-of-operation" >}}) and
[exceptions]({{< ref "#exceptions" >}}) sections.

{{% alert %}}

As a tip, we recommend checking the [monthly calendar
view]({{< ref "#monthly-calendar-view" >}}) after creating or editing calendars,
to double-check that the hours and exceptions applied how you expect.

{{% /alert %}}

## Viewing calendars

There are three different ways calendars can be viewed, all of which are
designed to provide easy access to different calendar information:

### All calendars

This list will show **all** calendars in the system, including the past,
present, and future ones. Additionally, it will show calendars that may not be
assigned to any service points. The list can be sorted by clicking any column
header; clicking it twice will toggle between ascending and descending sorting.

Within this list, clicking any calendar will open the [calendar information
view]({{< ref "#calendar-information-view" >}}).

Purging calendars is also available from this view; see the [separate
section]({{< ref "#purging-calendars" >}}) for more information.

### Current calendar assignments

This list shows each service point and the calendar currently assigned to it (if
any). This makes it easy to get a quick overview of which calendar applies to
each service point.

Like the [all calendar view]({{< ref "#all-calendars" >}}), clicking on any row
with an assigned calendar will open the [calendar information
view]({{< ref "#calendar-information-view" >}}).

### Monthly calendar view

This last view lets you see the effects of created calendars on service points;
each day shows its calculated opening hours. Exceptions are marked with
exclamation points, too, to provide even more insight.

![Sample calendar screenshot](/img/settings_calendar/monthly-view.png)

## Editing calendars

To edit a calendar, select it from the [all
calendars]({{< ref "#all-calendars" >}}) or [current calendar
assignments]({{< ref "#current-calendar-assignments" >}}) view. Then, in the
[calendar information view]({{< ref "#calendar-information-view" >}}), select
"Edit" from the top-right.

This will bring up a form identical to the one initially used for creation;
within this, you can edit the name, date range, assignments, and
hours/exceptions.

## Deleting calendars

To delete a calendar, select it from the [all
calendars]({{< ref "#all-calendars" >}}) or [current calendar
assignments]({{< ref "#current-calendar-assignments" >}}) view. Then, in the
[calendar information view]({{< ref "#calendar-information-view" >}}), select
"Delete" from the top-right.

## Purging calendars

Over time, institutions may end up with a large number of historical calendars.
After a couple years, it may be wise to clean these out (for performance and
usability reasons).

This is made easy through the [all calendars]({{< ref "#all-calendars" >}}) view
--- from this view, click "Purge old calendars" at the top. This will open a
modal with two parameters:

- How old the calendars should be: this provides options to select calendars
  that ended 3 months, 6 months, 1 year, and 2 years ago
- If the calendars are assigned to service points or not: if desired, this can
  ensure that no calendars affecting service points are deleted.

After selecting parameters, you can see a preview of the calendars that will be
purged. If all looks good, click "delete" and they will all be deleted!

## Calendar information view

The calendar information view is shown upon clicking a calendar in either the
[all calendars]({{< ref "#all-calendars" >}}) or [current calendar
assignments]({{< ref "#current-calendar-assignments" >}}) view. This view
provides a quick overview of all information relating to a calendar:

<!-- must use img tag so this isn't huge -->
<img alt="Sample calendar information" src="/img/settings_calendar/info-pane.png" style="max-height: 100vh" />

This pane is split into a few sections:

#### Calendar information

This section shows the name and start/end dates for the calendar.

#### Service point assignments

This shows a list of service points to which this calendar is assigned, if any.

#### Hours of operations

This shows a table of opening hours by weekday.

For clarity's sake, openings that extend until the next day's early morning
(before 4 AM) will have their corresponding closures will be shown on the
previous day (for example, an opening Monday from 7 AM to Tuesday 1 AM will show
all on Monday). These closures will be denoted with a `*`.

Also for clarity, openings that span multiple days without closing will have
dashes, making it clear that there is no opening or closure on that day.

#### Exceptions --- openings

This shows all exceptions that result in the service point being open (for more
or less time than originally scheduled). For these, the exception name will be
shown alongside all start and end times.

#### Exceptions --- closures

This shows exceptions that close the service point on a certain range. Similar
to openings, these show the name and start/end dates.

#### Record metadata

This final section shows information about when the calendar was created or last
edited, as well as who was responsible.

## Hours of operation

The FOLIO system allows the representation of nearly any type of opening hours
through a simple set of start and end times. To add an opening, click the "Add
row" button, mark its "Status" as "Open", then choose the weekdays and times.

Rows may also optionally be marked as closures, to provide additional clarity.
However, this is not necessary --- administrators can add openings only to
achieve the same result.

{{% alert %}}

**Tip:** rows do not need to be specified in any particular order

{{% /alert %}}

{{% alert %}}

**Note:** start and end times are inclusive; therefore, for openings that end
exactly at midnight, we recommend using 11:59 PM rather than 12:00 AM the next
day

{{% /alert %}}

## Example hours of operation

For the best description of how this system can be used, please see these
examples:

### Simple hours

This service point is open from 9 AM until 5 PM all seven days of the week.

![Form inputs](/img/settings_calendar/ex-simple-form.png)
![Calendar info view](/img/settings_calendar/ex-simple-info-pane.png)
![Monthly view](/img/settings_calendar/ex-simple-month.png)

### Mid-day closure

Service points can open more than one time per day. As a reminder, weekdays that
have no openings can be listed as "Closed" or omitted entirely --- this example
omits Sunday for that reason; also, the order of rows does not matter.

This is a modified example of the 9-5 daily calendar; the service point is open
from 9 AM to 5 PM on Monday, Tuesday, Wednesday, Thursday, and Saturday; open
from 9 AM to 11:30 AM then 1:00 PM to 5 PM on Saturday (to allow for a lunch
break); and closed Sunday.

![Form inputs](/img/settings_calendar/ex-multiple-openings-form.png)
![Calendar info view](/img/settings_calendar/ex-multiple-openings-info.png)
![Monthly view](/img/settings_calendar/ex-multiple-openings-month.png)

### Late-night openings

This service point is open from 9 AM until 2 AM starting Sunday, Monday,
Tuesday, Wednesday, and Thursday. On Friday, the service point closes earlier
and on Saturday it is closed entirely.

![Form inputs](/img/settings_calendar/ex-overnight-form.png)
![Calendar info view](/img/settings_calendar/ex-overnight-info.png)
![Monthly view](/img/settings_calendar/ex-overnight-month.png)

_Please note that the monthly calendar view will split the opening by day, to
show all hours the service point is open on this day._

### 24/5

Many institutions will have a service point open twenty-four hours for several
days of the week, but not all. Here is an example where the service point opens
at 9 AM on Sunday and does not close until 9 PM Friday, then has 9 AM - 9 PM
hours for Saturday:

![Form inputs](/img/settings_calendar/ex-245-form.png)
![Calendar info view](/img/settings_calendar/ex-245-info.png)
![Monthly view](/img/settings_calendar/ex-245-month.png)

### 24/7

For service points that should be open 24/7, such as ones that represent online
services, use a calendar with a single opening that opens immediately after it
closes. If there is no gap, the service point is considered 24/7.

Here are a few ways this could be done:

- Sunday 12:00 AM until Saturday 11:59 PM
- Wednesday 12:00 AM until Tuesday 11:59 PM
- Sunday 3:00 PM until Sunday 2:59 PM

Using this last example:

![Form inputs](/img/settings_calendar/ex-247-form.png)
![Calendar info view](/img/settings_calendar/ex-247-info.png)
![Monthly view](/img/settings_calendar/ex-247-month.png)

## Exceptions

Exceptions provide a way to override a service point's regular hours, either
forcing it to close or to be open for different hours. This allows easy
management of various events, such as holidays, severe weather closures, and
exam study periods.

### Closures

Exceptional closures will close a service point from the start date until the
end date, inclusive. These can be for a single day, or for multiple:

![Form inputs](/img/settings_calendar/ex-closures-form.png)
![Monthly view](/img/settings_calendar/ex-closures-month.png)

### Openings

Exceptional openings are a little more powerful; each exceptional opening can
contain multiple date and time ranges, allowing you to override a range of dates
or set more than one opening on a single day. All standard hours of operation

{{% alert %}}

Please keep in mind that it will override **every** date from its start to end,
as this can sometimes cause unexpected behavior. For example, an exceptional
with openings (Jan 1 at 9 AM to Jan 1 at 9 PM) and (Jan 3 at 9 AM to Jan 3 at 9
PM) will result in those being the only two only openings from Jan 1 to Jan 3
(Jan 2 would be exceptionally closed, as a result).

{{% /alert %}}

For example, to open for longer hours during the first full week of December:

![Form inputs](/img/settings_calendar/ex-study-week-form.png)
![Monthly view](/img/settings_calendar/ex-study-week-month.png)
