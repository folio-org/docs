---
title: "Dashboard"
linkTitle: "Dashboard"
date: 2023-11-15
weight: 635
---


The Dashboard app is designed to enable a personalized view of key information from across FOLIO apps at a glance. In its first release (included in the Juniper flower release), the Dashboard includes the ability to display information from the [Agreements]() and [Licenses]() applications.

Information for developers wishing to take advantage of Dashboard functionality for their own apps is available at the [Dashboard Documentation](https://wiki.folio.org/display/ERM/Dashboard%2BDocumentation) FOLIO wiki page.

Definition of terms related to the Dashboard app:

*  **Dashboard.** A dashboard is a screen which can display widgets. A user can have access to one or more dashboards within the dashboard app. A dashboard will have a set of configured widgets and also a User access list. 

*   **Widget.** To display information on your dashboard, you need to add widgets. Widgets can fetch and display information from FOLIO applications or other sources. There are different types of widget which are used depending on the type of information you want to display.

Widgets are often configurable by the user, so the same type of widget can be added multiple times but with a different configuration to display a different set of information. Users can decide which widgets are displayed on their dashboard, and the order in which they display. Each user has their own dashboard, so each user can configure the widgets they need in an appropriate way for their particular needs.

*  **User access list.** Dashboards can be accessed by one or more users. Which users can access a dashboard is controlled by the user access list for the dashboard. Only users on this list can access the dashboard. Users can be added or removed from the user access list. There are three levels of access that a user can be granted in the user access list: View, Edit, Manage.

## Permissions

There are two levels of permission control for dashboards. Firstly the Dashboard app permissions which determine the functionality the user has access to within the dashboard app. Secondly the user access level to each dashboard granted by the dashboard's user access list determines what the user can do in relation to a particular dashboard.

### Dashboard app permissions

The permissions listed below allow you to interact with the Dashboard app and determine what you can or cannot do within the app. You can assign permissions to users in the Users app. If none of these permissions are assigned to a user, they are unable to see the Dashboard app or any related information.

The following are the Dashboard permissions:


*   **Dashboard: Manage dashboard.** This includes the permission to see and access the Dashboard app in the FOLIO interface and allows the user to: 
** create, edit and delete dashboards.
** add, edit, remove, reorder and resize widgets on dashboards.
** add and remove users to/from the user access list for a dashboard.
** update the access level for a user in the user access list for a dashboard.
 *   **Dashboard: Dashboard Administrator.** This permission allows the user to access and make changes to all dashboards in the system as if they had been granted the 'manage' access level to the dashboard.  

### Dashboard access levels

The access levels determine what actions a user can carry out in relation to a particular dashboard. 

If the user has no access level for a dashboard, they will not be able to access that dashboard (unless they have been granted the application permission "Dashboard: Dashboard Administrator.").

Note that in order to access dashboards the user must have the application permission "Dashboard: Manage dashboard." as well as having been granted an access level for the dashboard.

The following are the user access levels that can be granted for a dashboard:

* **View.** This allows the user to view the dashboard, including the widgets on the dashboard and the user access list for the dashboard, but not make any changes to the dashboard name or description, the widgets on the dashboard or the user access list for the dashboard.
* **Edit.** This allows the user the same dashboard viewing rights as the View access level and additionally allows the user to edit the dashboard name and description and add, remove or edit widgets on the dashboard. It does not allow the user to make any changes to the user access list for the dashboard.
* **Manage.** This allows the user the same view and edit rights as the Edit access level and additionally allows the user to add, remove and edit user access levels to the dashboard and to delete the dashboard.

## Adding widgets



Upon accessing the Dashboard application for the first time, the user is presented with a blank dashboard containing the text “Add a new widget to your dashboard.” To display information on the dashboard, the user must add a widget.


1. In the **Dashboard** pane, click the **Actions** button and select **New widget**.
2. In the **New widget** window, enter a **Widget name** for the widget.  The widget name is used when displaying the widget on the dashboard.
3. Select a **Widget definition** from the drop-down list.
    *   The widget definition determines the type of widget being added to the dashboard, and comes with its own configuration options.
    *   The widget definitions are created by the applications that support the dashboard, so which widget definitions are available depends on the applications you have installed in your FOLIO tenant.
    *   In the Poppy release the Agreements app comes with three dashboard widgets ("ERM Agreements," "ERM Agreement Jobs," and “ERM Agreement Lines”) and the Licenses app comes with one dashboard widget ("ERM Licenses"). There are examples of how you can use these four widget definitions to achieve a wide range of outcomes in the [Example widget configurations](https://wiki.folio.org/display/FOLIOtips/Example+widget+configurations) documentation.
4. Complete the required fields.
5. Click **Save & close**. The widget is saved and appears in the Dashboard pane.


## Reordering widgets

Hover your mouse pointer over the six dots on the upper-left corner of a widget. A hand icon will appear. You can now drag and drop the widget into the desired position on the dashboard.

Widget reordering via keyboard shortcuts is also supported. Use the Tab key until the widget you wish to move is highlighted, indicated by a solid bar across the top of a widget and an outline around the six dots on the upper-left corner of a widget. Press the spacebar to put the widget into move mode, then use an arrow key to move the widget left, right, up or down.

## Resizing widgets

Hover your mouse pointer over the L shaped mark on the bottom-right corner of a widget. An arrow icon will appear. You can now drag and drop the corner of the widget to get it to the desired size 

Widget resizing via keyboard shortcuts is also supported. Use the Tab key until the widget you wish to move is highlighted, indicated by a solid bar across the top of a widget and an outline around the six dots on the upper-left corner of a widget. Press the spacebar to put the widget into move mode, then use Shift+an arrow key to increase or decrease the height or the width of the widget.


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


## Adding dashboards



1. In the **Dashboard** pane, click the **Actions** button and select **New dashboard**.
2. In the **New dashboard** window, enter a **Name** for the dashboard. The dashboard name will be used to create the menu button for the dashboard. You can add a **Description** to the dashboard. 
3. Click **Save & close**. The dashboard is saved and appears as a menu button at the top of the Dashboard pane.
4. See [Adding widgets](#adding-widgets) to populate your dashboard with widgets. 

Note that when you add a dashboard you are automatically granted the Manage access level in the dashboard's user access list.

## Managing dashboards

Under manage dashboards, you can reorder your dashboards, as well as see your access level for each dashboard’s access level, and select a default dashboard. 


### Reordering dashboards



1. In the **Dashboard** pane, click the **Actions** button and select **Manage dashboards**. You will be shown a list of your dashboards.
2. Hover over the six dots to drag and drop the dashboards into the desired order.
3. Click **Save & close**. The dashboard order is saved and appears in the Dashboard pane.


### Selecting a default dashboard

The default dashboard is the one that will display by default when you first open the Dashboard app. 



1. In the **Dashboard** pane, click the **Actions** button and select **Manage dashboards**. You will be shown a list of your dashboards.
2. Under the **Default** column, click the **radio button** next to your primary dashboard. 
3. Click **Save & close**. The primary dashboard will display by default when you first open the Dashboard app.

The **Access level** column displays whether you have View, Edit, or Manage access to the dashboard. 


## Managing user access to dashboards

Under manage user access, you can add a user, remove a user, or change a user’s access level to a dashboard. 


### Adding a user to a dashboard



1. In the **Dashboard** pane, select the dashboard you wish to add a user to by clicking on the dashboard’s name in the dashboard menu button. 
2. Click the **Actions** button and select **Manage user access**. 
3. In the **User access** window, click **Add user**. 
4. In the **Select user** window, you can search for a user by name, barcode, username, or email, and filter by status and patron group. 
5. To add the user to your dashboard, click on the user in the **User search results** list. The user will appear in your list of users on the dashboard’s **User access** window. 
6. Select an **Access level** for the user. Access levels include: View, Edit, and Manage. See [Dashboard access levels](#dashboard-access-levels). 
7. Click **Save & close**. The dashboard will now appear in the added user’s dashboard menu button with the selected access level. 


### Removing a user from a dashboard



1. In the **Dashboard** pane, select the dashboard you wish to remove a user from by clicking on the dashboard’s name in the dashboard menu button. 
2. Click the **Actions** button and select **Manage user access**. 
3. In the **User access** window, under the **Remove** column, click the **trash can** icon next to the user you wish to remove from accessing the dashboard. 
4. Click **Save & close**. 
5. In the **Remove user(s)** dialog, click **Save & close**. The selected user will no longer have access to the dashboard. 


## Editing dashboards


1. In the **Dashboard** pane, select the dashboard you wish to edit by clicking on its name in the dashboard menu button. 
2. Click the **Actions** button and select **Edit dashboard**. You can edit the dashboard name and description. To edit the widgets on the dashboard, see [Editing widgets](#editing-widgets). 
3. Make the desired changes. Note: if the dashboard is shared, any changes made will be visible to all users with access.
4. Click **Save & close**. The dashboard changes are saved and appear in the Dashboard pane.


## Deleting widgets


1. In the **Dashboard** pane, select the dashboard you wish to delete by clicking on its name in the dashboard menu button. 
2. Click the **Actions** button and select **Delete dashboard**. Note: if the dashboard is shared, deleting the dashboard will remove access for the other user(s).
3. Click **Delete** in the **Delete dashboard** dialog. The dashboard is deleted from your Dashboard pane.
