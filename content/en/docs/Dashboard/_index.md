---
title: "Dashboard"
linkTitle: "Dashboard"
date: 2022-04-11
weight: 635
---

The Dashboard app is designed to enable a personalized view of key information from across FOLIO apps at a glance. In its first release (included in the Juniper flower release), the Dashboard includes the ability to display information from the [Agreements](../erm/agreements/) and [Licenses](../erm/licenses/) applications.

Information for developers wishing to take advantage of Dashboard functionality for their own apps is available at the [Dashboard Documentation](https://wiki.folio.org/display/ERM/Dashboard+Documentation) FOLIO wiki page.

Definition of terms related to the Dashboard app:



*   **Widget.** To display information on your dashboard, you need to add widgets. Widgets can fetch and display information from FOLIO applications or other sources. There are different types of widget which are used depending on the type of information you want to display.

Widgets are often configurable by the user, so the same type of widget can be added multiple times but with a different configuration to display a different set of information. Users can decide which widgets are displayed on their dashboard, and the order in which they display. Each user has their own dashboard, so each user can configure the widgets they need in an appropriate way for their particular needs.


## Permissions

The permissions listed below allow you to interact with the Dashboard app and determine what you can or cannot do within the app. You can assign permissions to users in the [Users](../users/) app. If none of these permissions are assigned to a user, they are unable to see the Dashboard app or any related information.

The following are the Dashboard permissions:



*   **Dashboard: Manage dashboard.** This permission allows the user to create a dashboard and add, edit, remove and reorder widgets on their dashboard. This includes the permission to see and access the Dashboard app in the FOLIO interface.


## Adding widgets



Upon accessing the Dashboard application for the first time, the user is presented with a blank dashboard containing the text “Add a new widget to your dashboard.” To display information on the dashboard, the user must add a widget.


1. In the **Dashboard** pane, click the **Actions** button and select **New**.
2. In the **New widget** window, enter a **Widget name** for the widget.  The widget name is used when displaying the widget on the dashboard.
3. Select a **Widget definition** from the drop-down list.
    *   The widget definition determines the type of widget being added to the dashboard, and comes with its own configuration options.
    *   The widget definitions are created by the applications that support the dashboard, so which widget definitions are available depends on the applications you have installed in your FOLIO tenant.
    *   In the Juniper release the Agreements app comes with two dashboard widgets ("ERM Agreements" and "ERM Agreement Jobs") and the Licenses app comes with one dashboard widget ("ERM Licenses"). There are examples of how you can use these three widget definitions to achieve a wide range of outcomes in the [Example widget configurations](https://wiki.folio.org/display/FOLIOtips/Example+widget+configurations) documentation.
4. Complete the required fields.
5. Click **Save & close**. The widget is saved and appears in the Dashboard pane.


## Reordering widgets



1. In the **Dashboard** pane, click the **Actions** button and select **Edit widget display order**. You will be shown a list of all of the widgets on your dashboard.
2. Hover over the six dots to drag and drop the widgets into the desired order.
    *   Widgets are displayed across the dashboard first and then down.
    *   A minimum of one and a maximum of four widgets will display on one row.
3. Click **Save & close**. The widget order is saved and appears in the Dashboard pane.


## Editing widgets

Existing widgets can be edited to change their configuration.

The "Widget definition" cannot be changed when editing an existing widget (for example, you cannot change an ERM Agreements widget into an ERM Licenses widget), but all other aspects of the configuration, including the widget name, can be edited.



1. Click the three dots at the top right of the widget and choose **Edit** from the menu that displays.
2. Make the desired changes.
3. Click **Save & close**. The widget changes are saved and appear in the Dashboard pane.


## Deleting widgets

Deleting a widget is only deleting the particular widget configuration used for this widget and does not affect any other data in FOLIO. Once a widget has been deleted it cannot be recovered, and you would have to add a new widget and recreate the previous configuration to be able to get an identical widget back on your dashboard.



1. Click the three dots at the top right of the widget and choose **Delete** from the menu that displays.
2. Click **Delete** in the Delete widget dialog. The widget is removed from the Dashboard pane.
